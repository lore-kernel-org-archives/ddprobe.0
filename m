Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342232D238B
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752559194; cv=none; b=KaSUrT4aJXPdiPRoypGTJn7KTs4sdI6bizNAii+NRUU18HD8gpPy4zKedDgeyo+RxyWFT4xJcgAuDDzHKwqIOncwyHq2nwi0WM90v+binDGU9BDvLF8RZxgTTNrwIo+qxSHZZ7k/lE+KgyLvuPas/kF0elrzKtdng9i6/CGovR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752559194; c=relaxed/simple;
	bh=kH0O8llUoIuZb/nUAL7//ghXrpQ0RETcygqGymZddLU=;
	h=To:Subject:From:Message-Id:Date; b=NPPAFJ/7tSZKnpLm6BxuslpUtShm+/Dnzhlbs8qdGHRccreqxbMyU3tHZZSp0TcMt+UV39s4B3dzWZxTr4mFZ210NHace8WxO54P2m0xvCyKrnKY3UbK3N7OMjchwRCYNmLZFQ4hdUjspVWkbGhSLmA/JSUqi1MIlRhNKExy/gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKh9vu1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKh9vu1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F1BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752559193;
	bh=kH0O8llUoIuZb/nUAL7//ghXrpQ0RETcygqGymZddLU=;
	h=To:Subject:From:Date:From;
	b=RKh9vu1PARFD58a1oSMki0OmE7M4ZJ3Uzwq2dg9VoIVexiuOsOWzhkluqGxWV/Y2I
	 oHqtVrk1jW/tCIo5e4mLxe5sYJbsKD2UiObEasErc6iAIJOS114TXxckGvJrAnPev7
	 Eqdp+8Ml+tUbz0LbJFQ3kj8aoGuT21zw0Kzkgo0YKrJvcDhJWFrAT9m913rYJwTF3J
	 /WkfR6MMUyAnk95BIabBywlfqGyBS45ucKPYPBCkSJKMuFXH9KnQKSLB6zQqTZIEfK
	 HrwfAU5G5y+u9v0MEP1GAcB0RG1gUeXAvgMFznmY7yL94vgRA+diA91euibwjmFMh6
	 7+g1Xo9FFmNug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A9C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255919358.24453.13453979388268348690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3164bedc19d93cfce88e26dc878461f2ec9405f9cf863641d2cd240637f85ad
Date: Tue, 15 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752559193
