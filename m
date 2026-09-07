Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AF140BCBB
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788809434; cv=none; b=m5NHT37NgBtSWAsrbflEA/GbHEjgQF58kuMzjrShLE2lrSf/SClErp/ip94MYwHVx1ual08AUMQGD69P9VCvCUhUNEpQuZ2H2bQHF7hZXIUNlrzmTIAqlf3eVSfY/pPq5M+pOCVzIs8tD0bXrsg6DPIw9otquDSIYrimymyODpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788809434; c=relaxed/simple;
	bh=HFUdaBPK9CqSKNMl7qqVqHzEUzimrWExSayXW9oqlEs=;
	h=To:Subject:From:Message-Id:Date; b=pJNLtbrOCKalL0XBKp6aC6H0WeGKEM0winb8/Rx0JpDPxcywrGTxg4HOwIsDtjb5RZEYJncxe5NLl2Q+OcPtdkWr77Cshx7tgmQeWFi+CymcuqGxuxLdfIP86hi65T4vBw8qEwivQTuR4P2ld1fBScv39liRF6gV/gy4TN667TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz3rNPw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz3rNPw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA264C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788809433;
	bh=HFUdaBPK9CqSKNMl7qqVqHzEUzimrWExSayXW9oqlEs=;
	h=To:Subject:From:Date:From;
	b=bz3rNPw1tZIAZZL+4fRGVB34acr1/mSdQEeoPWrFPguo+o2u5kAXSXjjJlhb0fq4A
	 YOOqSgUM9p2pKjmWuhUVP9060X+sYzRJ2+Ch9ZlDfLKhjEncD0X1+D4aWArXiPwbKl
	 AdfkHEPqVgDii9zFrmBIt3+b4RnbsNrRf0KSQYEHJ/5lHlX6dQjv0yXaLrooxDqac+
	 FJ3TiTWC68ElNKvIX69ExR2BlEveEuFj2hcspuOYaeC4q8yDutVIAjfpLjPCclxArM
	 TEs7OuiKeb8fKjlMTo6wDDLlO457Yd1N01NmHVSxIzf5tXetuqhHT0g9TrqdeOvOF5
	 UgQYRITLPjg3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A69C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880943372.22194.12222055726860450229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7913b71e7aec38a512e9d4a68447f7d1ff1736fbab6b6250d5b5e9bf8cbaa2e8
Date: Mon, 07 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788809433
