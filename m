Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3465E256C6D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765464174; cv=none; b=lt01of1HIcyzLI15oWH7J3CYfBqL+LU4DN9WXfjeqQDpwv2cxo5x1ak/3U8mQ7wUfEwJbCPcqeMRpX2n+eaZI9tMsm2yUXMbddBK9tKOrPu7rjSLIxQIsUtkNEvC3eaHpt4ewM1W26Murs494UrOyHOp5QHpV9BeW4dWr9rBn+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765464174; c=relaxed/simple;
	bh=zjWPzxPoqpH37r7HjSoaTWCL/iXmIIws6q2EgCA7Rf0=;
	h=To:Subject:From:Message-Id:Date; b=Jswh5UNfPhodGIJ/0Hgl1hiAWuKn7Agwuy7gCgjKNlhmmrAQQ2ICoG7mIBdUNFziFnZLZyZ1hNRP6r1Jisc00AnzY3StUcsXWjXuPdy6y6H2VJ1mxFKQYHaSvqOcKTeEXfOQFQEqtbH8GkMdWMAJ84a4VP7/cVMTCbKz329A04I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsF18Qlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsF18Qlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25D7C113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765464173;
	bh=zjWPzxPoqpH37r7HjSoaTWCL/iXmIIws6q2EgCA7Rf0=;
	h=To:Subject:From:Date:From;
	b=WsF18QlgUq6VTWELF2XYlkr9Zg0U5acXoUrSdpcH2FjvyAq6W72/Q3x2o8os/oHDg
	 GmuQUADUS1a0BwoHlwefr6gGR/OFUTPxrQIabDbE0ud6GT6CgVuMnWBD8il1/Lxxuo
	 9wzeZFjNZBLMvpLnfUwdX+gJDn0jyb90Ka1eUhgoAoTSUhNcEahYEiucS+bnktKKTr
	 Rd1BFtxj4bMzq4klGnO3mAypaK1sfQDlrCTyRMO3vq+x+q/mn5p46EWpdcH2Psr3r0
	 5Wk7KeXlHfaosnSHEwGe0/Nx6aG5TsxHsN7uAvxWTqoU6zWFPxUDeDVDQIRjJ12ALN
	 sVcHzRZvlItAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F81AD41D4C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546417363.9221.7469482638925498089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383eb302ecb41fd30b02a0b524538441d429dbe2bf84eb5e8693efbc29c1c54e
Date: Thu, 11 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765464173
