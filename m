Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147B1244694
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764543174; cv=none; b=If0GTcrgHJrhRkL5AcYQ7M6LilXS/sOLyLK9FNzGKD5ASQnhskYM/drKhoQS08vrGQL36X+XZMY6wplyN9tNV3RRS4e8yUGNHKemqsmCMz7NyrVzBYIxZY1IsbFPWBzIoI4GAGkgEDQdAcNgxQmBD3oz46CFKJxDPwoZllfhhIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764543174; c=relaxed/simple;
	bh=W3ts0HrhxA4+CzpBRvU6ySSeQXU9SpX/wbqbK8gKbAc=;
	h=To:Subject:From:Message-Id:Date; b=Kn08LKHzhAhPtKeL8+wTsaf5TudY9ElqswMybrexhbDqYUe91JC4K1rfIXhCX2oGQrlPqrNsgnqqakncNkeddtmEfkx+NSKTpdchZ0m1W0pkvaQh4NcraSXH3pjfOV4bOgHAGlEoxL0ibm6bRXTdhdENTh7cT8oh8A8NkjvoEJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHHok5X3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHHok5X3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EEDC113D0
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764543173;
	bh=W3ts0HrhxA4+CzpBRvU6ySSeQXU9SpX/wbqbK8gKbAc=;
	h=To:Subject:From:Date:From;
	b=kHHok5X3j+Rx7VgxSmNFhA4eqLRm5auxjiuThuOUnnfsx6OM3eEWcVQ8376WrfWtW
	 Tb02QKzWNB6wAwbmIPY8sdbEPEQku5V+/BzBWgk8FCuwOVIfzClEg+xKEdChi6OG9m
	 LJm1GPOX/bKrX3V7GyQTEbaEbbVU6iNw6Bn8ag8h5LgmS2HqAP9YcIM9LDd3M5bD1j
	 lU0LnIkBkXLSUkjB2bL8Z7xaHR/HulLNSfiVm0TTZ8rS58Klyb5LiOcAMMNfiHZKIi
	 9lB535myP0dt5TmJaQgB2z0rMR1SUJWKYtNISmr7xgF/XX+Z29l7+dQnDo/WXhfCW+
	 DWmIg3QdfUjZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91155D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454317358.29816.15133686191997652781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef022d7c4aee828ac68e2854860ae4604c7b0cc47efbfd094614b4cb806762f
Date: Sun, 30 Nov 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764543173
