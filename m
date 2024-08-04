Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322EC79C8
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722764154; cv=none; b=PoVzZYD+0QjDiOlA8anlFUJrIetnVWiW6GUBgn9S2Gyabbsee68NkAxCFL3K7VgS0lqyEnOGkV4GHPlyKBFp4NqXvRYmKtzi1gm5OrBSdswjNdMe0MS+Pj6O7VY0GLbHwCnuoZppRtajYk60hyj0h93EHZXnderrnx13OJHBj60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722764154; c=relaxed/simple;
	bh=FqNfLR5VIaOfkxsN0sz8SqEJXWGo65sp4bESJUVWAPA=;
	h=To:Subject:From:Message-Id:Date; b=MXsRnUBO92GOsXFBwytxyahoXEsdyV9FEa4WKqFG+OcANIUcq7fMvcI9oV3vVUJht+4W0Ks4oRaYCXGCgY7O+hrDKOb+7VqrdV0Oku0Nx2FAoIoAU/YzDALPbl5Mq+K7vH9gqy5S+Wm6d0dmXq6KlUJF7bu7h2tmahjOO9HIeM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHofpPjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHofpPjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D47C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722764153;
	bh=FqNfLR5VIaOfkxsN0sz8SqEJXWGo65sp4bESJUVWAPA=;
	h=To:Subject:From:Date:From;
	b=NHofpPjtJeyWSHGkMpks6HtJhL1uQ0yUvDqSjnmxJ5em2Esec2dgtn+sOwX/zVCvn
	 //yy+39HWhr1+Z0tJPaqgM15uVWYZZJnE8Y+icwbu11KJ7OqcEjJ8N4DQFdf6B7y1c
	 GyRGUGDSF0kyPMxyCvAGhEVSJtl9Afe2tzG46FbtgHVAreSTp/CilSUPYJ9EKYtKKK
	 8GNab4rgpwRetOitPn7+lbHOCWPdKafRLlX493UhgdyJgiKnyb39UY9QZYYuJ944ze
	 /bxHlkSpdcjDTUjJe7rrav/76V3t0QxmjT9byX2pH7CLeHUcpZ5Hs2CRIah3VXDrBL
	 x15SNTC/Co6/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4BFC3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172276415360.11582.16789252857352422977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc10e2e92fe1a115ab29097e5a4e3a5e17d5c1b93615b6bbff862aebfec53e94
Date: Sun, 04 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722764153
