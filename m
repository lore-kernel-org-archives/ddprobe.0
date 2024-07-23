Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7D613D882
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721738754; cv=none; b=kdf1ZB4Mggk3Ok68F2nnq0/5Ay2oTyb/6R+dTnVBXVxL1hGV8xi6P0TXlzAHkS63yGrR7ggRbgekRD+gK6Qc8i9Nh/Nod/1jEXn6wImCLluvODCn8EtRTDGiEY3Gb8iSQO5RFd9xpglJ8ogj2xdcMsRFGpeKjBtMNCU0FAPU3jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721738754; c=relaxed/simple;
	bh=ieXK1QR2o64A5wgpBxSln8ILUWmg0+FvDUiVRHlpbpA=;
	h=To:Subject:From:Message-Id:Date; b=TlnEmRCPn74g7Esl60AYDZHpsxygdAQOUEdg0hrbHHCbc18uKObTPXwGX+B2N1vZMwYAZPmbz7Ny7s2BXVr8167HHJNO26t7ocpJBTRV2oYd/0iZFR1j38F7ptQJRsHEr3SrE6KR3J5Q66gxyCpCLMqx9YxpYN5ori3bMfbMMqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gtj62sgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gtj62sgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9975C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721738753;
	bh=ieXK1QR2o64A5wgpBxSln8ILUWmg0+FvDUiVRHlpbpA=;
	h=To:Subject:From:Date:From;
	b=Gtj62sgK6wJ8OvOmlarR9BoR2A9czAXU5k/sxKH5bZjfySCyS0aJPTJqp7nx7OZXf
	 9Vgp2o+h0/aLstUaDjaJfimZvV/YDtAUCoCPaBD83zhKcJiw1ACLoMzLbURNIM1ovo
	 R0akUrOa7M1OFkoGz5sKdY7h/NLZq+7Sl7y7lV2fDaDejSwFxeF9qB+zqthHDQ/l5D
	 1zfG+KGP9UprScDsDwUCd6Ormxk8J4TUpxxJb0aPODXlIPi9nXOXjzkjakNQ+GBa3e
	 6HSb5J8ghvvuABOPrLvEtQysCdsQyP+luiFTSvVvB0gcfgKXynaQ9wo9m/7Mp4e6GP
	 hdAwVYOH7Utng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B13C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173875358.11815.17522569247801795806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c834bc95a179832a64b1c9281e6a760f88b0e33602f0d56efa0a3b24148412
Date: Tue, 23 Jul 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721738753
