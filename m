Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435FB4A11
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745773794; cv=none; b=WgSBqo3t79FTwr3SXCEIhwuHALWiw077NjhaYyEfbRfqAOfmt5f7W42tFNeyWpovl1BWA0U8kIu1qgz6jWRefO+Ddv72Zpsn8Pt59sqSv6b32e9GP43KdMUwk4Cgfsdk3HXRsrsKJplupGWLrX4OSh0l2BaMVI9N/XbegW1cjaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745773794; c=relaxed/simple;
	bh=RdMEj6aUwozDHf9PAPfY6kpzNdK9tG+L5DEU9DYBOxU=;
	h=To:Subject:From:Message-Id:Date; b=WGT41pcV35V8OdQOoQMrkV4MQnvBqn7R1yf01llQt//pB93WFUOR+CKTzLwIs62MOncpwFJSMTNv8uYxiIOaOgDnCMQZE3oIXC8m7JiLhRFG5M/MR4anUtK/cATDcG15/yzIJdQC/R5U/q8H/LLebj1rOR5DUDRGcJBEoEXXKZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5Zrq4be; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5Zrq4be"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7668C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745773793;
	bh=RdMEj6aUwozDHf9PAPfY6kpzNdK9tG+L5DEU9DYBOxU=;
	h=To:Subject:From:Date:From;
	b=d5Zrq4bepfFslSXLEzel3Y1cKKhgTcpWPK3Q1nkS+2L2YwE9wQkxXqGLwYrrkThxX
	 +KjKONNu6CsbczQTpJJ7bdZE9uMoV6broEQdOrP+BzUlrrfjPfFDrVWwDBiL6bvqfH
	 73D0SSkMpN4yapVQCJ4Kznbci9JcBNGWj0ehL8yelnrsqvwO+6zhZFZVhVQcysA6Ox
	 JvPGX9Bsby/fTJmJQ6Qo2ayc949FJ+K+khjQSM5Wckb4YtHW3hgTlF/uz+ysgLy7sN
	 fwxPkpFqphLxbOOUyKtm3qNayh/7fAyQ0/h6W8F6zEa6sXZklP1ebXXS7LK1tonD7/
	 Bx27AIHzHyAjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96492C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577379358.13086.12587135807948368672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9242ebf94cfbb939a416202de3a440eea0fecd45d2d8d31392de13e7b3ccc75
Date: Sun, 27 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745773793
