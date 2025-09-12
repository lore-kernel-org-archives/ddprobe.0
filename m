Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ABEA41
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757673594; cv=none; b=NwHDgw7MYZlliJoPxPZ9fAmOIA1JRO540Vlg6gv0V3vOi31SPNfTsdMNTyZ29TTo3pddVKKVS9uq5T/HI0k7A+gi3lwe+JJvN5XXhUg2UC9No1Zsurh6x/b7kXG6i6wpEUUHYF5YYNiqBoHY9e5Xou3G1Amd/WAlpcFO1yoeRHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757673594; c=relaxed/simple;
	bh=Kq41JAydVPEV7Kj+TpAbUQkG4u0irgW5QMdFCsACsmA=;
	h=To:Subject:From:Message-Id:Date; b=c074sGs7NeL7WL31+nHKvBmi2GIjg4XJ1rLRFTS7g4p+y3k90nsSFFarfzhQYnX5FJ8ytU5R+HvuYfQ5tkU685cODAiIziQmvpPIkxHzF/hzbUx9QmiEfhmZd4GpxiGSau6EBvARggJvs1FehZ0TY/rASNgK6AX6SkCJ36+B/lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUsb4PX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUsb4PX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAC7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757673593;
	bh=Kq41JAydVPEV7Kj+TpAbUQkG4u0irgW5QMdFCsACsmA=;
	h=To:Subject:From:Date:From;
	b=BUsb4PX+nF6CfAIlgTj/JFIP9UYTT7YV2n2jC0qQq7WwidYolyLyJXivJ53x1aUap
	 rixbp+6wHLYxpzIaOLQYgaP16eiOGIuM19lFqj3YRnS2d6POunwsWI0ENQAz5jaCLT
	 1x/cjnTGxsdUuNzfMSrV8rFWdhHKK7fdramIW2Ei1oT1Zde/Fx7cGLKAkRkcFWLhr0
	 jOBjrgtluEO8FjpD61JxPmhN6NGMjBjhv0zFwjm9/R7Yxvn/OOGa7/OXFaot86D7k5
	 OoPc5dPOq77u1bi0d42JLdtmBhuUX26Sp5v4/dfX5gOjQJD9zo+N2xkhDvkjnlEpww
	 63X15NugYDbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2C2CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767359361.29644.12604802873685691370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7d5646921546871a7fdc0794d3343a7c4b425fd3bde22f07e9c68722b818a2
Date: Fri, 12 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757673593
