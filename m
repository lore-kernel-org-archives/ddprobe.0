Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EE36FC3
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740224334; cv=none; b=AOpbRdAkskFk79RABzJyllBcdQ5tWQDPsqcVXRz9whuJYQKQ/dUJc/rn3s+fyyVmuNTRegAMpidqpnWL7/J3iOxPhZQ0XKreYklNu6ttGl8FUsWWxri2TvNQhOtTboDJY2SG/aIu4RDyQx+Q5aD64lEXq05bgdHUf0Bm+pTKPcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740224334; c=relaxed/simple;
	bh=OVHe1zMR6+Vk5CY/vgUBVO3Mu5v4d/CK4qEGdtXS66c=;
	h=To:Subject:From:Message-Id:Date; b=ppwBeCg5NwFNVEqDSpRt7mrzciKJvwjyhxOxFHsSXpZEn3ARjFHPBnVTERvssmvSBKNaphayN+a6H+FqWcdEims9pFMVSBt0pL8hYaAFaXN9yaFDlCBo/zM+IbdT67WFqRmjtTAgisdSQPOi6eYdkM3A2mfKy74HlAA3nwZJ3/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsZ2mMUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsZ2mMUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81ACC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740224333;
	bh=OVHe1zMR6+Vk5CY/vgUBVO3Mu5v4d/CK4qEGdtXS66c=;
	h=To:Subject:From:Date:From;
	b=rsZ2mMUGrX5wy4uE2aqWgHaYcPkRof+xPGH4Jtcx9AYBvyh8A+3D4oXoscCtPpzEX
	 apZhAwHUi8xLb3fJ+4lH2+rLFTNtUIDWAgbeMgKEA8qU7UN9zgZtVuFKK7BH5tl28/
	 J6bQ0vsGMVB6LrJDK+JV+z4ftDlzxiO7mzGv17vFBz1+cp/9B0VVl1eoDYXpjAmhPZ
	 HETiHmmXsty+Gcs6OB+EXaLs6vYUsg5kNDGGTA6InuCgbUztTsMOfDuCrjRVk4Xltx
	 aLnOjP1ubTPsOnVHdrfAILufnpOwejf94JrttBBCuGm4OY9iOjdnZbI/TtpbCX3sEk
	 Yo4nvJO63cCJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E19C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174022433361.3013.9190032592992032238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc79ad155b68dcb00cc2e8fdbde8095f05e5e677f7362b336f1a17d58bc0dbc
Date: Sat, 22 Feb 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740224333
