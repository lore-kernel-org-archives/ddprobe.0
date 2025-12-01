Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B29679CF
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764628374; cv=none; b=EueUOzxa+1QT/EccQZgLyvnnW9MiQ5L0VHa4lzwKWTSS/M9Euu2ezqzK/JIhm/aGuAN1DBTyRlUidYctXda2fYNnYKLeyGfTdTGj1ERINOVop5vvMuxki/+aCzlu3riDa0mkEcxNQ5ZnNPiVsvfZ/Cwrs3DBn+2ej7xj59xLsa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764628374; c=relaxed/simple;
	bh=uim/qJ9iVEfjxta+uy7TErIhL+UgnG2qbn8kj6AyPRg=;
	h=To:Subject:From:Message-Id:Date; b=maJuEJ7kL8/CBkAVDtPGmixaP/L82k/t0+dQNDiEIo8VH4rBWWhbg0b/KrLD286ba5DGLDmthU62BROiVlAPzVyQSnfAarZwRk5VyP8lk+XZfrhG77daJOO+76ZPCTpuSWRlmVmQCtdwtcGCUomrgN0VlsNv9mvtGaudmipHk74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mE3vMPRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mE3vMPRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C7EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764628373;
	bh=uim/qJ9iVEfjxta+uy7TErIhL+UgnG2qbn8kj6AyPRg=;
	h=To:Subject:From:Date:From;
	b=mE3vMPRBo+SBdmLJsPLHk4m2wAjkUKTxSDXdIWpJAS6q4Dvu68lOf6ji/PvavB+II
	 fC0LhO3dtMRgdRwjqtuJXnJKfJzwCgFs8IGzRfDtNwerUpnzpZSum06C90wWrkBMiu
	 FPTcPgoo2kJcfqYAacDmb0t9WVdtEWxt2AT+04b/1M6pnvE7k5mEkubC5Q3J8Qf2Hu
	 dLLjMgBHUgThjls3kV6pZJd+DnL5a4iGIh6ebLODsur6sD2icLA5yD43VaECrujmoE
	 KjIKQW1Wy8BF8jYDEyWeJaCHJiDrmbuPN4nLgalMqw7UnfMBlPh1LkuiO6Dsdb8lmr
	 +ZF5nHYxOusRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E84D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462837359.6942.9444312978546934970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e220160029b93db389f9585a4100258fa0821ae95153b0532403c27826d9fb
Date: Mon, 01 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764628373
