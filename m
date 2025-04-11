Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2952F5A
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744412994; cv=none; b=t2aFaeEeiYTT7SBIqrMN/6T22XpmcLVGhcldE5Hecabh4EPutypd4qYUG+uDgkDEIg28isPVs+psM2nWmfEtqd7W3LLo+boDALLs3ioRdhw6ZTLEdMlqbqM1a1iOH4mktxufgoMyZq9HMxgHFOXVpBnCUHdzaa7dXuftLwyFdRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744412994; c=relaxed/simple;
	bh=C2gHKImj48kDhNVv56pzPP0BsNsQzS7aonDm2UGHr04=;
	h=To:Subject:From:Message-Id:Date; b=j3OpeTKlRAPTSWgA45WNdiHkraunJCFIS4tP/hGZrDqAlg5DuBT4mcJmG7eTkzClesBPvsUkUEWT+VzQyAZATa/ryOPauk8lBd+hYnWNObr4B9sO8Z3RUu1IeNcU2WBRmBy7xpV06MmaiibEyJiRN5Gvszrz2A4WPFUEc1uMgMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtgsvRsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtgsvRsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB53C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744412993;
	bh=C2gHKImj48kDhNVv56pzPP0BsNsQzS7aonDm2UGHr04=;
	h=To:Subject:From:Date:From;
	b=RtgsvRsd/W4ZMiahl6qeqrRYmYzxdFlDYROClBgp5ZQ1QV63jwNunJ+hKR/ZBWw/j
	 5pguqAfS2dKKs311auQdg2mhoOjV2MMYQ9o6KpKhvF+e7aSGDbJnnv4TpuR6+bigsg
	 HKVUdA9i1/iX6C5gQTyeP1gSBROlqVo2ImOAG6YipV7GGBk8cmWkFzI0OCfjRpuPJB
	 ayppthfSH5Rbu+wl8Y+6hzIbArbT3lxLHSNzazbCwougZi73eUZCIqduyS72IUKZRz
	 NwJCh4ZvcIkpuWOW1qR1Miv76O96IofiDyJdiZyTorOyvwTapZtgEUD+Fbtob1W0n9
	 4VnD+YXwJF0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1E0C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441299362.304.12578952493478446101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812240e81854ce5daa14ca0e58ab284aead60f1488252a097c0a807483c0b858
Date: Fri, 11 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744412993
