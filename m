Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA1C1FE47C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770088434; cv=none; b=ie5m9fJhQWtnG049jb1TAdMSYkLBSYqgSwQDFWSRjuA3+yhPwIICTGZf47A7S94NNi/HDBrTSDERoTOCOxtwP51XEFHX+TaEiOowsCQQMH4bxPB2ehAh0X0LF0fcb2ouefy7Lb5oQv26VfZ4KucdPC58lRlfipba5otT2dMyfNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770088434; c=relaxed/simple;
	bh=02E2qfkuiwIkzmcTrxeUpqhWrjkhmHzBIKpG8CxPX+A=;
	h=To:Subject:From:Message-Id:Date; b=Qv07BpeoB0yXm0Y4FE1V6juiTmj1b44DIgL4fSeHMCLdU4NjqQeLfpFHZBtnutNQ3qy4oOV7xSqOhtQMm6zJTwt58RD0pnLCt7rivVworqYYKh20B3LH6Cl0paduTMEYDlC6Dtg1YM3iyZv1Zjtny4jRghZ98Lpd4JK7flPtMgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gc6Q/bMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gc6Q/bMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5886C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770088433;
	bh=02E2qfkuiwIkzmcTrxeUpqhWrjkhmHzBIKpG8CxPX+A=;
	h=To:Subject:From:Date:From;
	b=Gc6Q/bMumHKon1Fi61/NX85mqsBMU99esGpL9lVbnGh+WX6h6AYIvjXxk+5Ar4uPG
	 qwEU5QdwRnbzEiCjs0bJsENwHxYKrYFDRUyscdkeWcuQjp6uBW2TT8H5o5Yft5tkJ5
	 HrMYTtcv2Fx9ZCJ8oVa8cvkmOx6fEUt3hi2NbAp8PWoBtdgkWJKj3lO4e/pRzvHIPM
	 1M36R+T+OjwyrozmUQIa/OV9YtWUk2o0yBknorVi6c5XWawMepyrZF9msHiLYS0sRb
	 sTFB20v345RY7K5H6oHt5bizm1fu7ECTc+8gutzqNJ00kddVhVT3o439mDY0coFlA3
	 LGVsi+hePiGPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93251E83043
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008843359.17463.4232376790102892986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6c2bb6d842791883c528664d9ec1520f1db8d1baaa2f2ba5d2017f5385b57b
Date: Tue, 03 Feb 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770088433
