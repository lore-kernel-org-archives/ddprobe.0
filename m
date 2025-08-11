Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6F62253E9
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754954994; cv=none; b=mHy1DhS0a8B9vJTy0kova11z8kloLi5tTPj3ann+EI5HtxG+EwKW1Mgq+su3YG8DHf3QrIgMRTtH1AOyfgdMsxITGev5qOFg0ENGHukMlcrbNhktoyUVNa+JxxyD+AqktjHqGEq+e/dK80IMk5Z7/Dq3WRWkYQ2wq2gOPj34SbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754954994; c=relaxed/simple;
	bh=t+5fADqcDAReVMwpQtEnM99kCGfzFvXMX9T2MLBhHCk=;
	h=To:Subject:From:Message-Id:Date; b=fs+j13CeZPJCQ03dbMXRtzN1cP8+Y3a1E6LOmSzLDTMskzkllDglyDcipy6DKaJPQcdRG6IWO9aFpJXr0ksnNw0aI2R6IWk6uWwMeiDexcvnhM3HIuuEESf0gV/kJzCPrzmr/VmyO3Bd62Aez5xf+mVHqtvK3Qn55JtO6IMEiQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp5jYKSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp5jYKSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A111EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754954993;
	bh=t+5fADqcDAReVMwpQtEnM99kCGfzFvXMX9T2MLBhHCk=;
	h=To:Subject:From:Date:From;
	b=Kp5jYKSedEUXMF5BCDz0ePEObRuL8rL2lVdPPW/06hREpoBPiNwIoJa8pqZxVfGbB
	 XMUTXIdfBm0+hsTVPZDJna5IAj0Ynjg5tHTGL5byNjktDRvlby4zQHfONAgG46Uuhf
	 hvHEbgRjLJhG68/ZNQ3bzi24LZDeSZ+/otPeJ1Y7AA3P+rRRAMFcwoS0YmjsAbs4g0
	 kK2sOoZlRa0SpYOTjJpyu6UvmJJDyHuFOFqJ5KLI41RTx0PU4dg7p0yEzN98kkEBrO
	 j1off/QvDOJ++Hcrt6Mz6Xvloj2NMKMX5AwmYK2BTlw3VcOAviwC/5zzW53vu4KAX0
	 oXuJbmEpigJsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FFCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495499358.14969.1587595302013865995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1146667caf7c47ceed4ad1b5d52fa6325f14ae032a1dd5ca2b93e48070172491
Date: Mon, 11 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754954993
