Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F146A2D5935
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774539894; cv=none; b=PGwOwyNj30QIzJJAdm8OaEyZUj1arNAUe56EofVL/wjVyX01Bz9Tg5daSV3Z7eDCdG1NGueS41pnOp23AIjaD92CXOoTI3ndD/425/zEIKvH7c3BStuNzqhNgNwGo4cbYKXXmbeg+i0dtIY3nhcKv++JvKtYBPmouUhAGHqBETM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774539894; c=relaxed/simple;
	bh=ea93j9AgtFNqf22TEMeS3utDA9vqMYwDpG0ZYEvLoEA=;
	h=To:Subject:From:Message-Id:Date; b=J0esYgjSLk+VLTSreoMNRSfSLq7KZDgF2BlWvduC9J+EP4Yx3k2EMsLl8sVA1uRlNzrWVoZBvoAYBeHEGDns//eE3k5P0vIGaiwDlfFa7/BYciKqrrI8H7aWI/fNSrVXhHByx//Z4ka4fuXlhjP8iZ0mUNwozcQuHZyML/jEh+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHK8ckcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHK8ckcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D20C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774539893;
	bh=ea93j9AgtFNqf22TEMeS3utDA9vqMYwDpG0ZYEvLoEA=;
	h=To:Subject:From:Date:From;
	b=iHK8ckcwxmK8zWbwqyKW7A+sg3G/72TPCcBvC6otS294abHDr0i2CPIXofABbEIF3
	 K0blDJcCfMsRPFYGtOhVt8da/Tv7l3oA0YIo5p10182Yrxj9NsZ86FH3DlxYc8+wM5
	 V392swFluOjlrT7FdeIzREKf3Th2hpVCXbIPgrthsgw+eqpJlNwNJ3KuMbRRFIJpB/
	 BBHt8NAawVmRcpYr9mDi7os7jdpzNiF7gqdCKR6QoLab6TIedLtqmw+9pmcUP/W33M
	 CkNlopx1BkNXsgPGhqLqdf02KqlH7j9UTd44faYKR0vF3UGOVbB8qGWI1Fc830JRCY
	 /+wL1NK5oSfug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9653810A88E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453989360.20391.9863825633084694668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40676395def87f87fe4635a132c85c0ede4bb82cdf1cdd0a13ba7650403b288f
Date: Thu, 26 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774539893
