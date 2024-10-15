Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B3A166F06
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728958554; cv=none; b=rePBmyuQb56LQ4dQSDVVA0Ptt4xB7eXWj2zy5Xz3kZ0VGmUiOXLUJqlX7vUhZMwThLQ7GkBiqjBFuStIQV9ribiNW2CmNfjNSRAdhCoDre9OpZSOmRMxOERPsWiBl9idvNZ6HGSTlcBTC7+cZhSerJQxg1pCLhD3KD8kzxvxfP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728958554; c=relaxed/simple;
	bh=jMRe319FrZca7Pyojkr2w9uA+JmsLmutnt9QRAB/bfE=;
	h=To:Subject:From:Message-Id:Date; b=ew7khwbbjJCfYkty9I4PXxlwOLH87CYLWD9SYmmLOZoH1TQniqIPGHc1IYK8TxEU9fNUjAyuEbl1ywfOwUNIO56t2R4pfpogO2xSoA36tKa6GA/Nm3lRUrUhEV4+gjn5gtJr1X1UzYb/hDV/KSrLgBaqMwnYKPFHVJc2T8TY3sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlZYzgPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlZYzgPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0959C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728958553;
	bh=jMRe319FrZca7Pyojkr2w9uA+JmsLmutnt9QRAB/bfE=;
	h=To:Subject:From:Date:From;
	b=BlZYzgPtLe7/PfdLf6nrRTr3wQHqTgTvfWoChpurEfA5g3Ut83xllk1ELDdY+8SAG
	 sNyitej9LkkUoDDVe9kBJoJaKmr66iGHMneToK+hQ4RaloqKc73drdTxihj55Slliv
	 0W/WvsnyQlETzAnjalTHVy1Qjf1ScBAKSG+GUw6P8TlMsAACGD5BdCMR4g1in4t5Zm
	 nLfdXssoXSEAgsFLMB/GqKIzG76gwnvUfj7w/HmbWidfEv+GjL3RGII3fQIgrb2q1v
	 uraHbmWsZcH03n2NlsmnaugciV1Z7opRjDVH0KH8cdUjr/+4D9Zk3UURl04PixbibU
	 5AuDwTKzPx05A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163ACFC501
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895855358.2503.6036838275619848365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50fbc659db322406960dda25c313ccb82a15b603d1e7d2cff73d34e70b07d15
Date: Tue, 15 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728958553
