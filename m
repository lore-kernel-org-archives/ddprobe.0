Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09668158D9F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719839123; cv=none; b=UYcuQJkUU/ya8dcRTb4FUU700aggL0u2qsA510Il42xFb/xuL2SHyqqHqYzKlaSUcWIpVDKAuTMxmxxkjU7xlBjYA+oxTtItZ+lSneR+54B8o3lQjjddA/jalKQO5ntnYByRdVT+dopVeHv08/Y7nUnUCWyTlcAFbrYvj1jzYko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719839123; c=relaxed/simple;
	bh=tjO6GU3uQqStIGRmG/rsO8rE+f7GOIMWEzMGwagC0S0=;
	h=To:Subject:From:Message-Id:Date; b=nsy8rmNdsafNI2dBz6WwNMUXcVHj0ugpbGy7n7CAnQElmIreTdJEILUqjPRIoLJWoopwYqZ3v1xcDjnMYswFp4PAbPr42bxBudM6pgA+7rFCOpg1TCuwTrEvb8uGFCpiJ2X01UbBcZCbkman1q9ckyPA/06JA8NeN1EXf8GsPmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEw9PE23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEw9PE23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EAAC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719839122;
	bh=tjO6GU3uQqStIGRmG/rsO8rE+f7GOIMWEzMGwagC0S0=;
	h=To:Subject:From:Date:From;
	b=qEw9PE23wZJieCYbotEsc2qwaAd451Kylz3OXIe8FZN2hWI34NLADXMEHtoGYJKr+
	 5FQ2PbfbvvZs33uqHXFxHhXsMMMBUqu7ewGhoUCBooTLM+1PgeE+0L8c15/WhcSaXq
	 c2JnJBGuSAy8/lysLTjXLsC3ZhZDQkt9ApevdUryWnUAmBamexJcRfpxxu/PJcQCu2
	 JfnC/l0zPibBuzMTGLFMZaruW+PDcN1hLyo/6Z1wieTgmTs7oSJOWuFQ2iSQHCanBt
	 ugMbOWMWalyWDL27D4GDXXW+niOfxmorJZnZ6Dl5QCcgMNL/PjCdaN/SmRywmPcxvS
	 LIg/vKQbPfWlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0767C30659
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983912276.15747.14922697635753003803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fd96eed40ed68d42ae8a94ab2c3ab514cb8dad1982b3fee3641facbf14f45f
Date: Mon, 01 Jul 2024 13:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719839122
