Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55081DC1AB
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763442714; cv=none; b=U8TiWrxkhsuph3b3GAnNJ1W5l84bclRSVM5DJIuOCOmV9GuYJsvfKLjpzczXn26mm+vo1npFUIgiSri8PTep4hqj2oGVnoT3ThpuKyUjhkSxyJt2oPqTy4DyNyUaEffskQhhi4/e4by/rz3BjFULvTzUgzhEuRWYFwGayl1nc9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763442714; c=relaxed/simple;
	bh=1TUiOCc56ExdAB0vj3rHycx9CPKL1DxDgdGa2/s3Iwo=;
	h=To:Subject:From:Message-Id:Date; b=fpNUIagOU5ChJdoDEqPu5idEfJDCQFCGPTw+Ub5rDeCDwNN4jwVSxGeKwz6NB1BDCPZNOF6DHa/FrSCzQhB84rsCCI6UmuaxCxjET73p5VdTDcpeOVP+pgbiBS/KYBPGmPX0BKsXOmeuy3k8K72XhnTIIQXUVq4F99ucHPSbngM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rifjatZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rifjatZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2ED1C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763442713;
	bh=1TUiOCc56ExdAB0vj3rHycx9CPKL1DxDgdGa2/s3Iwo=;
	h=To:Subject:From:Date:From;
	b=rifjatZSPbj+3HlFJWko8t2LJqE9mjZU/SCOBnMKXeGG15BsLCk46aP1y/CH1Hskf
	 YUmgSZawFfz2+5grSjh/UFokgwRZINL9SLCv3bpaKUujoLJIu8+LYNWsA4pvurlF5Q
	 W6uHDnanSIiy/HmOORVqwwheL8pwxORD+5nD9+OswDSFPJ0GnqkPf8JYcaHU62Poew
	 XUMEs1dCBrORYUVS1uwtWMQ5NJJUhzyYMWZTfykTLF+3DE47paT+Ewi/eqLygXttsq
	 Mj385V2owcvh6+09fUeir9du07M+An5b9ZEA2gwND4G8Q+2utlWhb51v8tz/3p4xFW
	 55BzbqIA42Ynw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BBECCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 05:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344271358.27350.10825628515683080434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64bf60d676e55f77e4b862a6b0ced58ac9d13db0129ee373156cebff516bafd5
Date: Tue, 18 Nov 2025 05:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763442713
