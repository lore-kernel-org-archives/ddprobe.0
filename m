Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF4734FF41
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787081434; cv=none; b=QtYsEZpYarwIGY2gp3qvv+1mL+Po2cJr4/QNfZOoLG3ajpuQDZMihyeNoPTQWJQe7VS9/zVjN4q0gJMvACag+OASnQQACvmxdcts25vKVtqlcLuW792Daf0KF45poJewcKZt82Io4BsOp3hKIcO1V1EACzrX2wY3+K6+R/M0RG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787081434; c=relaxed/simple;
	bh=9s4oRY/0K+RrQYBuT89oRNhedX929JFJG36WoIhlpTc=;
	h=To:Subject:From:Message-Id:Date; b=bZdFCeJecDsJ4iAqi+EFSsY2SZ3hFRP18XDQA2ftzPrbIURibYpHB+j+wrnO95Xz5X+ATLlU3ELF5UIB6sPR7JpJom6ugpOEJDr70/WZq7uAiaG2HynPUsIzHsPafBMsF1cFd7TF24eJVatUcl6xGhHEKktzwPkdYWEOIr4gVow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPjqq8wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPjqq8wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A2BC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787081433;
	bh=9s4oRY/0K+RrQYBuT89oRNhedX929JFJG36WoIhlpTc=;
	h=To:Subject:From:Date:From;
	b=SPjqq8wYjSrOeSCXTRbGR7g4J6YJRxnJSN5PTdDk1woIiNYsj8uN5Mh492GV4kkl5
	 94SIEiveD7FpR1qPpKMa28DmxBsX/Yfg17sbjDmDGRybl7RNCWFTR2pWJ0+xNASxNX
	 uOAt8OXCm2Lcr6nt6lW086RZEgPyK9HBDWc3WwzW2ER/pgGV3BbIRmTwqwSrotqahG
	 MWFbl9F6YGvmnOoHDoHFwvqGyZZ5BbsL+5Cg4bvnGueZugtMjmaTFLAw61FW5PNApI
	 qVMBX9ZyRq6W5vUaaENC+rlKd+94FhKtEozfKq096HrsrFlb0ozrMc8/0E8gD2PRP6
	 KuCM7meXupOgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB350C5DF85
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708143369.16898.2189585215433010514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684dcb8a02d632f76050daa1d4c7a5bd7d56c2446c27fe54a83158d5c808ec87
Date: Tue, 18 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787081433
