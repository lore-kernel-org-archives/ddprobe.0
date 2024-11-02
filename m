Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FE115699D
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730576754; cv=none; b=Xli7Gr5atyxBLa37D2Mf72DgAcLgXm5kyYSROjs1zzY+IzXXAdkfhUVgs+zURXLAHiPppoh1SttW4mqHkDtdDQvHDg8Zdc+cIECPumc3j4+DEvGpNHGiokLlfuq8Ibmo2xYDiBTNUTWnL09FRKOxQd1Qqoaq5s8fyiIOxHPhTCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730576754; c=relaxed/simple;
	bh=cHVt8mF+XwuuWsrQzOsxoRHFpgXvhg7kfZeB3T61Pxg=;
	h=To:Subject:From:Message-Id:Date; b=D2syflO/op5OeERtFXCGOo1/o7jbzaMt0p8KOTXwFK2BhbH0rCPa0c4CaXl0aEDMLE92hhLsRxto/LHAPXB22fhCfQqe6NzO43vCT+rzSeY9m5oiIadW54CoWG5qPnNNhby5f2N29l1G1d2pvSL2hqmC5g6d5xkyrpGdwMrhnsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vymf/cMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vymf/cMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0327C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730576753;
	bh=cHVt8mF+XwuuWsrQzOsxoRHFpgXvhg7kfZeB3T61Pxg=;
	h=To:Subject:From:Date:From;
	b=Vymf/cMtEhO9uN5veNserVdNsJPvBIV9IoTyR33so9H4Q/h9EkDwCMaNKNcOElG4/
	 HmqDtChxemTm1/pXpKI0aqJEwXqCYDrXtKZ0qVIrmp38aLkSxNJLXUMlEJ4viSk0HY
	 mIBEagnOWdmZB4jau/f7x4h2WM1trsQWFIh/1IVm2zL2jNDmeI4MpUZ2R0VoJjNfUL
	 ifiRxId6ofan+JZsBI++fzVFyf+UcNOto0d9qe6Sv533oiuoLrixjjFUiU/TSX0Zom
	 UYmcb+x9r4SvvWJ0vVfCGvC1eMQwO6rbwC3i+G89OHQXzbJDLYAEwEWf9mp2VyUAQg
	 EhmVjHX4NPFrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A949E677E8
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173057675359.5737.14604586281436806704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54546355ba01f0ac5236f825fbd04fcef300bc8781a2a24761057abfb82bd877
Date: Sat, 02 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730576753
