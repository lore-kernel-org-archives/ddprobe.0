Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4532F3254A2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767594234; cv=none; b=Ul+2lEt8SfeB2fe6nDMNFDEg0n1S5AwtIVlkkCFY4PkO1D1zZAcpVvBh6Bl+Pa8QlddV8ODlcznAHyZLPffaDS0koAvie5tSbovldaNomEFaRvVtJfeq0pUUdb5YWoP4ZDzLw/NcVKjRZvamMqP0KM00IIy0sIvLw3BttQQ9/ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767594234; c=relaxed/simple;
	bh=DrkV7FcdDR2PdDv0i+xW8L1qB/aom+a9cQqgZ1Y2gWg=;
	h=To:Subject:From:Message-Id:Date; b=qiyGHbE3baWZahl5QqT6w7EE6IGApLG2+NQQOQo/1FcI8ZF39POeVKEPIa+GkVJcHwsM3e7HtjhzFAhY6vo/u11rt2XmIxZIneertUVakLpiu/DCgY5LKb17pP2/VQoxnQjFLidgcX5jdtrNXHYk6MEw7vuBpLYhcJkXhKxtbdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZDJ/w6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZDJ/w6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47D4C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767594233;
	bh=DrkV7FcdDR2PdDv0i+xW8L1qB/aom+a9cQqgZ1Y2gWg=;
	h=To:Subject:From:Date:From;
	b=bZDJ/w6AndXHUNHhE7oAW2qqamx319gXLjB4+aRgJhmPhHlIQojYfi4QtaayIu4D+
	 ZaKfECdQO3ncx9p432N32lJ5p9DN1OsaYzeNBavQnTs75a4SaoZHLArDvnzP74fsZY
	 qrG/9iyJ0wxf7aY/d8bjWLPwvSIRI6EwCad9OUQvSH0IhcVxfOieH91BR2zUYMFfZ6
	 JpXQB1zQyAOoDFAM8otfRC+nrwvN9NUq3Uj8iBbhmSmsaV7xOps/JhtsrKok6jxbmL
	 cOmqbBqqVtgL92GpXxFpprXT+qLKOAYll2zTdUOLjzPysdXEXkiwrwGzmLBZZeTAMe
	 o9GkdlkRagFFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A364DC2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759423362.9723.14868162682482411542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0ea54be401caa424ede1b5286838ef751187a79f44ee420b47fe068444afdb
Date: Mon, 05 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767594233
