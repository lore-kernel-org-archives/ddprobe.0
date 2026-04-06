Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C80226CFE
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775443534; cv=none; b=YtLdD9ZL5Mdfmn+GfqUiqrjGx2MyAwvv24VAFCPGN55cXAnLcNcYkA6HsRF69xFS5UBJyKA6C9DosKs0066fZ045q+coHssPvt2lfsujgglTSqSmQy9qsq87YhqHqvo9Q8demr6/5sH4Wh0YKsGVTDGef6h7/A701CgezwnPpCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775443534; c=relaxed/simple;
	bh=L9MTMXBoeOkE0pkyQhiUTDnZn5iqS54A6oGaAB1jBI4=;
	h=To:Subject:From:Message-Id:Date; b=LE6eTtLsZQ9MVvwy476w0znbrcICBzBByfjM4ZozXprbE2HeXWBfC1m/05iE1mUaDQWA0M/fGziHU4WJqKRBGJqQXiFRKUP2UiVsiVkf2/G88SvLAwYBHCDhKPjN8nWm2KxakXGPyVJ7V7fOwIDZOtDl5nySspjvih6kVyi2kas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4hQ1C3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4hQ1C3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E0EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775443533;
	bh=L9MTMXBoeOkE0pkyQhiUTDnZn5iqS54A6oGaAB1jBI4=;
	h=To:Subject:From:Date:From;
	b=T4hQ1C3+yAIGwQP4+Hk9AiTbSRQ69471vrMF14JmD/fs1Frd88ltpYQjjXiRuIIVt
	 CMb8/cj1JlHR+Rb4WrsdTeDq4riFafO41AqgJ7+Mg0V1jFHT3HmwEIcKAbqbFQhhvr
	 Iqdjxr6RB7mcHRP75mk26y2kNIN/A9skxWFGT1fTEpmqduEhGLyYAGXvjVbeRdbESz
	 wJgECGAjJQ8ZqwYus0dA6KBLS9I4oCjH3fqMrtIbngqLwWeP1rtlSLwnSXFVzLalpf
	 5rn6vb4xBrp2i27uTbMfbylsx2BZOSzcHMAcoW7LjjDGTKiNbxHr0GVZclzw0tidxz
	 B/dJ2xxkR9adA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CAFE9D82E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544353369.3897.18342243903109247341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0fcbd4c9f8d89549f43fb7cfb90b0b66246eeedbbdaa4e2ceec35b749178a61
Date: Mon, 06 Apr 2026 02:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775443533
