Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303D31474D3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732968954; cv=none; b=SH+w0MYSJfHMtKpeqylmOKEAbBWA7H56lbYEtEYNVTn5mP4CrU4A+9e+d5SKtPXQc9u1ovui0uKfoE7MjRqsqtrydOFY/GzWyr0h/+zxGwv9YJ9pAjT11mLd2UBRe9bamct7Y7cIdG7V5cdxeJKxlwyIuec/RoZxdOLkkEqSneA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732968954; c=relaxed/simple;
	bh=rkNlNsTdXYLdgIkKmGwsFIND20MKux65NYcESZTVlUI=;
	h=To:Subject:From:Message-Id:Date; b=h36+UwmvJ72snBettfH+mdhNjCfsjLP61eAABPz/1Ir2sAo69nghSQEUu06BKegWup2Id6lVlPrHh/728nXwM5tOJQkCVXkoih39q9vhlPolGfwT2rW0x09OPHSDNSWBR8NRVxCUx+wSxuaHfpci0oJZHupvxj82Wx5gRFpUO+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0+mxBHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0+mxBHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B911AC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732968953;
	bh=rkNlNsTdXYLdgIkKmGwsFIND20MKux65NYcESZTVlUI=;
	h=To:Subject:From:Date:From;
	b=l0+mxBHwKnZ+BgiepmFicIdN5R/0OgCEmf+xOA6zrPBVVt3i9zWujLYfKjMYm2xHw
	 eRNfXbF02frB0j2UQKTxfpZqPAbcjGTBablXwfLzADE4Z4pb6gpXlasEvi8cPMzSRz
	 KU2CEqOLtccKKa4f0mpNWVwbLLw9u9DIRxK4VjMrECaizb8fQWsifBt2rTWyJVGNpl
	 6OC2hABc5tn6DYR2od+8kVvvEmkB0xnMawL4gRhxMYTnXbjA3gKwl7fBzFqXjAFzbC
	 q5TQqwddS7SJlwkvtup4AQC1bUWMa+ymjXAgCfQ4CpqgqAIRjcPkZhYDsllszbPoVY
	 YLX223IqSEUtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DBBD73600
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296895364.11518.1178780442492314426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26aa0199ce08b0bdebc240c1b139cb792c56c0d7b37a3ab2f6f1d222af7f2ffb
Date: Sat, 30 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732968953
