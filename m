Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDF424166A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751272794; cv=none; b=C4IZbOlWWDY9YC+cjCEKNqJbkMhhYRx/r0wcgJcjeMqYFhXl52T8qYZ0VV1zqjdH41MgVeVwYr0gT0SmiquNmLuk5tRjOKNh/lnBtBFJV3Zv/PwCKFw2bKUDlBCMgMducfs4TIi+4wKMCWeTvpQzBm/zIPRCFPgBanHynnnwGOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751272794; c=relaxed/simple;
	bh=mxgCat9X4Lltw1Rp7VH0/M1WOQrClKZTtFDe4fMe/R8=;
	h=To:Subject:From:Message-Id:Date; b=NQfr3vpux6sfBMQf9iCQ+m2fqVdK199134edMvtNfaoHDovfbvtpqXgyeqaTVe1z3fM3QJW5/pQZ7/edlL2Kiw60scuIRqaGjNGlVyDnNr5329xQBZ8bhCgaqxUjY7sbUw4iNDS1y+FDLx79YffVL8za6F00hBAJwKFQGSIezeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEDL5i4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEDL5i4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0131C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751272793;
	bh=mxgCat9X4Lltw1Rp7VH0/M1WOQrClKZTtFDe4fMe/R8=;
	h=To:Subject:From:Date:From;
	b=PEDL5i4F8RSXmkQ3qWENBJygbHREuodp3Gpy/+Xsu2Pk1m7Yk2qBnr+IFtGi77xMj
	 3I4GLp23d1HWNdzw0NVU9BTXHBElxt5eKJQCoPwjmJelEZXeNv7yTTYBRmAjEGsurL
	 1OQEoPNo2/URNw0reCGFMwqaZT68EkMF9ONd9V6w16KIy/eShPy6DcmB8FHJj13wWI
	 nBB1NjS0i+6BHhVrDyp6OaKhaqyUvUqqd7/+Qm0l4RAjLbOBSRhC3TUQZUBHg9O2mn
	 h5ZGkkUtTNOQKFRHVoEfcvkwRRmAXkhWTLdFpPd63Yatf8e+v8pprZl0uZZTXqBdpT
	 0ktfUZUZYahiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928AAC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127279359.32160.12275592391746701725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902a3ce765843ee8b95980f86ef682c2fc826d78d1cb93219aa3cc0fbd5075ee
Date: Mon, 30 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751272793
