Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318F9155C97
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749004194; cv=none; b=pkviGBz9Ekk5HJDDAbmZaws2F/Ocp0Bo0UG9rqg+5wJ5iK4jaKmCVdQp+46n7FgNQ7ahPs0/aYFStvydlTZO7pI1CCexn2UzNPdeEoCH2ehsDkUzotaV67aGH/Max7G+1+GA4R9zlL8bRXE7s9pFLTvG7XrAtXqlUDR+OB1D0lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749004194; c=relaxed/simple;
	bh=ONQOa61vvaNRISHSI2GS1U+4pK0M3/7A8+rGfRKCjco=;
	h=To:Subject:From:Message-Id:Date; b=DNbLYBr/tfCwZ0C4soZIbtceclpdCh86Jpn49kRpvTsJ2GIu52KZKWqHha9Xi/NA1WDUkUXc3uLNWf0r/bIzRSkaowHX1KHUViJZx5WGoWnz5v1r6UERKd3ZK4A2LRNWWDqOcdPPTRyfandjZ8/JaEm/GjHR+4Xhl9okfHLwMYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUNjWjwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUNjWjwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25C2C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749004193;
	bh=ONQOa61vvaNRISHSI2GS1U+4pK0M3/7A8+rGfRKCjco=;
	h=To:Subject:From:Date:From;
	b=fUNjWjwWt7QIQ4JQuTqmnC0xwg2ZYhbtY96ZkCa0XKdY/hdHIzopTdolW4zl40hpA
	 wh101xU7I2DgKZ4q2FNwM21LxrVA46xa8iSzw4SN2fWhma7GWmTvGhXqLSd0jyD46l
	 H0OQOb2QMVWSxCBFBCZD7iA9Cg53Ww8dGsLrOpxJx/mIye1NQUwobYPTNfJqIzgDK+
	 xnSZWByXplhfBkxKaYj5mzyfsYlXIAmU48e3+Jiqyn6HXjG3/Dr6PJf4xcamfFrzgN
	 UxAsXnx15VLEPQr8Czy3PJhKDiiMe+kM0CE+DPNELy8+C8vaSGfl7DIgBBmrmUQHSG
	 uyqxzjolAmEgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92269C5AD49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900419359.21275.17286513803261418854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86d128d36bc1f2a09437b5d8b8a3733582d1776c41c1eaacd9e37c88e2ffc1d
Date: Wed, 04 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749004193
