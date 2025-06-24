Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D80152F88
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750724994; cv=none; b=bHq7RE5U5MEKVQjT7zdan2mUaw+4fKpEhu3AE+7qnTlovo+dJ1ljIC7KMGC+G8r/emUJUDXASQDXsWQhATawtgYL5XaA+7sUYyKsyX82HwTBjdfaKUiCj6u9xnekarPzcLjr75DGoy58zAU+rqV2qq4Sp3F7ewCKwTRKqNub1gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750724994; c=relaxed/simple;
	bh=SrECDWbTrkyM7ZpyXfkMmmXfvYVtBaSyfzHUEA1H9iw=;
	h=To:Subject:From:Message-Id:Date; b=WLtrc2aUQeY90NqVctUtX5EKALLC0wkHb5FNhq/HMlp+rv/EXTtMJDFTZasi6EV6YdAqE6GX325naITwcrYn1IDTriHA7vYZJPET/dTT+hFH0qjLz64QElj2/4qODQBXCGImTWJBn+hu8Q0AtS/YaNbIeIPEWackbqSmUfJ/Obs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m74io9Hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m74io9Hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80EDC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750724993;
	bh=SrECDWbTrkyM7ZpyXfkMmmXfvYVtBaSyfzHUEA1H9iw=;
	h=To:Subject:From:Date:From;
	b=m74io9Hsk5LBrEuH6HvqfDdnTrmj+wPKG2mEic/HAZ7o0Y1hhTxv2Dmq/uHzybd7U
	 V14orCoPUQ8Zs7Uz3M3soBKaXMT/qEMT4Xa3dHHzgxUxZ6tA8ftMOvete9Rk+avlQc
	 mMhoVbAMBUCqPCt5hQEJjgCU3fGE2IKiHGtwgenAo+OtFwzNB2r6ienIxaw+7Hnj/9
	 zizfHU4e2OBpwDmTFPBWTfFxkPc4o45O2iknKjCRvzifm57T1hXiE70y3WJU8auxhX
	 FHggz3XEcSgrmv8zfMS+hwTODqxTWATskDOOyLVJahZKfjdRhwdepObSNPbFxOJrQe
	 I38Dk0Xct53YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D45C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072499357.22909.3346953766485297782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 490c62b614381ae27a5f6620781f10eb597a54afdb8e0efc088b3211712aeb4e
Date: Tue, 24 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750724993
