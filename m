Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0462745E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769560434; cv=none; b=QkG4xAEkTitLaqmnRl47KQbK4AxBzjvHoHmUjnioo4nUasSBFrHpG9fcZqyQXykdF1qOVg0soMQvXRs28lTjFpI2fGwLbwYnc6ylsVso2YMBtKWH9fk5m0dgw/G8c2l9V6X3EB+BrOVuvVkOzpE6hkdCwr2Rv5MpNgkbmOEv9IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769560434; c=relaxed/simple;
	bh=RKevTfeVXY2wXt6KyfU1ywv2xtERpCuNvHYSS9YOoo0=;
	h=To:Subject:From:Message-Id:Date; b=b3FwQ58EzFbDrlHIpp9xBQ5l2OCJFroPkL3qdeIH1Kxj2ydwsoIxzPNWWqLW9BeMHwu8ZO32cYmTu8Uk3Dp6xk5ePNmlK+MWuSAzK6DY/wlj8bYD9T2Z5dlO2PkJL0utV15rbc2OhtzxBjAJwNqQ9phWUyZ2kVreUU6O9EeaJbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJ61bCvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJ61bCvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A598AC116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769560433;
	bh=RKevTfeVXY2wXt6KyfU1ywv2xtERpCuNvHYSS9YOoo0=;
	h=To:Subject:From:Date:From;
	b=IJ61bCvwaHYmp0xqCnVY/vU+FDXnsXw/D8+YRkEFv3ZhRdR9U3M5PG2jXpGVHqaWi
	 EhP+bUicV9C+VjvglyFDljGW8JqYu2WDANIQwFw5x+aeyOAbbOmYDeBQALT9Bp71Js
	 AqPzPQEtofJcZSFe4671Jhhe/v9wareB0b1UAqWgEkwxO4uH7xnuDFOgg6Pb3bvhmZ
	 0Vnk8PxpFoWB0WWH6JeeZrpX9mqxIcTF7IADdK5xbyr++nHfconVLQC+OBiuUi89R1
	 HS4i1/kIswCYhWSxr56Ai36k0FDff3/bgBRQBRAKkcCeMRiYONzCvFUcIZ6tFCdHfg
	 tcWwD4yS/rpkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FC1D2FEFE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956043357.12849.5304522864204987750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830f251781adeb02ef1ce20650609018eb659fa87761942efb04c833bbc8446f
Date: Wed, 28 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769560433
