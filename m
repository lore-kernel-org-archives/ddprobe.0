Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651914AEF0
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718750363; cv=none; b=SYu9nhiiA57VxZkmESR8aTAGzwLabi4DFlb4sWMulrKWfnJ5e72HUMiSqZwrAmFjIpXrw1KB+pjR5ajS4GF9QjpufvArnI6FjZsWPLgWRdAFqOxF5CB+lJ6wB/lSCAPmEZ/jlR+Ls3/2AACpJdP5o8FOUcY5H9tOGkfmM0/IrDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718750363; c=relaxed/simple;
	bh=vQ8PrjcvYN4DflU95jvS+Z6s10TzHvT3aoIVVOX2uyc=;
	h=To:Subject:From:Message-Id:Date; b=Uc9mEVSgdbSMuwuNHA0t3rHFeIUrm7cGSoRHzTs0Loy8Hmc3OV8Z8Qvr3R2TFBEW9rl3XD3HczqshGOu3kw2ZHB6EnXiBOdk0URarJ6ijY3cht/lZtkWtuAu5QJsUYK2RN+4rcC+Wo9El3FZhAiu4nmMPzM1vuoLwnwd/P7JJVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2kyfDP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2kyfDP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC11C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718750362;
	bh=vQ8PrjcvYN4DflU95jvS+Z6s10TzHvT3aoIVVOX2uyc=;
	h=To:Subject:From:Date:From;
	b=Q2kyfDP1BzLwdjEU6ze72g6OkEOW2xdTzKbSUzx5uCJ0K2o6aYimBPXz7cny2LxTx
	 iTAAtAlgazQWzfkcW8bLFp1so5WLsKdxWr1mk1pLlc0dxa1AyMZe2U4mml0cjAiV2k
	 dxpDvdFD8Ndt6cgSvTBa7oOndazGGbRBnjfJauNAVdZs0qHEdsVsPTK17s6ZAMB2Da
	 dYyC5hgc7RA3+COnYdSWBfxOMrbr/HOI0Y1bNc2FVymWAEumJqfEt1tVCvPT+V2d/P
	 wPr8Tth3V8GIkcwOqDTGE2idQXQE+EJiG9Gt020UQ9wMIELIVSGcHRYHGh2sslqKWw
	 RexsmbG7LFdlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C849FC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875036281.1383.16612914358233831462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b6024e980fbac4fcf4aee5f20be7ed3f155ab135133c5cb36da473851127f7
Date: Tue, 18 Jun 2024 22:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718750362
