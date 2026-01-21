Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4618E1F4611
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769033034; cv=none; b=Q5q/7P9ImS5O129GxTAAM8X0MaffqPZXN1qS8fASFhOCfLFTakgvFRAiycL5F89RPnJoppz6bQvO0GoZirCutsMEhF6u7rVeuliU53LINl5kKqtEieOKFU0E1gKGm7Nw9DEMWoOcWa6OB72mTXtU/hVuUNs0E/RQT1YECKsFOG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769033034; c=relaxed/simple;
	bh=gs0cK7o66S2N2MR75V5ocVeQ3U/pKjh5BSbssg8BZPc=;
	h=To:Subject:From:Message-Id:Date; b=TnkoISrzHRWtrxBMBVSDerZ9H07hrBjkMJPs6bpYpYzMmN0Lq4a5PJPNbytdQEo7gJCLCCkmUQ2F4tyQP6BOHfzfcOZhT60M4qDJPizoVyVL+wr+Vir7mfVRs8bTGaJJQ6Z69UP1Xm6W2bd73Zbn3CqumY1Avsr+NFZexgz3Kys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+jNW2oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+jNW2oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA2C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769033033;
	bh=gs0cK7o66S2N2MR75V5ocVeQ3U/pKjh5BSbssg8BZPc=;
	h=To:Subject:From:Date:From;
	b=q+jNW2oV0UkL3s7kzT08tDEpDt2vJmoR0LdVUbT2Mihw41g7mssNWpvo2g7mId4Hg
	 rLbLVrtxthwLMWwfnNKtWFDVLjLF3TnooKRL5pFEQ/hxcBs5OOqcEZBTsE2aD5KNNT
	 XAm4ImC+0do00ZGG0Y+/DJVehZGgQ/Jjf3az00zKsXjdv1YwvD5gJrvTE2aO4YOAIm
	 GMsYcvFStQ8OYngbuljUoBMzxerygwkUNe3JDmFC1dICVCh0ZDCh9b/PB19OIfCffP
	 qqd3Xp7oief3inelSstZsI46y1WBvoVaQ8sTOjM7PwKbP7JoU1X2P1HuQjO2X9bOjc
	 PKikytxlmmVAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD6C44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903303358.18487.5648034546472200917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb902960f7b7d6187b549504a39f5002bc97de097e09fd029090c5f397dc473
Date: Wed, 21 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769033033
