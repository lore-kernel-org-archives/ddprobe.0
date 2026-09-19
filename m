Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5502A3A874B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789804234; cv=none; b=WsVD7UdmiipmbtKoOAJShWpIHlJIJ5f/n9uCp44crWgX7V6Wd4RhzaA/skHNt02Sk5OdLJENPRmCxz9cM1CJhpBM9vB5kg2GB5HfZgi2qlXCJHdKH8j1uEp/pNMy4+cN4p0GB+Fx8s7z3okvflbed9+0paVBSdeXF4nKwEzsr4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789804234; c=relaxed/simple;
	bh=OL1HHccbIxn4ej7up1M/CTerJf2fGfg/JLloN6AaMHE=;
	h=To:Subject:From:Message-Id:Date; b=ERUxkNzz/oV2nc/jx+OjawA7uDLmrEXPngNcNlv92odxrC5OvZ4mWObpo41VTZyjbJOPRWgONNl82BGjzBe9Gke5z3pOHqQtXSFa9RfBrYSdq0oHyFkpFnIbMyPGdoG2coJ55uLF0vnpeVmVPfUo9EVb58sDISeyDAhO6OHEiaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAwKchl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAwKchl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6EA6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789804233;
	bh=OL1HHccbIxn4ej7up1M/CTerJf2fGfg/JLloN6AaMHE=;
	h=To:Subject:From:Date:From;
	b=iAwKchl+SB0yU4hgG9qIXdBC8kfii+Q7Tmotmct9MxtMLbWwqGknJCU+1BMU4yVCS
	 Yd1vUxKz4ajaghpceKiJWWejiOX0af4X5SxovsUBdy2Rr7bmIUSiyboou2xrq0ZOvV
	 NR//M/uXhEwFLq0wht9S9iuC9/+Ssv3I9qFNLcZu6NLjRiC9CR0M5QB7dnzlyvKgrf
	 YykCfcAGynm9JIfnAkOfFwENTd98TCtC0Jwe2EWEGh/HQ40eQeDKLpTC7eG7osvxDD
	 v9yvmhgHN9luZxDcLZbQqOo/U9CCPaZR/UORmXprgZ1nuX63BgKBktILQnpQopFRd1
	 1m5WLym/FrSFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC58EC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980423368.28201.8174043818743789099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f356b5415c85a55fdd0c4fc69eb68d027f6b4b28ee79400a18e509bd7afd35fd
Date: Sat, 19 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789804233
