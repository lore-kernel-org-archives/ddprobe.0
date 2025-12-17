Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3345030F55D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766006034; cv=none; b=RrLrInso1zCFZNKDAxu+yApMPCiSh0FXyzyLnMCuwfnIoIEqIHQFrw8OtY51G2jAruEu/ZGJ2yTdqrOb+TZHeqCBMJYuI4/1w1ma4J+n8Ay0KR9s4e6scBT/04JleB9hPPLnuy+M6oqnO4SwUf5K+ptNlbyixCIA35FMjLecfHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766006034; c=relaxed/simple;
	bh=k8IX3xPebyHuPBj20po8GHEzgvFtymmFgFfXEQNr2Uc=;
	h=To:Subject:From:Message-Id:Date; b=IMNGY4uZauxrhAf4dE/RdkksSZno7WYl7+yaOrVqkvubXlUrSyf3RleuU3oxi2h6yofHPUtuFORK/zlkzKrCPpZY51L/AGwFCDafcFdKfWRKv8ZQAQkRNQJRWiAOwhLCn+AJkK7/Vp5bsH/SbIbplMBgzISAsy3BI6r29dRKAbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7rwK9Ci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7rwK9Ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A076BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766006033;
	bh=k8IX3xPebyHuPBj20po8GHEzgvFtymmFgFfXEQNr2Uc=;
	h=To:Subject:From:Date:From;
	b=n7rwK9Ci5mbZXRxWSgCVrH+t256SiYJBGFcxr1GthGzC87N3W0M8Oi4h5XWGhtpnG
	 awnKqJpkyi8l91ZrdY8JLYWvi+VyKMgKH7zEc5Wumgjh3o1Au6f4bKCUfgziqghzxa
	 DZgQFKiCXqVWgSp4oTWABtRiyGcbvMqFdrCaQMa1+5p6jaWIglb5CpTIXuNgLB9GWK
	 HkuH1AKLCq9N0Yr7R161BcndEzwmWGswiIpCuUaIqTlMfCSE5dCqxXDKsSuEAnReJ8
	 LHBpDzb4dO+y2lfuYnMnmV6imOY69o8V89fE81D0B7DbzJnS3CiRopsSXbV6Rk2dkd
	 N0PN4KsB2nzjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90857D66BA9
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600603358.27144.4212352744373728165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04644946f0619c3896c0e4803e25cd4d419bf84a9eb2796541073b1c52d0c333
Date: Wed, 17 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766006033
