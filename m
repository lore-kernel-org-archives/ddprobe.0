Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADDB3164A9
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780110214; cv=none; b=YcB6/1P8A6Kj74N3DTltPg1H+MEFENPQGEbdS+wQvqCKxunZyIDE8oGectCh6k5AC5CbbT0toppctE7LVDfBz69+jeWSgTJV8r0lpw4q4CR0F3GNLWdv+8UHGOfR4Yr+3cyfc3B2ozM8TcZGS8QdodktwOc/JBEI/bNtUonr3+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780110214; c=relaxed/simple;
	bh=j2MM3Swqfh0d3vJS3O+xfZ0t2bhPdcNoMgjeBrdT0RQ=;
	h=To:Subject:From:Message-Id:Date; b=n0VlEz1q3idlrky9TtHAJy+TJXSVwm1YDmocPT+8BNhiAb8TQ93wcwdQZ6mBrRl7WALHR44pnC5QSEdXsxC8IlZaig2WJcQEtl/FcSUCsKUPyRbiSOO1hZwzOTfXs8/vTJGW6N4fthU88CtmO4YGEJaR/mICCpP4Z+mY2g/6WWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1MMfoEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1MMfoEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C742FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780110213;
	bh=j2MM3Swqfh0d3vJS3O+xfZ0t2bhPdcNoMgjeBrdT0RQ=;
	h=To:Subject:From:Date:From;
	b=u1MMfoErq4kY1hSPE4QjA+8/I7zR/AxiXl5J5D0eOV9/XmO+OxrElctng51+RM7NN
	 hIexnBznr7ML7jsa0wEaWAlxzOTIaQwYhBUIhOAC1RAGrYqSgpPO7yVCfENtl6/Rpy
	 si0tfyG0+fy4NJRpHDiGAQfbtlaUNP+XYb7+ZVNI7lbfFDLRHb1lb6DQyjfeFpdvm/
	 kQgovxN8PO50DwEb1vDj4hhFT70IhG0UDt+zFqBQpcWFFcZ4BAEDZRYnhUJiLs1vrA
	 D7BlM3JpQ8VTUwkdsguKy/SBDt75bmimrWQRAuSzzD22vCfN1yHCrHbg3kCXbYiqtD
	 NyOOLgvQ/v9KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC92CCD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011021369.29244.6530726415103407258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97add6c04c24f1fd426f66038af99974795b91a43eb735fb5e546101598b00d1
Date: Sat, 30 May 2026 03:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780110213
