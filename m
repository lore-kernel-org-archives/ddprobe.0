Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F246171D8
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724376954; cv=none; b=hJAR3zeh3/1jhVoVr2yorbkdQ1VunfEolLJh1jt5XTIPoAOCbeKSK+IfOMLcz6z4oehScO1rbv0EYT1AHi1kp+00iAXQHFj055FPMGqjqWSw1wsulTXfrRacvAcCPm49i5cEj15MHmqNptCTlBsZjwDCBE9ZPJRvZVl9PlYzttY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724376954; c=relaxed/simple;
	bh=d/YqIODYdUTTeD+EHvbrSqCw6f6TV6AjL9I9xIrS+B8=;
	h=To:Subject:From:Message-Id:Date; b=EO6ltnYVy+6sxpNau2nqSAqnwn8m9CrX11+LMxCzua0fmJSdCaorZoW8Fcd6NP/m9ZZjqh6tN/GzCa8KzT8foPtjGH4qvbjE7agqLWyeHJx5khNl30UtpzL107YRLUu9uMFY3cOg+yVNsrkKCO2EUsiiAIDggJcTLY7Dlm34x+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIvZsRRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIvZsRRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D5AC32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724376953;
	bh=d/YqIODYdUTTeD+EHvbrSqCw6f6TV6AjL9I9xIrS+B8=;
	h=To:Subject:From:Date:From;
	b=AIvZsRRCFHIIL0MmDj2OQXfcrTyVXIgs7gIyyRDXAfipTHYu26BDk9XHa3l3EA3LV
	 9t457mzu2LwKs1TDKHDGOIZyJ8B9oQ1O2zFzGZpW7FeIMd5wmdgPvbrBOh0q+HcR//
	 Xcsoh7MAmlBaui06uHACS/S9TxyUTueecsPM3xNSDNDCHphDPIE3BV+iaImzBV2ReY
	 SUrg9/O0HHZ8RMlqPvblgHkmtBB7Cr4wmEDNarulsXNFKPBMIsi9SBPBi4kHDB7SEu
	 uhg9txl52Dk/IPsW/0J47m/J4qlKB8kJuj6MOF1KY7t8iRrNOuYf/WZlVj6QUHCJp+
	 gNeWyNMxgWVlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C9C5320E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172437695359.28038.11042405968168513928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0d9c971ab0051097de2bc6977dc69c91df82107288e1ef90d8370d08f9740c
Date: Fri, 23 Aug 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724376953
