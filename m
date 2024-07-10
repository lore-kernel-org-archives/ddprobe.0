Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44630190075
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720620383; cv=none; b=tNY9MDFDdWI+KwlAH1qa/JD+v+UWBY/VBArXSbe4T6JKHuc/dEcck/gHkne4uzlRU094KBrzW3mDLqJ33Cq8//pIdF0WEAuX/HsPFleLF8m0Zi8EIvveyIRMoqRoutnmg4vhbp5kxoXhKjQNxDPIurphy/Xqqb/6xVu5hWQh/N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720620383; c=relaxed/simple;
	bh=PAWdz4y9u1TkGkkS/capw8n73cOvKvY3ZBYYvzfGwXo=;
	h=To:Subject:From:Message-Id:Date; b=U7cxJO4myR/zVb/jyRFkNCdNk136JTdcc4zeZOAV5kVjUR4XyaaK1O1LtCjF0gZomxZ0ZxoeyChRqLUTwWjP4uYJCjPOVcZF2DRSAAHopByEcmViIgt0hMExbsJVN6t5zMkgNvM/yGBAhcNzzk13ZZTxisCULfsb7BlPYLCxMP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=criJ5Tqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="criJ5Tqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F37C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720620382;
	bh=PAWdz4y9u1TkGkkS/capw8n73cOvKvY3ZBYYvzfGwXo=;
	h=To:Subject:From:Date:From;
	b=criJ5Tqz5QVtxbiODrWNT1AJqmmn0Eagzv0ZU4mQTShjAjY5Nr1P+UTfhPQ/ASN0B
	 BS7Xs0fpu9OFNKUl4OuX4lq/SRj4xS7GPwMA79TXh8bHYQyzEzVXpTFgPBe1m2jMYn
	 Ac51+xPoHsKFBFvEIIZ+HbAmMCmC+wj2iTEd0d1ZK6GeL7/7yxz2GEfEA57gqsi5iR
	 orV2zonopSE6Mq1vvtVFfz7JN9e0iALxSljqpjATRUn00+rJa99zu/NPw0SLexg851
	 rMvmOiEccEd95sL2P+j+vfri05dRa8uv+DfV+DIsonuqOMGd+I8VsPA0IFCiJH3z5L
	 dcToo2nfffFnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBA63C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062038280.7246.8846029618437150653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c9d1b414fe3c68e8c9c44c9edc5e799ab94d4cb3820e072837283c9deffa2f
Date: Wed, 10 Jul 2024 14:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720620382
