Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81222BA29
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716861263; cv=none; b=ObeY6d5+ynyU92oLPNj4d36U89TR/6ME3WeEiE0IcnsnkDzxaXcTrSo1A4uO21iJVb+mKWmVy81IOgHgQ/9EOm6FhON8sM6S0oDf2ga5doymIO4eMXBUHszZX+kbg2KnjdxPKRQtRKm+n3fQh87T+Ts3jTHGlU8j7AJYucZR3s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716861263; c=relaxed/simple;
	bh=LGWzZNZpQ4Ga+fKaIZc2u2sulzENO40d+MFvyE0YqlY=;
	h=To:Subject:From:Message-Id:Date; b=SXqAPJn14QTUr67kAPWxx5SrDvQrVSBwZXYApnWEs6iPUxBAHermQC+8JOn7oEAIfQn3KYbqxsGTFu6vXFvcfIAXelF6SsEhAtizt+Qx422i8VFUI0Xk7naQzGVSs6EHeDGms6yS4QumNUDaByYEmIeeoGh9HrTOhA7PS29eMOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+atwHR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+atwHR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E30C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716861262;
	bh=LGWzZNZpQ4Ga+fKaIZc2u2sulzENO40d+MFvyE0YqlY=;
	h=To:Subject:From:Date:From;
	b=L+atwHR536VGHkgMO10VXKYUhttYzQ239Y4J4FyTNZShZsHRQWSKbNeOgsST0KKLe
	 f7sxFOgcVfW6S27VRXlXp9TXiVYUld6UGsRoEtQW8MO12mVQQP/ZibEuowZ+ur6ujO
	 9mOmMHanwwL2Yz9LBuoHAoG89J4Fqj1fYCaGifKhbbaZOe8tNiGg/fCA4Lv7CSLx6r
	 mG//8/0n7Cz0X9xFk5x3j1AAU4mDvQzvRbsjKIIJiA/5ldFIXxT/GTj0BvD72X4Jcc
	 xHGH5D0lhjRAxLhDK8KpXdVydkGMmPHK2hrJSibUMdfRcGhz7IIvBq5y/zGwY/8UgN
	 7o9utadw9f4sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA9DC25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686126281.17441.11490881193784762164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d3fea55f7604e689ff9feaea02eac4908c6e0f2cd9454f8e9a539ed455377b
Date: Tue, 28 May 2024 01:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716861262
