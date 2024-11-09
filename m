Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECA2146590
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731146754; cv=none; b=j/Ds9XBSzGmoR58U1yQFmBVCfykdamkHrc+bIodIkU127/DDpa+vq+pCw3Qo0QjO7ffIu1ZsQ9sbcZHwg7tYpJo3oXBhBUlfJ30wuDV/b1UEqSnXF6PQdjWsT6RTg+9PxK4n8/mPA/qyVuyLAr8jDTjqLf7RGHqX6NWaZaNKELk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731146754; c=relaxed/simple;
	bh=vy60xpm3rC9qF+hRGHfqXsvak8FMeQq4tlNIFRlgOsI=;
	h=To:Subject:From:Message-Id:Date; b=aysYrSz3fa9eu8jkPJZjb51F0FDqLtxYpIBlBeYnkrI7Q/lI91cyusPe2bbom6CxDDMoKQGPOc/SuSuI2cIm4XVW7vB6J0F6zwWRvXAf5iEAxL55BZArUgZ2spJ0hNlTb9DySPaNCIVnSBINZ8ITS53ZtovylETnA1dgwjV8yO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzJW7PQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzJW7PQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B169EC4CED4
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731146753;
	bh=vy60xpm3rC9qF+hRGHfqXsvak8FMeQq4tlNIFRlgOsI=;
	h=To:Subject:From:Date:From;
	b=NzJW7PQZYxtTXb7V55tya4VPBI42YJiwicGGXEeOeH5p1cqMBInkV00skR7lMM5Ie
	 J23w/O32DyGAR4yTW5kdeflCtZ9mk+qtiLpGtMGwfNEClmYkVLbsrudg/wk8AqJW3S
	 X7/M8uv/bdkX/snmod6dgmHqIjQaDdrYLdCx6G8ype6SysLCM1Pi6YOpq02bxf47H/
	 aUBsX76fUCw7YfcR/WHxhoyi23N87RemEUYezb/juMoAhAzgDijLfeX5GtlulnRfbU
	 90egZaUL0Ur9B8x7d76sENkWIzq+yzlfUFXsKQjl2b7uQPpHR3wj01b1yDkf6n7yqY
	 SWJjkXaly6Fhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D993D5E362
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173114675358.4340.13435962073395187359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27f0605ab0fc47671cfb7f79b5f765cd19670d2fa13f7525c05df7135151bf5
Date: Sat, 09 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731146753
