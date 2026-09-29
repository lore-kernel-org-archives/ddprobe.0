Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730E52DE6E6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790640034; cv=none; b=uOddlKRtUSSKtYlAM3+tmRCLzofFHWZ+Mh875rYQNFDQ8TWFtOVIpE78fA00NUcM6RMJKUl5jCrKAztIGjU3tC33DPDJNuyLczFQ2UjhVqdfsTu89T0QC4QXXCaXXRZcB0v4AfqjlxuGKmca4n9LharRm01K+Tv9e6CM8Mgrf7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790640034; c=relaxed/simple;
	bh=lABTUJh6HlyVnwq7dtddUxPG9vq+O1YQr9JqvHOWyLY=;
	h=To:Subject:From:Message-Id:Date; b=NySVwkmFJwLzX+WV3Q6YHAEiVZfOcarcJKAqE2pgeeF7pZq4QGuvdfKR3MUSTxqgPPFt9e+60+rpLajyiQXiWxLufdG4+1lV9cBCB+BG7YErB5VZc1FG+jq8cLYrj3OCyEjcJopdfImDPhs3nufHq/PYLht6SfHp9RLiW7+7S+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdUbbFEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdUbbFEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0827C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790640033;
	bh=lABTUJh6HlyVnwq7dtddUxPG9vq+O1YQr9JqvHOWyLY=;
	h=To:Subject:From:Date:From;
	b=PdUbbFEloUONVHX/Eb5tXI6IoglNIsFsIc9udVnxvxF3+83ey2dJmD0QzFbgPX2hb
	 tCyQttQpsYhT9CnjnGfpHZyf2M4yhm7TeHhCQGSlnt5Gob/OyEpdyS/BlJtlnPapZI
	 VkYNzXmxNm1/bzyFQLF0O8KLB3Xsod5/KHN2MWE6KeasGEq7DRdlLzjM7q4cWaXjrj
	 lI21dgFjnoo4pxgQkqhUVXf/KGAWvOOEV2CY1Gzd756LWcklZV8Ft00ZUrTBm6H1Hi
	 4LIkpVbImNHTzOyF79O0tekp5nwPd8M0s1vyWZSTvVUiFAbT6DHv6kpWXptNeQZ3Q3
	 vD3Nm9B9OBcnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDDECA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064003369.15255.12380296316148359639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895f669b0aa0736af1e3d990c58ec8e1350b60b1d967372b114e24e1a5072c85
Date: Tue, 29 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790640033
