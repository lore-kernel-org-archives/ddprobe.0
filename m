Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D48B1428E4
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726091754; cv=none; b=fhkE/LPyF3u24JlOUCRsQKRSwCsrN7H9eO3Vh2MtShD9Awaq02TLo4eiT9arGFlP0+ey9H3HHyIqiEAV3mfIKButv6rXwF08G12LSrLHm9nz1RYFHRXb4Ossqs2e+TDgVrr5keDPSVbkG+dKkkDM3UlDTA2zZL4EEb9+4G9ooUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726091754; c=relaxed/simple;
	bh=yK1tCRcLvn79SnRoyb88uzSiyeW7nXcUWeIJ0NLcjag=;
	h=To:Subject:From:Message-Id:Date; b=RrI5kcIsBzlz2RqhbQOxfhzgCm/1QmX2tKmDP1emdQuDb6ff2jiRl6zTnGuLEzvL6+9IAutktEe9wHEJQ2UasGdAKlC/pY3b0NwiVHfbQJikoTr6d5YKzKX3pGq0qgKRz0x2qJUpO7VCra0Q8zxmBmrkTjQmSSoAKtpy06gTSpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvPEqERo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvPEqERo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA0BC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726091753;
	bh=yK1tCRcLvn79SnRoyb88uzSiyeW7nXcUWeIJ0NLcjag=;
	h=To:Subject:From:Date:From;
	b=PvPEqERoD9+30jPhUOfqnsdR7eBrC+EyAtryao61GMCxAZkFW/nd4KuNZ9lRQINcE
	 vHatVv7q9zw9sFwhNGyPtpiSVhkZStTNdMvnRTPgL7PghpvoYBcPx/JoyLrPgEKiOF
	 iOOU449mhsVJYlqS7DmFRMPvLT9IKcJjvYvkcDM70iQLIh7z3lqooPXTCyvYcBMxSm
	 ulf0a7WpVmL9nvrwBEWMiWfzLc9M8PpiLEXVnjy6U55AvR6FC4hiQhR1VEVPgOMPf3
	 W/iPstjNflSvmK92kghc0O5Dn3NAzYgpJhZqL+D88avSAUiHEcHZ0Gj3dvFxPULnyG
	 EGXsIWgYuC+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A4EE57DB
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172609175359.6114.9167445859500644806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9932071858abf23b2c3fe9b2df92af14c23cbdf5318ce85eaf55d78a663a2eb
Date: Wed, 11 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726091753
