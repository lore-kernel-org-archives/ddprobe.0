Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6E619E7F7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758201594; cv=none; b=skNiutdMJ/pwvPDrDad97VMpjIqjDcPpfikGOLBSKzgxeWfFxrwzjNd6fQNjSWFtlXJHt07IBBPTniIxbQKBStRADr63X5hTvrI6EtAWkmG/4OzjG5z11NERbfiZmPvRG3EaKhijEDQI/qXczIF8xbe72HgaNfJaEh6TGmnlj7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758201594; c=relaxed/simple;
	bh=i3/KQbsAuDq9NBR2QXe/Nhr2AVQOKGrBiZFAikjL/G8=;
	h=To:Subject:From:Message-Id:Date; b=QbISi2vWipyl51onP96k+oIflgSVyMfu2MmAOBn83cF8ZJS+sYxh+amOT5VSP+/UL21aOyukyv28Ah2Z7M1Bf5wg0aA1q5Oz/wY1Zo4HkfHFcYjCAPkwsW58PoWEbm65ATQ3PvnY+aYe87jdXtV/Y4PtGO9nFoXIzJar496TgKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNOm6R9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNOm6R9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A38C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758201593;
	bh=i3/KQbsAuDq9NBR2QXe/Nhr2AVQOKGrBiZFAikjL/G8=;
	h=To:Subject:From:Date:From;
	b=hNOm6R9d1mT+ssATaOYNDikrgqTmmaDN6qyfJWWFxCw6NOLmwJrt92IR2cMqWZEVn
	 Eo9FPb+3FQdhEd7x0kKPoxRxPiEcj5cXSW6xnOQ99liOGN3P8bpp5yHY3DovDDvmOw
	 I7+uVaUPfp2Zz9mTWrxXBOoQNO51S1DODr1lv6LPr7xcMog6WdEsHcPaCcnii7oUQl
	 pot1Z/K0dG4kH58T6sRhWMqwxOPs88GKQZRTzhlMa3XxvbN5LMlQnSQRn6zM//XFZx
	 v9vzG9uJj0Ce5qrqHaVbCTtTCrYfKxG3I8c4KaKpv/llO2WQ9SHsypDisY6AcohSPP
	 qGihIYI4PVCOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC4CAC5A0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820159358.21675.16774556827205874230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3cc48e19046f79e2f085d4992c79891f24f3c1a4b64cd572a29b16478fe0b9a
Date: Thu, 18 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758201593
