Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B81F1D6DA5
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733081754; cv=none; b=PUusM8Ah+x8FARIpiz75i6R61sp/RMuZS7spvOTQyORy5x+40XnHkfELQOdtuHhXLFX115is0ZMF667H/bRcx8cXuK7hN3HabmQcIoisuRFb5iRmDUDZvrBwgeLt8rAIjE7+Y0INdHa2s0xEmhjj6DBfb27P0vOOSLOVykOhN3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733081754; c=relaxed/simple;
	bh=fjlN0Sh1IJBW7zEFU2IS4I59x3OBJM3cgS+V8bRgiLM=;
	h=To:Subject:From:Message-Id:Date; b=hr2zocQzqKD3F2mKR+7otbl5OWNBo4yozjCOVEGpW6wL5X2W+18t/602AUf6mkgR0xRDLxDuMvdOL7fNprWyeYlxfN+gToYGV8Uy9hfLOuUJjJttG+cEgkwVd77Jov7xLQ67zJyA6LwxXmrpzUWIfB2Q86xiD/3VO8J2UhAnfMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p916HFR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p916HFR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C9AC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733081753;
	bh=fjlN0Sh1IJBW7zEFU2IS4I59x3OBJM3cgS+V8bRgiLM=;
	h=To:Subject:From:Date:From;
	b=p916HFR9cMR/eMAJT9zZqrrtVyOUdNiM64fVfgWp8oqqITvHFOSpxG9QU7qGn3lpU
	 IkRUG1KtLd+3g0nceiMrjEm/wi/T5Qz5t46AdofMbAYpW6Z4w2ff65Tn4QDwIHhwig
	 rXyw8n+EK3E7yR/yIYA4m0FSyJO9jBzG7kNE1Gle/UCi/bibdMYPpYW7204dLF668i
	 dO0H19aQTR5Rxhy8GCDOQsRt07uuDlPG7rxQ73kvsEd2/vnBVIMx4BjcoruWd0zJPC
	 iA4ZpDebqQAs7d2c1ByHxoi/GQ2GkVDxHCu5CA7S1TcNPcg8WictPc/4cHfz0GoYDR
	 msgtOm+mPHh2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D64D49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308175358.27504.7327378427145504611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6667e96ad2b085b57554405851461a42a7ca9444e35660460b23b51d58f5be5e
Date: Sun, 01 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733081753
