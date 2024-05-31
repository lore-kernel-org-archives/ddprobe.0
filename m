Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5451CAA6
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717190663; cv=none; b=gAYAszk8NT3JtPYMGqmCOOJiCda6vjzL40sjXVnRsaMR3dhFykVtxPgck9xUpx3D+S6nX/QmLOzabrzxbOETBBc2HOS0D0UEncdSSI2OezLapgs+t8/+R1w+RcBWvmHOHfdM2qXHwtJo1YAy3B3KZe15HWDecrdepHLQYqTlMSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717190663; c=relaxed/simple;
	bh=ALVFfcw7BkKcbpQlQLM8oHyX9xEbEoRtq2xlm2mBQkM=;
	h=To:Subject:From:Message-Id:Date; b=mTPeP42HC3ABtZM+iZEA4VCA5+TonZ6aMLrvTtUmKxKk/8kzIH05/iwYQrJMTPkJDKNHDcs3NL7TbPSbYyP6YLnJdccUAfh0V1K31s/tdmjU04jxv2bO1Yk232/mvOpOhcqcBA2Hvigf3wd+MKto0e6WX7AhBw/nW62zILSNoDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou8EwzLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou8EwzLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4C0C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717190662;
	bh=ALVFfcw7BkKcbpQlQLM8oHyX9xEbEoRtq2xlm2mBQkM=;
	h=To:Subject:From:Date:From;
	b=Ou8EwzLY20ECcjLijALzSQs7e5ldYltQjWf+JLks8duDRFC5vY8I/CCCCuPGDJTI9
	 AbY/KUFXBsKGoLqQDT3Pxq/CYur9c6X1xrBXM6BHQZ7C3KgRWnSWUAsLujRoEvH/Vc
	 J6s3q0QVu2qGxEYdBDyBhksOExUUg92i4iW9c054Z+sg7pdG0/nguTV8Z+neHl0oDH
	 a+8EGTWrSIG9030ppRxxMwHusupDENnrWLThq5EQNc8INf1pu9+niYorfmuC0tICXb
	 djPp0dtBcMIeNGRDOV0AH2c1aWxARIfTAg1DNxy6GVWlimIULcm+LPp5qU0xftwawH
	 8gWJzcTITcOVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AA7C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719066280.1700.17191106177313080938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b79f75651db42667f829f74eeb20804aa5fc2161cc44e0a045dcb13cce52a6
Date: Fri, 31 May 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717190662
