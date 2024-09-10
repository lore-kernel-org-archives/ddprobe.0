Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353CFBA42
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725947754; cv=none; b=Bk7z/xlxBOzW+Tt/ekLrZta3gTxusQw79Q6hPFaX3KWOoFKIR6kmCAuDrkbe0mqIKEFr6joCkLHwfVuHTnlL/MAEDjM/FLdLCXo7u8P/w23gNgYYSRB7Guh6fQ2D7Gy6BKSO8d+GVduQN9zqrvaiIJfeihQZT05efcDTj/DzCkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725947754; c=relaxed/simple;
	bh=Lui5ruRmC7ThWDsWRxTzlr1x7eeGM87dofHVzNGPbf4=;
	h=To:Subject:From:Message-Id:Date; b=g3wwVpMpQruhB2+SAG7t+CUbEaRd5Nz9Gm9Np3yCqxVsMZvx+1ZxUVigs7aFzNcxoeeycGPub/EMwbit1EESKqGL9sNdJVxrTt9tdf0l6M5js5y9zgpBwSJkcEWoFNTw952kuT95aYUtQysPQCJZ5Cjg+bwBpq2G5pVWqClFmvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tey9tLZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tey9tLZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2E9C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725947753;
	bh=Lui5ruRmC7ThWDsWRxTzlr1x7eeGM87dofHVzNGPbf4=;
	h=To:Subject:From:Date:From;
	b=Tey9tLZSaNE3S6gwf1OzWMu3Y6RoqzpL7fxh4nfesATw6T2ePRUPVkCeG2eY4Yu4p
	 zxAxJIiYIBbawfcGXjG6VSGZ8/6R/qoKs3M5jNV5K33TfcMXLFtqZ6FDgQtlhmHeFc
	 8PEvirVbPELGI3aYiXMklXvlVDmlmx3ddcB47wjDa+45TJF1n8khKwDZEeRxmcx+Do
	 cnpDw/wdSuQcF0TFaVzlQwR70zCtJFbs0k14Lf7itzJgofuEP2COQD96vgf/snsRKw
	 6HpDtb6i1nLe6hOk/TPDRB0uZ1Oup6Zr0p0d4g2h9A7Q3mrlWh2QsuYlQ7LjjOGphz
	 R05P+tt1am+6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E466ECE582
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172594775363.2392.2232860543053662552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b755adc022a150c606ac5027e8d1e2aa785d61909e2a2b161ed4a3ec148cf0
Date: Tue, 10 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725947753
