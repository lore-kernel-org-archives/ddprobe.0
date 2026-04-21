Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82543D5663
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776783453; cv=none; b=AUyVbwx6AG8JPoYwSrKvxQ3CqCWD899z6JzZM7Wr7vCG+vRuzYOiJZ9tCVe2CcHbkTU7cuskDyixxLUk+vokTGOq4S7r7temtAF5ElOhIpGf/GkxDfr1uzAF7l21/C9gnQbaxe/jS4KOuhKNF24a1wJUEfyBHEXotiwkCkygmog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776783453; c=relaxed/simple;
	bh=ry1hvMIZAeQ3+12i7uLPlLNlo3xy63DPNSnsWq2ntG4=;
	h=To:Subject:From:Message-Id:Date; b=WBDrCtiBTOKXSUoDtrMYESrx03YI2MjcUw7yfYpYW6mYW0c/AHoinDI3I18rXBRk/1TFs8B43gKaNJbYfGP84DsSZAC84cNzmrq8cyfWYynpqSL0PL0xZbe2MwoGf8DCATTUtAy96Dky4BPciN3n1xrz+t55dmqwZwpa79aURXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCwBF1az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCwBF1az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9914C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776783453;
	bh=ry1hvMIZAeQ3+12i7uLPlLNlo3xy63DPNSnsWq2ntG4=;
	h=To:Subject:From:Date:From;
	b=bCwBF1azuNKClCXSWb393KoJxXKEMmvTbSDZF8sJCxS/uSuCiAY8HsM9NruEO051V
	 WPrVBhCQRq65sexy/bKs6CIpYsnBpa8pzFF9LiomuG6Lnj3eJQc0hU3Rqj1b1EYkb9
	 66f2W54ttgbW+pskjUxh1BsR9So+UUv97OzyALbnxiJvqgHwfXekLqzZIHPFWYeC60
	 8G+Dl2PBI9bMaWJ3Wl6p40Ad2j+RBv4me1KgaFL6215Jyt2OTy4CFsjJ8sxc6opXPP
	 S2ZxDuePk1SEJdaNJwX++GmifuiU03BZQVbZQNRqz6d1xpmlhdSOx2IeRdryuexS4J
	 m3RiIk42gEKRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB02BF8FA8E
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678345369.5630.1752785166738172579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0908f24f369ccf24e22e099d900c1c487df7c9f4eab523fc77bf80440c9d06db
Date: Tue, 21 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776783453
