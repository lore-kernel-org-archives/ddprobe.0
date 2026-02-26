Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C62C2517AC
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772084094; cv=none; b=IYmr7hRA7MDGoePMws8pTzIyugHZeExiREfXNbUM465k4J/NEHqIS+AsnHipraCoBP8uzrgfBNrRPUMCje7ivM11fHV3KwKLXLLQIJoFCqu3+pUSpnxyu1f1bWiomohwKrRpztxzWS/jBNfG64YfvP3RXz+oogm+upuGbJvVwCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772084094; c=relaxed/simple;
	bh=Nb1ZpJM2IyXchDSesfrFTywshaWn88/c/6dU3UGZts4=;
	h=To:Subject:From:Message-Id:Date; b=rCjj1CteDPl5CeVoVxlutkSkPTLbs3brlJQk8OPWLlNOuVmAB7ZJsWp5yyU3hLivzx+mIwt38RFjtbrcUESCxHSIQNsEsH8sisTmtQD2v97n8TtZRLn10mQesPcp+9loy8WLjUOup8Qe5k6pwIURaIT3m705ZOC4fGpGmQRIylY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIXdoAZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIXdoAZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF266C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772084093;
	bh=Nb1ZpJM2IyXchDSesfrFTywshaWn88/c/6dU3UGZts4=;
	h=To:Subject:From:Date:From;
	b=eIXdoAZHpRFHYrYeLex5UMdUqvZcyVkIrjennUImPfLbMUjF+GDiU/eYB3Nryta3w
	 WafsJK3jFQ54Ln6EcrjSphqm1XmfEQfcfENowAppe7BfwtG19MY/kNpL1nxku27IJT
	 d5ZStG3xayz+SNVbcVUWEKCNob4ih0q+zYAUjKpJO5rLDzVpmWNikrFE0A4K5KLX0r
	 42OQql24AWGhbe6uFDfh5YvRcv7R6UaktstqiWwTseNQDMW0p4yz9eZTQtfGRkl/us
	 7vE+Rxn3/jtfOPzK1fWSOtpbQ7HbnabZCe9S5lEzYUzOvMw4Hwb/7Uxo8H7FsoDahF
	 xU60klxO8J9zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE43EFD23F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208409358.10779.16734232133564374215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d251d38927955c8d8c8acb7b7c8cb7fd5d7aab6ba55466e0319cfc872db16f
Date: Thu, 26 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772084093
