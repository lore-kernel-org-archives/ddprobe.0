Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AB725B663
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763728914; cv=none; b=RJJJJx6D6P4bZHyIhTuEiGKrYHDQEtyfdZlwVizVVEP8aIOYHa9Kbo2JscDW6fQelSl9g5bkvrfLG8nPR82EWyxpbKWHZJid1ea3ZNnnIr2daFJluLUGPmH89q0uj8Tnj7ALE/yq27S/SGJCl6aY3EjJL4f4dXatMk1DjdLlpSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763728914; c=relaxed/simple;
	bh=FHxsdoWewpAxwTxRgaSCQTw0l93tbiDm9qFhLJBEI6g=;
	h=To:Subject:From:Message-Id:Date; b=cUW5LaqgayVjnZz5yUvqgNV7tfrthUwQCLX9BkIo/bV8Hc0Khu4cuT+9TWTH35ELcN3XB0ve8u33wUdY0Pj7cotH4sOkw4aGj/SL4QVkH24DYnmxxB3TK1CFC3zSHRSQjz4dA4BOfGAcXIFnzU6nPDCO3K1fOUBC/tmBAipuhQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkDzafvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkDzafvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A408FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763728913;
	bh=FHxsdoWewpAxwTxRgaSCQTw0l93tbiDm9qFhLJBEI6g=;
	h=To:Subject:From:Date:From;
	b=qkDzafvqXE2mEczCDw1DV7K2ki2Fc5XY99l9BkoMMcSjMi4gg8RxtvyuNlhLKRlSj
	 N4paGtFuX1PZR0AYCPaZjqA9euBSPWbAg05bDsvuww0WdG33aForXfWZI8tbvvn2qC
	 QMKgkzPH4UoueM6c8F4q66TrqVyFC4ZT2sScleZCex7MGDPIwD3RXtrgHgfowtFmYh
	 5HFVv2Ol1qt6h+J/N6kVrrubazWLiz4Bzu8+xswani4AAon+VC6/a7NWCLzhIG8aIJ
	 nbZ6b1Dmtinwvn/gqzbXJUGrHSiYH0Icc6o7+S9SNTqDK0W0mHbvpXQpFct0USYO39
	 Vh3mJ72BUuJmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93883CFC26F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 12:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372891359.9443.12988005862850269586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f14915e964432edd4da0d23ec3ffa3dc42062afcb0dcbbb5b651c049eaed8da
Date: Fri, 21 Nov 2025 12:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763728913
