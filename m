Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28311201033
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764674574; cv=none; b=IXETCQ+riAX46xEt8yNs3oSV7OrV+eoEAnA4tz1NpjtOk12o3+sNNI0Dm6Ns2Z/+/JF5If1aVv/4hiGusE4XoBFR4PoYz7Bheyl5CBpRaNsf//4lsCTY1Le3rE2pmsweuwTu+HXiRiyv//1YoWQaie+OmgQeAuPXIqNWJ0N8CBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764674574; c=relaxed/simple;
	bh=zhn/SDI3m99UiLUwawAjyxmivoSUUmPUzS/IHObWUm0=;
	h=To:Subject:From:Message-Id:Date; b=ukwKViVsU9feFKEPlYnEAa0asBehnZzX6/8EOgK3kVbqVeAjl5W5uTUspDKx6f7+rNXvGrFmoyeEO8V8smNnotoOWd9GO9VpW64iJnHOlY0bzL9X+FVGlgceu9IQ3pJ93iimhJ9WLac+roMIZCne/sHYqCxhQRb1K8uxj8jdbT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKTk6Fox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKTk6Fox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2413C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764674573;
	bh=zhn/SDI3m99UiLUwawAjyxmivoSUUmPUzS/IHObWUm0=;
	h=To:Subject:From:Date:From;
	b=LKTk6Fox3b6KcegIoRELIiU9K9nZq3gKjWP33mDgc3Du8cWcBgj2PHJNKIFPfFjg3
	 rymNRzWF3+HT1AwtgAHgna9i73WTqt9Q1Tk+KyRgfR9pAw8LLTSGlUMZ19t67pCzff
	 3wR2oEmnNgBkKR7smBS5ohon4itJWOq53Bj+vltJ6s844XUrXpMpFA7HPJ2fOZsFrE
	 4htFd5FIuapudAc1pCPDeYZZirp04g3IHr9S6Pz/9e/F+GL8ERF7mlP3Axs5bTvHDB
	 1sGoFYlzFOieOwpsiX9XyKObNZbc2MFj6TdNNZxGLKJgt2ozHGLnKp7jUI6dbTGch8
	 +j5kup6IZxsQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF8CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467457358.19727.18050037526204305587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80d703e23a746f0a19ca29a7a78a78dfdd895c0255c1cd68e2b7e5937bb52f0
Date: Tue, 02 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764674573
