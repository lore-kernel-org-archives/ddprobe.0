Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1367A169AD2
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757855394; cv=none; b=txr0ccW5gxNvHdhPkKoKVDnnTuUyK6TD3L37FJjJyH61kqCMNfNk1RhemtI4qcWcdJyAzSlRmFAHafoXnw0EB/5tYe9JXyYY/OEkfPI2euFzyPY3Yf7Es9wx6+/9PM6gJm07pA2uD92ZeKy12Bva9aGRcZUjDlk/ij3M3DiIlO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757855394; c=relaxed/simple;
	bh=y8BveKjqVu5i3vQzBWMGE/rljw+BxRoYn5AvmP0+mP4=;
	h=To:Subject:From:Message-Id:Date; b=V0cRf60VLaFq78C9lciqkqjJ+E7+c0EEnqjGg1urXtGcVOwPCmGDU1uCoMzBVvUpt2vxJPMKdfTnZwRx6XCEf5+ARfokGjoWowXfuO3vqppbnvhM6pSXKa6an3auQ7CumryoosZYKqTyYoh1dFbUdrkQOuhW0/p293enb4bAU2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLZbGKzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLZbGKzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B47C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757855393;
	bh=y8BveKjqVu5i3vQzBWMGE/rljw+BxRoYn5AvmP0+mP4=;
	h=To:Subject:From:Date:From;
	b=iLZbGKzM2W8xbb/DedjWvql6V4FMi3OTjFFMl1hDv0Of/ViwelIEYVngbU1LroaSs
	 tvM8PCX8pmAKn39+EKGIZygqDEgJwKfjfPsEDapLXswAq9VbSLpXAwqBpw+0KoJdIi
	 ATsXdWOAvNLgO7RS78Xwil3QjK0VF2U5zEtMVrm/ILLEmfJdyZdOCfvccV/0VeLAmZ
	 JOrBaJWL8BEz6vqFZlpBhIAGyObfMsHYepZYd/C6FsljfEXxm7TIdfcwi+dFDUmqBY
	 jn/2pynbwfkzd0q+hSfWvztbGKyaeXmTfMSCs20PrrXO3xZZV706XxpCF3WMKWa9if
	 KFj/FZWwDrVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93872CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785539358.26428.14997928038874532544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a16b44108e6f98c3ed133030b63d090cac22fd69fc67826f283402ecc2fa5e
Date: Sun, 14 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757855393
