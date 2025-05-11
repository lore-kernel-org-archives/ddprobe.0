Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5018E645
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746976794; cv=none; b=K0FwQTKYcBQfU1QKV75UITwDfhlXOvOlRki2rSSd2A8hO13W1+Regr62/F82J/CiLgIGJjss9gNO4Vc20l3w16YUDDW9BrAhbeS5mWndw6bJf15l+xu9Nl+ls/c4s9kFW34wSELTzAjjO8Lhq2zntLkQG4eBy65WWzf5Sq14hI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746976794; c=relaxed/simple;
	bh=PiID9iD5Zz7UcQduJrbQRUMkraIcK95RdV1+H1xk9Rw=;
	h=To:Subject:From:Message-Id:Date; b=BmBQxMZnxysTboaTmlM6EXZa4PdcxHq3eZE99WgbONRS2uyjKFj49MooIbuTJ49p+nIIo+PLirUrwm4cJMD5qpFuRfW1aycCDDQjN60dkP9Q3R2QddPW0Ywia5imoBG06aWyiIExgi4jj13SEC99Twn9Ih5wxPiE+rsxH2FprG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U173Nj4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U173Nj4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA04AC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746976793;
	bh=PiID9iD5Zz7UcQduJrbQRUMkraIcK95RdV1+H1xk9Rw=;
	h=To:Subject:From:Date:From;
	b=U173Nj4FY+3mn0kSAvFibRnFak4oyshmwK4zN274bukV455pWtOsMfNA/B5eKVPk5
	 gbeww5GouS9ezYZsSGLdNGErWRLBukqNDQzF5Z87j2MGOFwtguSLpwCXvmHUQ/q2SW
	 GO1o+CPzLltM1B2i2NHGSs5i6SlDtJMK9IIdKSH6EYDwNtcQNcuSjIbfqTAdT+1pCa
	 yK/1ppy7YzpbK9VLBLD/JQB0W89fpqlE8vVYHp6zRnUKLcfPAbbKA2gwlWMLk8QjlJ
	 bLbwRZ5pWCDEMCe6CxSD1tcNG6mbSkwxQjGsstNK20P8ULqGF4zJ25zoJFd9E7QRT7
	 GVO5AyOcrm5Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EA1C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697679358.11230.14962545293337557975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f637d3573444b5fa60bedf884762291315ea06da655300e4f906bc92e232cd0
Date: Sun, 11 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746976793
