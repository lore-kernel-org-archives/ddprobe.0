Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D142147C60
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 17:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718040503; cv=none; b=kn/kLrLOfDKGv7PiIX/9J54C6dJAh52jS/S/YmqVwcIxYzDVn6aIK324D+VG21xb4mbKv+mrd7R4xpPQlKs0rDidvkSf/UPItxy3LHFYp8frBipIZUkvpqQec8Z856CRjiqKvhQNQQiA1xxSJTw47aGBjT2Habmbd4/GlMqTN7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718040503; c=relaxed/simple;
	bh=Sex0aYyg0bHyWa+ARxhEnynG357z4hdMlhM2OacXh90=;
	h=To:Subject:From:Message-Id:Date; b=Sy9Zz81lH1B/VBL01R62DDe5MsuqpZEGVeRbivvus8TPo4uimDqW3y1ZEUQrRS0AG76kY6sUiTjUY5gTDBcid7ShBKQSF5nSK6BTKLt22a5Ebh19Rrkr1vGzGLKRA4JeNLHwfg6zrPCoU9fShD3+jzsjQRbjmpRfFnuhkVcqZiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaqLbDCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaqLbDCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC1FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 17:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718040502;
	bh=Sex0aYyg0bHyWa+ARxhEnynG357z4hdMlhM2OacXh90=;
	h=To:Subject:From:Date:From;
	b=IaqLbDCV+OUnxeBNLDeLqw5fmOYOdKoguEFWGcS42l5tBL87ib2Z7T4jmpgd6z3zv
	 owvJPBs4crpmmqkITW+7I8TP0PIS6wIkkT30h/Cw04qE4ZxwUWl0P5T+QTce0FsRGn
	 9P6KwiGxEmWD48DNwcrsyK2jIrdfQdchBGfbBBBTSQ4HEtyS4LnKARKXO744gIUyEg
	 Xm8vm1JLaLluxo4nwlb2XcnDC3Kp8r0Hc5VBa6p6Mu5Fwh/a2wZRGDBB28u6y8YcTN
	 sEbjxRZkShy1FRAsvKn6B6phzhoOX3QgRXz0pzbIC0k6ELQL5c1ijmz4oiBe85ArHZ
	 yvgPNpyLjNIOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC08EC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 17:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804050276.18384.11874033934551426353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc6a65c387ad3dadfe3f1482eca35df9c35579e4a70892e7f26d05f29689d8f
Date: Mon, 10 Jun 2024 17:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718040502
