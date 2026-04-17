Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D891B4156
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776454654; cv=none; b=TfjRuaBrzbSiSiyScb9fMis9axRepT37FEGfpHSsVycS9qfqIjaZ0BFkPyyJmhQA1fdsRJ5YV9xopbYdLfUJVzCM6B+Ixr4TW/2m0j/AgYUjVj8+sIPmJrlR+lz/rgNg0J/MKB0O5/xeImH/PrmAmRjjU56SKuUG15kbKTA2H+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776454654; c=relaxed/simple;
	bh=mn5hrrswHCE55SMENSf/0EdyLDTDVEigfWfO3TXTQz8=;
	h=To:Subject:From:Message-Id:Date; b=fSfZwlsFqMoTWkvkYJTB6w+GTZNEA98vlvdXPdy96OekEuF6FxcOGFUZyMvkBk0UB4fbGyJ1NAzlGQLAV+jnWJHzq9q9fA5+8LqcedqupiAj52IlYp5MUqAKd/rwIntGXRx7bwqTeHOc2ynPx7NtDT3iLc0hbxST7/i80Vh4nQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NED8stFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NED8stFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE175C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776454653;
	bh=mn5hrrswHCE55SMENSf/0EdyLDTDVEigfWfO3TXTQz8=;
	h=To:Subject:From:Date:From;
	b=NED8stFtx9GVxbWk4wNXvDbq3mqOLS05hpLGEcCa9pmxmLoz5NuQMXhP6N5VZ0+Tb
	 6bsZIgTyuDZrJBaJ6KoC/Y8+Y4J6HEXeU5yjBJNKxVc2J/C5H8CrWRsJ5bI/Wfginm
	 8/2yAKjElqX3K84SX1cs2plqbPVLAlkM01ZXByM+ZGiDPZ+IpI7oenhVVfOdIsmENo
	 TPJNYQPGnywRGwbnkDpPlR1a1GRupCf0lo/SQunHin0VzX3L6byqjPiEzkQvlhfTuf
	 wIWWiGLXTTtbsi9gyAhPO0KjJzFUarqGrUGFI0vvhyj0OnfuZYJAePve5afN4rlSzr
	 JtOsyY7y1P+7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E96F8D75C
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645465368.19514.7614157197379859686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab52f97947472dde68fad8718e4f1b766fd4e15d433efd707a08afe562b9962
Date: Fri, 17 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776454653
