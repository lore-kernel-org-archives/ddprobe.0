Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2215223CB
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736038554; cv=none; b=FMHauVHbflr8XPP2y10MiMQn5ypCPxWbP0IIxx76hGWM74JmLyScSgq3d8a0G0UJeVSLLveAPnXAdsgRcbuba0+DNyXgsCRsJYbmtSfITDexadm0s2zfW77i4/WtiGiAeVnxPRi3tKa3ioZHKvLZh3/GjH+1Ms+EEClKG3lPhdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736038554; c=relaxed/simple;
	bh=b4JTxu2N2lPstvKjvNgaC6euzu1AxmctXvt2dTBuC88=;
	h=To:Subject:From:Message-Id:Date; b=Fb/nKwaBtjTm5IXJP27dTBP2fVk2S1xAessC5Q2Ufd9Exz9gepvoka3LBNcv0R4ADV1gycYLP4tIeUUIxZ5yh6mQWCzZfusc8tKusMHPEVF9KO9vMRnk0lU6P3C7gVO1rVhvuMFDbq+KeKRZ+FTq37FUAvxJTWr5Ma97Ufpe7OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRHfuCAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRHfuCAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7798C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736038553;
	bh=b4JTxu2N2lPstvKjvNgaC6euzu1AxmctXvt2dTBuC88=;
	h=To:Subject:From:Date:From;
	b=ZRHfuCACAOiaBogOLf4UABChjE19EQBJ8CmLETGL0h/gDe6jVAiKmqc0KbRDUgpQK
	 umpe8qM6xU2L1MLiUUwmjVT02+D0M0mK2x3CgPuO5nwAVOTYZct1WJDo47fzvxFi0R
	 WzLazWfpmADXurStQ2euADQUtFRelautqhCifCSgz0nhlUEJ3hFMWz498FBP8TEc1w
	 u8Rgc3FysoXlYvNcry6n1dtHA6/AjZUqG5HhJjD269SrZJYggfa9+9K2nmzoUavsQ0
	 ltQoee961qxVDQMeAGX9axsf1oZ/q71YuXCA6c/WpU+1wyGceZGwOjdDRYiO+b3aQx
	 uwlkkd+/rABIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D2BE77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173603855360.8195.17893464104087719999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9132d79a11aa8f83ae0b433d0c5c12c38a2a7f789449327159f6b54939f13562
Date: Sun, 05 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736038553
