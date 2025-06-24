Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0E02BFC7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750771794; cv=none; b=IiPoT0rfmVdK5Q1SvuZgYR+QbILfnr6bU/ZcCaE7NL7eVFX0DplIEk7V9WTTWsxD4n9/EVZVt8qzstF26oYGdlrsoYrk9LspZXPn9mfatTre6GYw9JLbvkZ8dNiYG8aRG2ySC1OFEzUn10BR5lPHNAcdUf4pEOZhfQboN4jT1hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750771794; c=relaxed/simple;
	bh=yKLdMORZXtiAdUGUDBuufyI2wuyNbUGiE1c0G5A29mk=;
	h=To:Subject:From:Message-Id:Date; b=gqteOUpfnH4Cd4clDu21skMnSKuTVm9CM4DHnFsKzaLKg2MfI2XLzgpfT2ac4wjgdP2rnx3XFkX+ZhVIG25wEF63XAwdBEcRQ01c/nuYgpQ0OL5V+WvoelTzCeR4eAPHnFzRDuGwfllQXyyos0pOTAjcegGBt/JfOvAEOKJQ2Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnPLCkJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnPLCkJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41F6C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750771793;
	bh=yKLdMORZXtiAdUGUDBuufyI2wuyNbUGiE1c0G5A29mk=;
	h=To:Subject:From:Date:From;
	b=AnPLCkJGDSJVhekJ6TFoXDhuWcMjWVuUPW5ssyeaaeC5/IE18ECJNstLag5nXToe5
	 xeN3KG3uiKRzhw42paZ/NsOFYziXsgzJnV9rhT/RTVueJoYMaI5YnkYgRRJUeQqLD8
	 HEO+3OFln0jVaS4nThhVEQxCVnJCn0Hcx1N87Jqv7FkmTeTA0lXzp5YXvTJajo+K/t
	 u+OpzpJyYkE/yom9ljHtckYW7PvU8/KTuIgYcjv/2m8eOf+XGolGNBp/z1cAHCVils
	 YVpSTYKZeRx6cHNE2X53cPZcgXOaR5wzs52TaH/6JZr8s/Af9JTw9ak/vMgF3DWfKM
	 cqg1SsisGXFzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA8EC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077179357.22466.5665097469731524344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0dee1c770fbc6195573558edcee2cd3e86fdefff5d7adbf75b08a177c3cf4ce
Date: Tue, 24 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750771793
