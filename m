Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332372AE97
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752962394; cv=none; b=jdWr+2I+ZWBtz5vE4b3GEfw87It2QVlS60kBGLH2y+rqOdd5HwOl0e/Y3snYDbmJEGquFbCM943X+5V9h/NAPnamNPt7tRv2Z1T8FWd2tQNCMQl/up58ntx0SK1LJfQ/8Sg+C5E9TLdn7ikJk/p3dE3ZA49xi88kHijEITkcdtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752962394; c=relaxed/simple;
	bh=3B/g+cpd4wmykbRQRpYywm9QD/aqXy3uk7EX8sGikHk=;
	h=To:Subject:From:Message-Id:Date; b=lV3ycBS9fuZp6n6hFD2uoBVpLTyKIbI19MJmsIXn7JYLAxUnXkKoh4CMh7VkrlRY2N6YV3WssobZHDrF+Dhjo0ajTk/6RXAtzszEtCzgswvGhsWR/BJqWGORVUHX49V95LIhgoyBVBx47Qbaf6Ep14AwK/fpsclHF/OFPHUNVvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scSOm8fX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scSOm8fX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98F8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752962393;
	bh=3B/g+cpd4wmykbRQRpYywm9QD/aqXy3uk7EX8sGikHk=;
	h=To:Subject:From:Date:From;
	b=scSOm8fX6l6vl2At/7IIFbSYCGq/FlRFMO+t3xz7C11RdsXUcMEt9aynlgiWdylwW
	 olZdWa3eg1p4pX0UvvtGjLLjgeetSFkKXgIPxlLSoTxkJCxG74vrutfAMbSVFTsSoC
	 kH8qlOEBhLRUKm1Q+GID/+SlvMPcRSuX3ZjOj3UdqcaGcYCzSbp7NrTMo+v04lk8XT
	 +ndvieYjJntsabd/wu2L1Nrjap9tMDnObvGRjNf70mQmI10SyKawb12BAv0UR0ar5i
	 Zz68EOn4xqOfWKF/+RjCd4+zGzUwCSE5MwOKw82cPg1mdWRYk/RhD6+dG4UsU2sJfi
	 512oNzmFJozBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92765C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296239357.9030.6329748858389073055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4067add6a8b999aba9fdb449eb3e59b2ad6dbb91c40c2afc0aa7a39658ffefbf
Date: Sat, 19 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752962393
