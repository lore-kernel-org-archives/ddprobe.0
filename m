Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E5036A37E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780923874; cv=none; b=r6VoG/NlL7g6oUIcDM2ThMmTCGx27ER+VP56VuUPDaFZbcFPkaPRbE+P3SE1dkh9A7osBPLCPHWFKK8+Y6WEWrIlbtF4BqZD13/pPlI1ECE8ckMFi2c2sLMr3Qxu4FKekikE3mBNjfH8D17tOob6ul+B2ZGVvqtxjXkjwKg84Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780923874; c=relaxed/simple;
	bh=qjPZP23ngfZClobrJrZ5ExZfOxGQBglEX//RX07gcKA=;
	h=To:Subject:From:Message-Id:Date; b=L+K68ecrUdpmScV5Aak6mZNXg5t609FL+KX1eWDxqO2c8xF2gMoc7zFDg+hJvTJFoqd4BCFFBCqVf4TEkVqPm84lUadMDVnKV+SQgv7j1NGRmLBAwLk7oDsPo2blL2Wln1h5to1wQbA2ReL+smf6Ygu5B8baEBeUFqnen12hqTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ug/wCLaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ug/wCLaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE35C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780923873;
	bh=qjPZP23ngfZClobrJrZ5ExZfOxGQBglEX//RX07gcKA=;
	h=To:Subject:From:Date:From;
	b=Ug/wCLaV52IZxKNZQii0xXenV8O7vQKh64CaP1JbsKgE0genMzvqLq7nrq9EYjPFb
	 asUizHhv1Bqev8P19fD+Qi73Tl9hUYfoTUFVmo7EAx22ykdhdSDeZzmdsGQs0o+1zH
	 F95adst39ZjPT2m/nGNKO90qrh1AXYFaqSyh/gY2i6C/fo30wwo7WZDmixw1PI65NE
	 QNapycWXNNlHu4cPWSqF4mvJbtA8oXWyqXTqZzHBDTGPRQtO9i4emmsZz39sSRwwH+
	 N/X2gwJMNqSvMWlTsVreai9jYpRz7n3DBIZlZjwvj/6NcqEpQlwCXk0rhg3a9u0bFO
	 GY8p0+1v9VHHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA452CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092387368.6308.2755947961422663877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbdf71d4174ae2df0fb92b176d418d711f7663be655b81b953d17b7ca40588c0
Date: Mon, 08 Jun 2026 13:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780923873
