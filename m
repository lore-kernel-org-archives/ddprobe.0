Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293722737F3
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766285634; cv=none; b=HDF0toLmtZGOEVA4O1c6D8KCPZp/vEkSnPGYtQ3ohKkJiBRU/cfaS06L6W3lSWyR1m5Yg0hm3+Nd+SviShhWw6QFeXWTPOoSWAnJGHJDRwHJHbXS7bewEhrt799cTFXWpAFA1ySxzKH7tmBeyGMmv/Su1LCj42cCT2MgVohPeP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766285634; c=relaxed/simple;
	bh=We8jglbX3rRI3Sg2R5CvSIh1+IhsVpLbJgktip3KCHU=;
	h=To:Subject:From:Message-Id:Date; b=vGYuod1CKaH4uCMEHL8uXdH0QrvXUaNWQ2AR8wvQzppMI3fZwMp2WWo/aUWrOCRsjfsKWA94E2ir4ru2s+22HLIp4C7ccWCS5z+s+1rtLcZwdd23RUgluFX7vipEjKyPklLcNQi0MX0cb/6T3KAz/PrApB+97Kb8i590Ec4zhZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nyy3RSCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nyy3RSCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A708EC116D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766285633;
	bh=We8jglbX3rRI3Sg2R5CvSIh1+IhsVpLbJgktip3KCHU=;
	h=To:Subject:From:Date:From;
	b=Nyy3RSCW1KWdovk0nPY3Xgxdk1JN3813sCrrnDLVLQIS9ckjTRWSwwTWys0b89tmg
	 nbh0mOoLdju+dRXNZdy8p2YcUjZ+yTBIY4j5o4+AJ1WkZ6EX725b3v61TVyQ93a7o2
	 zA6POAIuzCzOm+L72FdnrbrtdmB+NzIaRIHiz8TcmX5kuUA85/laThrdGZ3RoNNyGw
	 +MvB3Lg7631+JWi8aHE6Gy1Yg98GNQ4o5ekFbbvq5KvZfAJc1IYC/CJ188oNfJ+7Q8
	 WXNTki6z1HAn7fTQCYwy3LsEFZyXfD/gORuN1iFqdt6APJ/P306N+HWq2+I6mEjBne
	 vsgfF1wIC1S9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96640E6748D
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628563358.9660.8783009307456714982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ed8b88b9002c6527ec8e6995406dc6f981711a5c923658be193c5a3dbbbc15
Date: Sun, 21 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766285633
