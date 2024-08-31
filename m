Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424341D12EA
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725068154; cv=none; b=IlS25OwzLRR05quGbhEuHQJodmrI4Sk/mrl2f93GMxg3SuW2LbkK99VoP6o0TOes30Vd8FfZ+Q62Qd00uZb6Bpdm1CkjczYaf9NLL1SCa5O8lYaJAKCpBstUxVRZuBMLHGnlxYED2Eq+NBcvgH5airxUyMioK/1/TImgo3I3OOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725068154; c=relaxed/simple;
	bh=F5ffvAjvK1I9meXCrgEbPtBcI55YOxg/G6cSTKfmeCo=;
	h=To:Subject:From:Message-Id:Date; b=KWNvrZe8UsNc8AfGZm9wRRfIhFD+rF5uRf0+DrkrHG6Q2ZxGkhUL7j+eFlEk22/lx5tG7uHG4QPjechrfKHelwDndc2IgDxcJdRdKGMAU8OwgjEOEu22dzarmPmR6ZTvF4O2PRgQK/1EFmv5APFCjnQJlplLxdr5EAf8X7Mi4q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lF7DEa28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lF7DEa28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF33C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725068153;
	bh=F5ffvAjvK1I9meXCrgEbPtBcI55YOxg/G6cSTKfmeCo=;
	h=To:Subject:From:Date:From;
	b=lF7DEa28dYX0x5zPgTo1jO9VQvTs40wbkb2HQsOd0mZGSpByDYKcABhLCUXWzg6jz
	 5hKchCtQXN+3CLKglTabJ2FBj5jnMHlA2/HM+t599L04Ir80uSazLcReOK3P/tGjCm
	 vV9MvW8I/1eWVVOT7WV/oWAlf0d1PiGYq0dtmm+DemakY/hrpvZsExBqqSTyI19bB/
	 AD6jsnjG4saPxlKVjAUAKSg4FieIbPHdmBOQiVrFrVMX7MQX1b4cSS3JAVNkiMnvqd
	 hzfakForLZQdhgr2tgmAGeVUZSDk6JZyQ2EysJGaVNnZ6v+tHPcZXibdbB9SeXBYwC
	 NGHyEx3WAiuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94657CA101E
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172506815358.25002.7309783401974084451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c1c14f1e92f40fb18d5162f65f5b7e5ec1cde0f133015586ede99d2f0c0f23
Date: Sat, 31 Aug 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725068153
