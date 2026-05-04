Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AD82BFC7B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777909054; cv=none; b=lNNuyak+IJQ7kQ1+Zbm9nWrqUhtJgW2TNDjjNhMRPX8J0JvQWJTi9yuMfvUcntNLrzG9XDMfRrtBdI3TxeXGD3PXSdTbEn5klYxAnMRjZWQjWp9cAtkWEGi0UmGKAq7/sP9Y5Hr6CKlJ9VYWsX87L4BQLqZrGgG1wGcfc/cHsgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777909054; c=relaxed/simple;
	bh=CMuVorRgxhvByxnwzkbaCvH0HH37dmFoWIKS57PmUIA=;
	h=To:Subject:From:Message-Id:Date; b=CxMnajtar2CsnYYxsiV4y6qsMd4+Xjp9KDlZSZM5JGewJIpvEoUhkyta6yiCE+BeKDpUwsqohyj92WNx8v4/+dTHq7UQYT/Sr/bdcAtcjmadBj07jS0P5XusGD/ZOqozrhR2oAElvX8aLvBqCtHEGbrBGCFhoNn+t5ZlG8jtAGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fb0H1Kit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fb0H1Kit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD4DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777909053;
	bh=CMuVorRgxhvByxnwzkbaCvH0HH37dmFoWIKS57PmUIA=;
	h=To:Subject:From:Date:From;
	b=Fb0H1KitJlNFIpPCbTd3+VGvmJvCR/y5/ASNu5cTkzNaCmML06ExtFC20yyBUgY1x
	 Siolk/1af/qUZWcGyeDbSrxGa1KIw9mp/+8y1yHGKkD7v4Vgbmw6W6DBquSo8IlbQr
	 PtGm89hrkyIzq5deAGczIhX5XRTYxkEGAeeC//jG+EF9NXcXYINIyz/9J9098pHQfo
	 ZZ8nDhT2JlrhnI9vvr3D20oWOxcCW1DJMvJ5l4Oapws92orZsDB+8XU3lFDeu0TXMa
	 7DIk/u/WkPpPGyC6dzKkcPezsC6tX0sPLbPd9d9x1R9atfckNoE76p7MK35S48KZrt
	 3MHnvpGTHfGrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B000ECD3430
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790905368.11725.11891161137740717982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba4150d8a91c99e85c1cafbfcb393e6cb05c04c5256ee477d25c0da7f04dda2
Date: Mon, 04 May 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777909053
