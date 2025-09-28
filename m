Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF06139D
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759018194; cv=none; b=M8xV+4h0m5UnMq/5nHEH2KBpDawGwsoKNAncYJte22OhYykSiqiZH0AdLCXCxHbaIZLhojIwaCk4U9rNOK8N0PF9pFZqyuP3Smpg6ZzpvumGNVLfQP0E2HYtEL11pA08a/MrS+DbzMZeDYoOoRX7ZvqfpYMKOs6iGaH2dJ5x+kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759018194; c=relaxed/simple;
	bh=Mf6bN7I6d43JdvAn5KIjFcE9ZbFV9z0HO1Ls6iB/A70=;
	h=To:Subject:From:Message-Id:Date; b=l+3hatpV8wVVAI8sw8d67Z382lm+ydXYb5DpkDsurOl0NnaLNGfVDFD6lJN/H6vGQjK0SNSmRv2XMi+3XgODPrn6AEESV3AjjTpj1TPMMCjpSnGKLebgQCzUYWDnSgpRNZJDG5Fs31mEimwnipJ53nE7glAPtMBkbnVwgbJDZ/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyB2RXJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyB2RXJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8424C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759018193;
	bh=Mf6bN7I6d43JdvAn5KIjFcE9ZbFV9z0HO1Ls6iB/A70=;
	h=To:Subject:From:Date:From;
	b=HyB2RXJAMQLMVhwckJ060snTLVwlTKqJeGFM1idXu7FZGuS8VUvGiNSQveo+Y4fqw
	 fDR+Y4w8cYt9uR6MCxP8gjDiVHZ8l8dxB9demfQGC5TyRwtImPkmIxoGCSVzkM+WrC
	 C2ga3tuBJcmy8jCDmi3MOrBKH5uCf9ArER8OxH3Ry5X+yWXW6MpnYMHF6wCStwBSGI
	 iWK6M8ElHPK6Fs6TiB7zX70ZM0U22iie9/DEksLOqC9ln4lReEz2jUpvbVc8fq9K/x
	 I8M2sC04KX1rg3C9CssC8ljv7q3k2Ks/VBEAIZTqt2/dw24zpSuthhsF10v4HbEFRR
	 2Fi6z/GlJDgAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BB4CAC5B0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901819358.11614.8369781483641740573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d06a217c391e0dcc1ebc1f2777ce67b7a73d00a0b5562046ff6cdcdf03b9415
Date: Sun, 28 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759018193
