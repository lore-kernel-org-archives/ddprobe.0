Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B8821CFF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762978794; cv=none; b=oqbk8uqd+y3FGMtOgNatrJBtZ5NrrBPJbjh2g52ATD7zN/sVVVRIalxLDF+uXK/3IpuJiFtFiItGSWUJ3S/VKE1TDr1Rhr48qSc+ywxgmtvJUXgRMLfe6qg9lOk4NMJi/U1NeSJFMkIf9IRKS5IADssb7bQaarYu7dVZA3qbybE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762978794; c=relaxed/simple;
	bh=3tihF5BjWVExiLcqi3OeXMnLqFV9GiTvFSft+GmBt/M=;
	h=To:Subject:From:Message-Id:Date; b=DhBqXvvAXf012/80frTqzbxx2X5Vbkzj3MeFVJfGSATCNNuLNdmJZpGRks+NPnLcMwH0aVvkXhPzPOG389qAXFBdBjjJ1p97Hs5h8gR2L95i6aaRDtOQmbFECAkcVW3uBYUZP8OJwkSF4KJFCZ6P/QreyH9yWcsfVOr4q14+kxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGBtbcEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGBtbcEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D6C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762978793;
	bh=3tihF5BjWVExiLcqi3OeXMnLqFV9GiTvFSft+GmBt/M=;
	h=To:Subject:From:Date:From;
	b=gGBtbcEI2cVMpYS7Dt8bdbgXBqiBb8Wss6Qvvc9vs39jcnih1A27uh5vDrTgjZxst
	 EWrAlZ6HVBUmW23BHpvu5WBcjEaZb1aaO+2jJii+weF+Lmqpa4BfuS/iw8MrsEQ/SJ
	 LLqigNbVLx24qMv8n9z/aq98vag0lHKskXCVJUjmNYNWg3m2lzwhh2UA3pTcmwmZq0
	 S/nB4WXEh9sZKHgxZ2EsRTpUJyTmhCyYaB5GcjSS7o1wUaXtuM8aH6wG+ToSRVzof8
	 dOA3nIU1XtAgc0twFaglUQUY8vltEdsC25yZa/NtPfkQ5jdRiPFbC+aio2bOFBU8Ne
	 BNOfpLVoax0ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9397DCD37BB
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297879358.18944.8314599632969451833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f247bb6c40b73326857635f915f41a3b537764dca8a3d943ef6336d3d7b0d350
Date: Wed, 12 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762978793
