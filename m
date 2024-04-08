Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B66B6FBF
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712556497; cv=none; b=pmtcvS6jPQ5E3oCBd8oyLTsjgkF+S9mehH0uhOLoQ+s23jIqjYKWxFPgJ3BiARbgbfiHu/yYjHsJXmZ//er6tC3Po+SrNty8SVN6Unx0WPiDAuStRSmQu6dNroW13QREU0VelfZxMLmowBErDjghTYkfzLLlt2t3cuJUUFtyYpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712556497; c=relaxed/simple;
	bh=TUmhTtx05eQndiU5oaheSlYZqN66E28Pdsv6g3nPDsw=;
	h=To:Subject:From:Message-Id:Date; b=dAT4PZVqxM2WTQgwhucgzgJfchKwTzeAlPlwYeSmhDMdNaMZT39k2wAB2GJjV228CKxBMY0xF517D77TDFxFUPpTB23etujiiTQNzd2FhSOHYWEuQARGNN716oF9hOm1Y8CZZENKDH0QHR1jyWaJAaJeKXG+8DLo8mFjOwp4FUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVcmoMkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVcmoMkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 908A3C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712556496;
	bh=TUmhTtx05eQndiU5oaheSlYZqN66E28Pdsv6g3nPDsw=;
	h=To:Subject:From:Date:From;
	b=cVcmoMkqQi8sEs+1jTdPyWh/7crwa9hX3tKuOTqqjrA9DumychLlzIyZl4q3eth0R
	 PbNZxBfMvUJzf88LIyqKWH+z0rs54nCH+Pi2THpvgshtUCfBrkY08sYBpy93runr1x
	 xYSOcUPrAwfqTRp7scBx6QrpeXH1eTVqyLJpd49z3CPsDEZceLCTDSbuOpV0pMA18o
	 yWyesZXAODAaFiT2olkne0+iAmKAbFhotc60LYWMaQhqZBpfaxYJbXFYawPQtXJc8u
	 +n99b4YAIdU86Ai7pc+Xd9hYuuMPwLbdAHl4w8fPoGAOLrUMO2E7IsSETztopq3qUZ
	 Wf+WhSEb6uIKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DB9BCD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171255649650.6519.16781826919902073793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a660926a777e8ee5c43788fbc185bf493bc2924953216382e5fe1754290cb78
Date: Mon, 08 Apr 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712556496
