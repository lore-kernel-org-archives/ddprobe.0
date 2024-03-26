Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0EA495E5
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711444697; cv=none; b=KlkVZ0VOac6EHmnWvZSI3zQETVmqfFb30iOS0Q2UoXZ7T0zkUQ8EjCgOUzJk3B59/z2ydV318N/tEO6078ARCXn6Bs/g1ujV+e4zGricWFNlZ1BeQlMgPEu+HKLLlqhW4mjtwzs0SIWyKwakO4LCGuRDdyfnJaHhBMbhJgZulP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711444697; c=relaxed/simple;
	bh=LEqT/38lP8Ru5vemMYflLeQ8TczoeE0KHVNSL4jC0eI=;
	h=To:Subject:From:Message-Id:Date; b=oYFsuyjd5Pd/0rdmP7V/P2j1dgW7r3lWix/tdpW+D369IIZ3IkGpNzYr4kbHZvFSqZq1kuTg/1gDRINDp3mrYs+pX4bpMHZVLVuV+nyQBjIrYB91s6beCxoCD1Z3ANdLqDPopqDQQgWzcnGTSZvx9yXr2v9knsFMM2X8txBtHs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSRN255s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSRN255s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84767C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711444696;
	bh=LEqT/38lP8Ru5vemMYflLeQ8TczoeE0KHVNSL4jC0eI=;
	h=To:Subject:From:Date:From;
	b=TSRN255s++9Sv7EIOfXZjYfBQNZpvjk487vVOT0YxnGNJXg+RP+a5DxaPNSCsfmhv
	 TaewPvlt8CdwQgrpjDHcR8ub9PFPT0Fw4PFnQue/hvG5Q3NZ5Z9BsgVYudDgsNTTuz
	 oJv3QhPwJCtWpwdLys9UoKrPLaPYUoc16KDhWoxThytS41DzTAFXB0rmgflca5O4nb
	 PyBKmk/cbnbnf+LXbacRDLT+irl8wewlTMhzz9SXgkat5jU6Qccr97THTvV+I5n7Jp
	 SNZ2IkvrfqPWdIT4T22WKLm18VqtSxCvgC2QFG5pi2wLVasCzhP8rFB0UWyvArM9lc
	 Ty7TXcw4w1Nmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6930EC54E58
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171144469642.25054.9756384785925049198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb5e553e15e19605221867f506afd5ac77c12e3d031fe21df674f5a2dec60ca
Date: Tue, 26 Mar 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711444696
