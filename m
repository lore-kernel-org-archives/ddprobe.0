Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284481DE3CA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747246195; cv=none; b=O3zClLCVyjZVu1NbilFQNaVqIBPtWrpmDGt5C25/NowGScCzotVuiMs7mzxAdrodjjvrnKTwaH/YcqABAZ9ELdqYhYhu+CA00/FEtpQo1ZOTPt83C56D/HJUT/16AEIsd/ZD8KHgCtioMwMEeqVfylbwyh/cLFx/x4OcL8hY0Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747246195; c=relaxed/simple;
	bh=TF+p/0x/YuE0mRe3wBUTC95xU0MFiJXucmv7vo8EynM=;
	h=To:Subject:From:Message-Id:Date; b=PxNl+oP8NYZeW9vjAuP+JVaWwPxSxOPBPQelsL8HyY20n4oa8HznpvmO948pTZ4MyHqQ7KxknWn+tE2bmJH3roJW9o88FkyiDPxev6l5fG+jR70Wy+LJA7q2q9G+ayP2Jqsaj9C36HCAIN5Ty79CFAKp+Z2eZhJ35UvFV3FNO0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzK2VDsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzK2VDsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2492C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747246193;
	bh=TF+p/0x/YuE0mRe3wBUTC95xU0MFiJXucmv7vo8EynM=;
	h=To:Subject:From:Date:From;
	b=qzK2VDsE+7essyjH/8N6gHiBi1joPAm3k0SjdxS2N3Zn8cVTvgsW/Lv8akeUxx1j0
	 zFrMh5xSgzSX9vXHtsnCYCQ1YKwcgYOMahPbyyAHTH0wrU/C1YhlZNbdl7qQ3Sap26
	 cJeD8UbONnPT18DijwsRZmeRO0saQegGKTJnQymrjBl7cJ7VTwkVIGLvHNxV7CbgCt
	 xi9r1Wy/sEukMBX4v0YPVxNhpUIsn62LRNvbwo5QKZFw6pgKdXN8REJ6HyXKY5UHzI
	 4vI6SyPnJ3cFL5lWY3sNMh7nzrHkO71sNFj1Dt1SbnM+M+R8U12LHlaklbReVpvw16
	 Jlfaox1B/pEAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9299CC3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724619359.9801.11962785270913321158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e80e87fc676725b6ca7ed19f51a10380b005be656232a208d5512b5a4a64b1
Date: Wed, 14 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747246193
