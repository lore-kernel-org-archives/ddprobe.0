Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343DB172BD5
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747040394; cv=none; b=Y3SrvYC+NITq4sdUzy0IFqpjEy4l3s72zluq3Cfs0RPiv3k3EhjRjoZGjEXYg1LMolXyu9HHpp1EoC9LVANP6FCuqSNk2LxLn7h4k6CjJrIOjtcBxfI0SDu9+Yt1QNOUpFf5IL7/4nFVJ2WHHhWhZI7whgS0xaks6gn1SsFn9ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747040394; c=relaxed/simple;
	bh=yN2CfoHDnN1B5lokht7tQAInPH8f7m82lUVy1BvNIGk=;
	h=To:Subject:From:Message-Id:Date; b=JsCJ5udD0K3RQaD6/YSMSz3wlzO1UkImkp12tj6B+vK1TjPEN1FHAYnwSNCFc8YYUbKJfTJKA55HmeDTrp+mgYnQpx6Zw86SqdecqYh8d4/vky/TnNSs4EtPtY3UIjKkxRkdg6+nEkTXoMgoCzpDQXtzPJvVErMDKqwiA4vr3PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYOzSRsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYOzSRsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7EBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747040393;
	bh=yN2CfoHDnN1B5lokht7tQAInPH8f7m82lUVy1BvNIGk=;
	h=To:Subject:From:Date:From;
	b=FYOzSRskRm+8IaLCQAt5L7aYWzRsv15MXp8B6eCVZ+iDBuf7jgq2aCCifoi30nqqp
	 QXA9T+Iqlu4k3X3SOiSWX50WMmMfX9r4nI45NZMKJc8qs+tPkzNeFwMcsnLdzweJik
	 SngvMIuzuU6k6ynVpNcprVgKudW0YuZOb7WTlmQ1ONwDJtzi4uoIPSa6oIwHgmOPZY
	 2KHIgbSv2Wd7cAwhbQa2S6/mEbeasWGPtrcp0vEn5ITDT53Q2P7yZYemSEd6zFUh1J
	 99OV5AsrKBsgDmQxpYnr3Q7mcaNncJ3VoZ80fL1aFt+k8fPmMwmtkDn3sfMWd/90sC
	 TxCoQc01Z63NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC21C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704039357.27446.13126583089918478194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2220e8b48f52c76d528363a513a5956eabca5f34366fdda2a4025a9957080dd
Date: Mon, 12 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747040393
