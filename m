Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCBB27F4F5
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767452634; cv=none; b=mJece2dYiusK6ezskRn+nuYTcblpCh/dwK/FkW90Ao1xPOinamtUa29cATZTDQjGeJULeKt9pCO7otp/xD6koZgdLgEtOdcWBTL7Rk6UAbfuZZQDN1feDc5APKIx6uk+jIDTJ+0xeZ2/L2df8uMI/E7hx2hqJczjJA+reLnZ7DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767452634; c=relaxed/simple;
	bh=whOMWCsLqsdfn5TXwhV0pmhJ7xCfGBtXrR23gu2fJ2s=;
	h=To:Subject:From:Message-Id:Date; b=Ux/Nj1AuXdKYKOAxO1P7mdrFj0gDZ9myLKzzEjVnsw3MgzU9fu4Ks+tuoecNteZedvWEGfmQCotDgwz86PKoLjSFAGE6D9SMpO/+v4Nzi+jHou9SxB7zh0K6/wKzSPBd5in2l63GPaQGJY9PfXt6kK6W+/BsB9Q/x2s2mrVlgyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssneDTRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssneDTRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05CAC116C6
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767452633;
	bh=whOMWCsLqsdfn5TXwhV0pmhJ7xCfGBtXrR23gu2fJ2s=;
	h=To:Subject:From:Date:From;
	b=ssneDTRPUC8VMAb01rkmZGYJggpyPBfoBs82hoLtvr6KVCVcGMEfo20acYLNVqg1g
	 42RyK9wZbWWwI7RH7/KZqb3eWm0CPjXALw3mapaLtISYPp8a5xNFrOXp7YCKf56L6i
	 dphWQp0dZSqW2f8S7NxQHVEupnnJHzneYDN1ZozCzXPe1XmU3Z/gov3SBVMkX2xJZ5
	 cYAejw6WcdAd4Ge6r8KYIJALZSXSXtfeNPi8iTEK4hgl5AfQIynT43PYJnJCtvhuDP
	 Ldy9SgWFrJK/FXBXU8HsCbF1y+yvoWdsPPtPqTIH8tXXvG15TKgkFOKSRfa4yCCzZz
	 FzIRwvsDx/vkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAAFC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745263357.18945.81189024096442323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2047c4bbbc5ac057378408007246dca084706f4d4f90ee65c1cf61b02a0c9c8e
Date: Sat, 03 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767452633
