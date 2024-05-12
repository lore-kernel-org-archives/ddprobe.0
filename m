Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9911CD2A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715509943; cv=none; b=jr8S28qs5ay55pTJb1IXXGE1dGLpe/FjWItz0OFVR+UtpwDF2tzP547vIUoAD+aqritY21hW7xYJ0ofHNTmvPv4CYqX3R3TrxP1Gu31dIyFk8I2S3glN6Svgy+AbjJghgrhKTqfG0EanlXBDEujwSLP3NZxcjFl5cmcR8LQ6uOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715509943; c=relaxed/simple;
	bh=0RLZTh6ZplsjB5cDGzGEMyA7WVKOskxslQr2Mujip5U=;
	h=To:Subject:From:Message-Id:Date; b=jazee0R8EPPxm9+W3PsdmsyMV6pS7CtH8/E+ss5sbAB2R1QNXEzy9dMcXp4usbKOwQYvX55kiMmMnfTKzT/EHlEPPJX/xE/wOuDeYiKa1k06rJ3nv7NNmvOO/PAxOxJznbkWbQqpq/ikCXDBHBtS8dpTPd78WcWC/gbGAxg8MrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6gWOvlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6gWOvlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E71CAC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715509942;
	bh=0RLZTh6ZplsjB5cDGzGEMyA7WVKOskxslQr2Mujip5U=;
	h=To:Subject:From:Date:From;
	b=h6gWOvlUDWI/VJfdevL1UIukAkxSTemRC37hqu7ApvqQrDPGxqDt3H4JEqG8bC/n6
	 jfc8cgaG/XpWNaPMVJNSRrkPQlaECGbd5wTGTvDhw0RjF4/7Cl8P/CmxL/hMI8qwmM
	 ibhgnZYaTdHSuSjPwiO6RiSyzolKf0FPks2Ez7HpFBlugy1LXW2CdJsuaHdt4Ij6kf
	 n4ugaEuv29lObUcpQxSkRTvOMfKUry+aIO8cCG8nl7O4b5GxDxpNTEIikZAeMDez1I
	 WY0BLafdQ5n8pT44rWg8LBojvkc70GuiN+VCNkAzTptrWSytSMDc6b4JpzMgXMKycx
	 8qyE1wDA7l2NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4A0CC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171550994283.21229.17135459496463478746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8699ea3f49fbdd5119c881defee8e86081c8964301b1e15117f5213ffd5fa3
Date: Sun, 12 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715509942
