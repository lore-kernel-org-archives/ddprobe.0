Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF6D15B102
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749499194; cv=none; b=an6+4cr5HJhj1my7W9IluAAgCk6nLJavAR/AMdNs3iHN9rgqCsCY7nld7/lureCwwUjnyavxKvYp1V5SBnFHllaAYOq7CoKlcDAXcFNis601y6Zm5YAmW5FV5x11FAwcgB6FUwysmGBH5UT8x1L8mARKbcmwdEyyqSPaRQPvFOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749499194; c=relaxed/simple;
	bh=pGzVj9JD8kRxpK111GUzFMFenSmESGdGrAXIsJI01pI=;
	h=To:Subject:From:Message-Id:Date; b=oZ+Bl0W9IKpD6GGp4v/BqBP/318bfzvKfzK1gBQi0QOz1KLIszWK33wwMTg/EMF5Z1Rk49cZZ19sIYKg6okLL+9NN2Lws5xL+doimPv9jMOSr1BLE0/9uRcO9qQ0S225nUF15H06wxpKDpMCQOEaDCNdlJaRQysvHbI0qYX0U4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UedG+831; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UedG+831"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EE2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749499193;
	bh=pGzVj9JD8kRxpK111GUzFMFenSmESGdGrAXIsJI01pI=;
	h=To:Subject:From:Date:From;
	b=UedG+831rHRQSVdfbciad5lKXBmWc060dvPrkqrO+Mmrpv6nWcqMeYXkRfAy3tT+V
	 QRUgIGozJxUlMUJW2gdKXTHdtdHzVgIFMSDHQm3PFrz8F/w13QzblEF2ifoicwrhq+
	 wX1wX7o0KqqNQUEqWv0zhZV4s0ngZSpsYw9NfMBMWTfa8SPyC306DhlJxcYZ0HLhqL
	 mgBnK3/oN4HtWRAwzGowTJJO/huBgWYWjFyy9GT9bUDV6h6AwAZzUxbf2In5tRZR7Z
	 ElX58AmdaQ9GrN+M1kHN9cJFVxblye8aeGlnGzcqI5AO+aD9hXeboIA+0sDPdPVYft
	 GZCT3ZeoJpy4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C6C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949919358.14862.7871241699245530875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6df56b7fd59edc77439ecc65423631d448858619dab59673dbf54acf627ce5
Date: Mon, 09 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749499193
