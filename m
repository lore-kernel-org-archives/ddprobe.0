Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921F532D0F5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792035034; cv=none; b=L/TFTrcswkXAMMT2/2cYcLfboXzro6frmMsmtNaXKiFBsONhJi6c0Bjm00Zkde8AQJUrsl/jpkNbRJRP0p8NVdmPYpGuMMjNUwMsGrJBFeQenrBOQoxISjtq6D5k9nA8rnfBR6U06DoMHSvJeXGZ0s/gGKrTIhTG4gs5gcXCaZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792035034; c=relaxed/simple;
	bh=wjOF0bSuhr/W1ZcBLlCSDkwiwpkqibe/CroBkYxOnKY=;
	h=To:Subject:From:Message-Id:Date; b=tu5m6Qo4Yd3x39crt5FGfZVAKIEGNkaNvEjQvIX59d3puZ9rVzFZ75C0B3EtlYEqcl8kIAtVlmcFPEqrDopd2jhs8CBBEMNPsscdr5rcP2KoYvNdP3raoFMtd8vALrlIxv69gAOQzFHKJALzATxUExa6+Wea0ZgCX+FitfgEDcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oz5BSCqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oz5BSCqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DF9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792035033;
	bh=wjOF0bSuhr/W1ZcBLlCSDkwiwpkqibe/CroBkYxOnKY=;
	h=To:Subject:From:Date:From;
	b=oz5BSCqGeSMmrx/uY+n1TzxP56nUk8lu2E6HFN2OlK7ok3kS6dpJPtqBLKFR0UYYO
	 0iKtHFngztuTocqlHWrU38tU4O1cXQNu03+pbzdBA4lNF8L8nehluZ6+xmVPvFhM0v
	 KlTISe4dpXLcBcRSSZtilUFsfT+zovVr2eLKzcm6WyS8WcR1ue51Xr4/HzWKBqhngo
	 Sh6rJJhAHUkVV1RUP2PH2WG4AXMTunR2yyjYv5pcBp73Qp4HYMfzhJ1/zdcifladOr
	 vx1l3RW+/Up5EK+EWvX5wB+XAaKpF5nVrufLR/QUT2eMEbE6Fy0XlW8cbeA8AfsqGR
	 WCgefRnItFn3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4488CC6B2D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203503372.26488.2499442176694325876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6253f85ba02936ca09af5f767359b7558fa92d7f0419466a997599e425e400
Date: Thu, 15 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792035033
