Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A8326AC1
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 20:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716235943; cv=none; b=XcjQOgT3csKyuMT4TVUBY8LENKkq31/A8Al0T9HHFH+krrx85r7V5V9wbVDMl/cPdsLWveS83C3Yg2KOiij1GFVmxc4fjxr2MpdOBiRnnJciG4SsZZGwlnFLZQmuRm4rfzHEZijFLEVojTrddews3JVOs4/mP089t5SK8E9FPZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716235943; c=relaxed/simple;
	bh=gBqxTOtT2YPp6lrTprBTqmEx97MtE/1vfa14uoUWSqU=;
	h=To:Subject:From:Message-Id:Date; b=T5sq94J1mVINucIeFGaMaCjkYfWIyjwJ/U+qmOkF4Z6jxmKt5p5rnLb/cIF9rTc/FEUCynGDFHMt+ymL5B5mrgiDhnVMG1Fa8dWwm9+ubSm1JBIEEaLAOvPF8RDpqYgRtva9rfD6xMKJ+Zjlm1Ob/w/FWQPa0XEEYLka7xcp6SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC7Nht9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC7Nht9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4060C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716235942;
	bh=gBqxTOtT2YPp6lrTprBTqmEx97MtE/1vfa14uoUWSqU=;
	h=To:Subject:From:Date:From;
	b=ZC7Nht9qVGfQD7XRxsyx/cFj8lYzREnkGayzcLIoVbLQyXHTNLR1wPe1lgYDV14EN
	 MRusM3k0G55NRNFD75GMJSqdtlZDO4AzsBp4THHbYXqoI2Jv5HXBuvLWzeNtKNJidV
	 Or/WssPCoSDvxeAit+yBqS8/MlngHu/LQOcYCe74k4+h7h3X2fY5ILs2y3LPJZ/MDw
	 hsSEuCbPrwrkaVtixedI8o8RQKd7djpIGgy79t9iM3VpmuvRXTtze/LW1GOxruxzLG
	 nxlqOz/z9cmJoq7ZHQvsvi4DSOrif7Y5KumvYyNYE1RY47oIVVQLFfye/fQSeSbaUB
	 NyWVJH7y5Udiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20FFC25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171623594278.32347.3771005540069973695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4599e0d7405022e16356efb5b4c508ad8e0988de590962f4cf042107ec3355a4
Date: Mon, 20 May 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716235942
