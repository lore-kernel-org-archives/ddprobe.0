Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB0318C039
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740343735; cv=none; b=s9y2PUO148r5Le2xwGbtygoaRK26uTDFkOcdiq2/oEHJiJb/5Ay5ReSBys7r8dzc03KCZdkkNXvRJIgtkABGHubXxZNRnEopkPDI5szjH/WuNgsV4niXtez94/i0pTlzov++klykCNv41is/lQ+EOTLD1iVgibz90tU0w9AflnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740343735; c=relaxed/simple;
	bh=LBoD3JikMQ7wSvcWjpJxI7uXD834tUO3rYLG4Zd7a6s=;
	h=To:Subject:From:Message-Id:Date; b=JC6ej7KBo+pgDvTvxVK2/t4U3fjNIDeePyEyJnPxqOO1g5+qhzxb4hNi/UqGtlS627wVDvaLs8Uj2w/V5MvdssuMfoKb/VictrcyJvP9C7GVO8NDWE8s2fkND9LRBddF8og7vqd+sqghktvez0HmGLcnnMOl4FIQhDnu6Ylm1oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyIOQp0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyIOQp0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC012C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740343733;
	bh=LBoD3JikMQ7wSvcWjpJxI7uXD834tUO3rYLG4Zd7a6s=;
	h=To:Subject:From:Date:From;
	b=jyIOQp0bGKcxcE7QmBAKX/W2D2OGpZ+a4lHMXipRV2goasWfgXjsdTZTyeqHaffSh
	 XXO0LyoIiO5HRJT81spJ1HI04i/8H5hp17d+HLd4sng1VF8Tsa6cSO5+EEWE7McxEg
	 ZWhUaPztH+KZHW391Mwbd3FUASOtdSjxNdnfUK+3FwZsKqfdDyaq2yvbPdCAEqKhbj
	 B92tGIKtONg5eMj+pbBcTQYxiU3bkZVLj0TEX00ItIFQCO2AskojS+TtrTqVvH/hgx
	 x1M7CZHUehu4Uf7j/cqyuiW3O7i2zKbFZaEVv2s0Mu364Z5UnycxeL8iobhM8uCMUm
	 cRw8/vK5UFIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B45C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174034373360.4845.488808216362970067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c72d4acaddef2730dfae46dac57a7d9ebb865e48b2034fa3ea454ef3b6a5970
Date: Sun, 23 Feb 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740343733
