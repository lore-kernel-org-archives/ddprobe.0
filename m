Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0D93E0C73
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772462694; cv=none; b=UbSxYgoIdsDo6Wrm6WBbC970isHI6M0PpBSg6C3UDbJA0AHSVEB+yWAB86rx+rVfu25ehprq9Pz/w7dmv/PE6V33nhFBGbGNHC5QT2IJ5Q235Sb1zGYcuvPBn91uYcRD89p0bxlIdg6jcZi/L5bS0KG7CTjtLdkxyd9ByaJYEe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772462694; c=relaxed/simple;
	bh=3JbOiSH8jYUqK160+1jjjQ1FT6bGC1pYhTYw76F8qNs=;
	h=To:Subject:From:Message-Id:Date; b=GkDt+rqDNo2ckR3M0nB24ee9vSVzyYHFj1v1wel24kQAvP26RnJpngYdq1UJFmcCIwmY1bRkyiO/XyJo9ZtON2eix0hdmxEkLAUDSOyzz/OSA7nh8OYxSwlfHsHLxkcmLuhlc0F8n6VSJ6WpF2a/XUzFj6urivJK7Gtgpn2eBrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opdVCt35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opdVCt35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B111DC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772462693;
	bh=3JbOiSH8jYUqK160+1jjjQ1FT6bGC1pYhTYw76F8qNs=;
	h=To:Subject:From:Date:From;
	b=opdVCt35IfUjlSlmiM1VNUpDBXb7o15m0S3Oa0aEQVhYWVwQX/lzCnfGlxnJecLqM
	 Q1/YhiChJ9LWbIaXBIq7qXk+CHqI+d1TxdzWFzBHmTyp4zuhO6CxTv24HIsowCWmjX
	 +486/iOTPGiG1rhQp6iToiS5gAU0JQJRqMar+WEhpdzTjUUrF+BQhPwapqaM+tNS+0
	 MEdTmcVqIJaZKwVQvBPKTAMB6m55QmW5ClL01ACa2lr58kAIya+YgIjGXXOjlr81fF
	 gt3JrunRm6YzgKcuXBAJ/3x8Fv87aMRf1Go9MdMr5xO5kMfaJ6ntTq67/C93C+9eS7
	 Hz/BNk2a6fjKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCB3EA4E09
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246269363.16618.15605729562044468674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d912d23a08c88a1c9b27148719f7ce94c399c7328f63ad8a34674ccf4aa35c2c
Date: Mon, 02 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772462693
