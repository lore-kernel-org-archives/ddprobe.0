Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CDA25A343
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762960194; cv=none; b=pBNtlN/npI25FmpV4A1WxFkRBggteFjJh9S4rlwOPzROIB9RorbjG7pyfVqmkeFZWXJZIDtpdoLLTGpLbNHFJYpvvKUC0zeJ2Vlsb6PIrZj2yutrOLzgP4JymyN7pFgO94vJwl7NIy1FQ3G8NFF8DI8JFIJqV+ho/pB0m0AzYFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762960194; c=relaxed/simple;
	bh=ISI33iE4QjDI7fGLtpS4yVxpOtjzNRNPL8cQq9sVZOc=;
	h=To:Subject:From:Message-Id:Date; b=difipKICry1SWScszfaAYmkJN0jASc4cm8+2aPqe3jkoRAAVk4NWk1f97dMSzGVdwm3CRc8aAvwiuq9v0WoH/gJnfeCDVruQbRmVaBqu9XDZo5ewEPD7v08cWsSAvaobOQVOR1P3hExffSgXZ65NNJlmPT4pcA6pMh2cSRDxEAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVcy6aAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVcy6aAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE5EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762960193;
	bh=ISI33iE4QjDI7fGLtpS4yVxpOtjzNRNPL8cQq9sVZOc=;
	h=To:Subject:From:Date:From;
	b=bVcy6aAE3Q1y1nspDubNLOqS1zZ6SBWUYap2FcySdQQAR/pmFBsahRLBsrzSUDGJm
	 Uy/1YBFBlyYFBSliI9GVHGsj8Cileja69rZSNp2Hr2LDj30ZGX5qEecly/tHvs1iR6
	 UMYK0sEBUOsTsPnFEQ8XDLNGXOIXA1ZPDe1HD3b+5tYBZANL2I3X5T4CNrbqaNdBjw
	 tlWHnP0RXphAsOtcGp95iEqSiscAd756rZwTfbwrUGbhduEQeqbgY65wc1E0hz1MsU
	 diBsM9/u2VvmuQ8IeKpJkiOoll8kSCjReM+Q+vROTlQnc/pBsYlt/fRK9L+60sPyM0
	 kwcbRNr3oZgDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC70CCF9E3
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296019358.15224.13601646950607953204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1ee5184343db9ebe0f331580c5854fa2c6818072760e2c1a9197c2211e31ef
Date: Wed, 12 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762960193
