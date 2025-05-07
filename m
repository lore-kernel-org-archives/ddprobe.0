Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2A23211
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746577794; cv=none; b=I8wv4Q5xe03tSZOLV1smnxg0SXU90OO0wADWpgr8VXV7mmdp8fwMCT0PvFUjb86OgQE33bSFunuOlgj2O5Sr7PgANuZGd0IqUNvAFLzfpIT4qjTE4Ql0k5uFmqQZwdU8XkyOYIR1X1Pq/UX2himda8rCi0T7uydjFhQSazprY8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746577794; c=relaxed/simple;
	bh=FpLvAy+DwV9fzn/c2LN6LyZeL2OacJl3yumZRQSXboA=;
	h=To:Subject:From:Message-Id:Date; b=B9QaBnPiTg+8kBUkmOgw7aNmCXW9/r9ZrCQy1QQaVuV+0E4Z3SXBaQsEQ+JVCwZK1kVmKWTcq3bu4NVc3H+ZW/xKmm3x+kwR4im5KAZ65HitC8OaKpiqUFCiB5FJQN7XK3T0lgQNhYaQs92/o1EbXJcjfm6pUHpD1yUNoypGI3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSKqv+fq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSKqv+fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5340C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746577793;
	bh=FpLvAy+DwV9fzn/c2LN6LyZeL2OacJl3yumZRQSXboA=;
	h=To:Subject:From:Date:From;
	b=FSKqv+fqKxGqW+D70LUROqcdRiRfkb6oyOWfLvzZO2M1VwjoKtHZ6FaJXlhdykPtP
	 zwwLrwNQM9pwweXDYK0Lbg/eFfHxVLGqe5tbEOimbhBlhIPMit96Y6/wA4GXmQITmP
	 EliRnYMqZZ7J+6fdQZ3oc2UkKEOCs0/XRLEM7B0KUSrpVsFdmWw1uZ7ecRlLFmNLYS
	 Tcu1Zm9Wa8NVTPeC2FhPElw8+eHP4mb2HPr8cLKbzn4GLG3qPaSvluqS1MIF3Zt8SB
	 Rev4VqksKUz4DuSgNhhLrx2It420LaSrtdb+5XKu+C+rfFesKIcgylnSEjmG5Caf3I
	 OI+LfJItCoiRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E8C3ABBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657779357.23190.319417512312808610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771d8b531fb5c285cd0f035e16c419a5d6da849e5da8467a5e623ce29590c1c1
Date: Wed, 07 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746577793
