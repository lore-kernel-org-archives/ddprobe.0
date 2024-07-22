Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CB017108A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721676954; cv=none; b=SeaCKuuNr+XsP8Q8ckRJdQ2gEodi65YzFoeqDeP7VnCV4eSasGGY3pFQ5pLqhI1qNj40awSgfYCOp+46G79kmE41ZMCNcOUMNtcc9uc+X4sq7vtRIAFmmcQYO1gL0GsdiK5Ga4TtCPh7t5vEy7FP6SFk7kRo4LgreJcAqXPb4hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721676954; c=relaxed/simple;
	bh=RZteR4HCJ8K5PpeS3IFJQwyT8GBZmmaurBlVTSWxMeA=;
	h=To:Subject:From:Message-Id:Date; b=NEQ4MTkPuuJkV6OxnGmZwf/mD1Ql6di+Ms2ODeozMiY3jAkf/SxhpixQMUJRgSL6O6a4nYctvIyQrKeKOWlSDXYyhqq6rSWQXJ+HfIRPKQg8qmLuSW5ZXie0uKb8c4cQq7quQX7+amZYt1Ro/Q8f0N0qlpjgH44xDYdQta6neWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZyQPOQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZyQPOQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0866C4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721676953;
	bh=RZteR4HCJ8K5PpeS3IFJQwyT8GBZmmaurBlVTSWxMeA=;
	h=To:Subject:From:Date:From;
	b=LZyQPOQX3dFVzGDwLprujKFAN/Lq8QkKevF3MF5vvZGYSSLlaQegtwBpbv72SKICg
	 tCYbjkvozDT5KOqhpFLXL5oH6GlVZ0WMiBCwh/tp7yCzVEgC1OXaRXg54vF5Z7gPAF
	 nkPiJikmmsKkZLztpMfQ3gn8p3HunEL/6GFnkd/RdyPHfpW8Z5qRCR91XhYcx9gKTY
	 fou3y5xoyPbv5o1HamD1gxW6mTTJMXRMChtK0Ba+jFpEwAfpgbcaXcYHjjMnoRy/NJ
	 DX0DVz0GQwcAFwqvkqAKPvuNnEN17bZ3kr+5Ht3ALXLYgM9wfuo7j2tTzmBbhbDlYj
	 Eno+e35V5fKmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C54EC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172167695362.29873.8388036249280576732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6de8e1fdac8bb01e1d11cdd7a6d0ce5cd237fa71d6ab9c876c792ebf8a41c6
Date: Mon, 22 Jul 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721676953
