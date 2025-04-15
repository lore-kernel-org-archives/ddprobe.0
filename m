Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B871297A4F
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744733394; cv=none; b=KFY+P7debQt9q6GlIiRM8vHdJdtJXEdYfxZm0gFa73SouVRuqtXmdYxaAf9IfSYmXpRTE26eQgvVTcRxTOzvpzxLCe+Zzh4mt/2hYuEcF94WF6ns0THlFDTRxgPBFlA6E2CIhpZuEuEkAmgAWnnZsNWy9U60NDlzTC1A5MXLOMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744733394; c=relaxed/simple;
	bh=VXiubgqw7yFioR3fhjBQaUjtUwxBCTBup4KTZ5h1vl0=;
	h=To:Subject:From:Message-Id:Date; b=LR+8ZeIK6W70h3BO0tj1Wppyphn4KvNZrk/90xTR9lAjvnO7oyMWA4DtjTj+mM5Nb/v7xqpD9f3m4jqNKzhyxKUN9vcBe1e4Wm8RbV5BTnqRQk2RcI1Hb6sCais1PSahijgJdJVXGyeS9cn02RHpLJOwDvblS4NeqkkRmWCHg3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4STCNHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4STCNHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C768CC4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744733393;
	bh=VXiubgqw7yFioR3fhjBQaUjtUwxBCTBup4KTZ5h1vl0=;
	h=To:Subject:From:Date:From;
	b=r4STCNHN9Jn6ymWEqGFkSwJgwEg1hu+hUI+4XEs6JP9sF0RXOyJvg/6sMdGNf0CeG
	 g7xs8m7VcEZT8LNxbPpS3xGBj9d/YPvp2ViXv+efVZt2jG7V3IgoRJjJtm7vt9x8L/
	 sMLU9F/p+Y8ahM1aq2uax4w55tZnP+ckbSMKdzL1DJDMbBbNC9/i12EXGea8MPJv86
	 lnre2zEbJhCZewCW24Ro+tkHzbQj4m6OAzlKbQbHcRcpdCcHGPhepCzoTW4YHcTvvd
	 cI4L9rVNzrfEV9dDFWvZKDprW1M72ITuOQXS/8IdbpJ8636aMQAu26cXdyLhCNpfzI
	 1EbFGIfTxLPoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8255C369BA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473339367.7116.13213010778203407724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2741f99bd76b0438df0052846e2c0b66ea75c68e54240b31595ac29b237cef
Date: Tue, 15 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744733393
