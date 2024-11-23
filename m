Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4347B1A0AFB
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732406154; cv=none; b=GGo2AADLN/lb6/Eym1x3o+NnzRnTzWOYmR4jMxEsRRPJK6ivmEpLESDG97NAWg8jpGSFC3cg6QYpxqSGBeVJQINVX/kD74seXVRczdAX2Y1JeAgNgM+fbt8ACW4EE9JgGvMKAKUjWSs0r5/cIjCWrBRvKNN3cAU0Rer2+4fb8KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732406154; c=relaxed/simple;
	bh=IXHEQj0n04DB1F+E20zjzG3Sb1eFy/kiWhXHY0xOk9I=;
	h=To:Subject:From:Message-Id:Date; b=dwdVk+PQRYin86w0SYdLR91CAgUxvo57cbsOSlwDo7YVeBL5j3wB0W/6wLahLvMEGv/CAy03ruHIq8QIhKTdZC6p6DuYS/PnW6DnHiK39Lo2pcQqI4/Ty1tDUv+aZK9qUsVVVoE9SVQ1rEd5KTkh6AdB06H7akVjittsi8SrGcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnGVY4fV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnGVY4fV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4299C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732406153;
	bh=IXHEQj0n04DB1F+E20zjzG3Sb1eFy/kiWhXHY0xOk9I=;
	h=To:Subject:From:Date:From;
	b=FnGVY4fVHm/tVqo6AjV/ZYlPoRWR43DqTuCrvIcXlrlPaxgKoRS738vjdIFG+73zZ
	 hzoCyTnAEKsarEzIeYBBsr8nnfyoEftCdjwUUKHIwExBBu3VSA5qY8X7mUIDLZwVFh
	 xJpFm8293Rk5X07x7o35355ak6lKLdgl7NgIapBylqtFq2lVzjsO5Tbdcmcw0JVU61
	 Z4s0c+gAIvgM8UZujfqYCKFRDBaE5TmBlsm3v56GcwiCFI2gWjmS2bzqmYH2kqrODd
	 KF/4eJpZ2HlLYy8PQMZYtlwmZVR8icc1s/DXBKHWLAaC9UOZtGXpSwuk00gVbyZUqf
	 e4Un9kixgh7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A493DE6688F
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173240615363.13108.9381649620960322502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed76ebe03abd62945f0f266df6c47f4b40b8f9a61ec55e2485b5692ddb78c3e7
Date: Sat, 23 Nov 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732406153
