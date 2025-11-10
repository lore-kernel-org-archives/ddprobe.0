Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF90730FF3C
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762778994; cv=none; b=mOCZrY9wqrU8mB4pGMDkdoc0bPGOX/LEz0065MTg15xj9mRrN3BUUcJHZHYNc4Y3ojMn3LNcNuoOJyzM74pvEzRRMfYrDGV9MZr+iJ3M15MV8AEqD/dq97xiS8zs258Bs2Hr8HDtS5vfnMoO8tFG/kffcQnM1trQpwtPSmt9LJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762778994; c=relaxed/simple;
	bh=stKKNxTqFooW0TWJs8WIDaiUm7f32lSs6WEO0kjuxlM=;
	h=To:Subject:From:Message-Id:Date; b=Gu9odLYfNhxQ6OCxBJ0AWeH1tpwha2f26Y8Tq3B8TVUAcdX8suO3DcxUJPFP7pKqNeaVb2d8JwI7aWvXM8YKIhmH0OeO6/rn+s9jeXjrD5yEzwahuSD22r4+8zlURy4H6W089SiycJ03LMJ0g4FyOkDBTU0iA1fBCBho7ElBBFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI3NxuAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI3NxuAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99F32C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762778993;
	bh=stKKNxTqFooW0TWJs8WIDaiUm7f32lSs6WEO0kjuxlM=;
	h=To:Subject:From:Date:From;
	b=OI3NxuAudGrZBGSFoyXV3O2jqI+/pY/P9fY55iWZiNlmlIqmdc2eWCLSaiDnwDnWg
	 GylAeyuSOS24Pb2wZDU3gkHAPkAxPzaLdrEkCX0ZWjFPVmMQKvrKlA70yCeR9DtTFm
	 +3YEYKxwv76+I60AMazdoKJZSVw8uj8fP86ikSupn44kn0GI1LrVSZ3Mv5kp2TD511
	 8/iV3cPTs4cIz03w2Lf6kqqgRyVk1CVujuXyK6FcFgL9ZHfv0vLTgjOUD0xtUQkarU
	 cfCBsnr34HyoIcM55C/ooKQR8QtvvkBcWdG8mtvMWvO6pXT9p0QQsSVWo2g/6LP8zA
	 KNvBHOcNT6sgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F302CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277899357.17071.12280849467865856543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed1d8b51abe8d675fcd80021f3e16ca80d4a903024fdabf14d719d2ed84648a
Date: Mon, 10 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762778993
