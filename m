Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9A92E7166
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758769794; cv=none; b=FolJ9wBbPh/B+MENajei+3sxYeA3jkkv9rwFQ8PNTcV52iYRjcAeNdPIntaOuo5ReDBbyhmmS/s/HEtue+HDHxRFmUozWxAQ4Owxv+g4PCYi7wML9bfgVtCS/imEzlIRb81SBYo/rpG9slRwUcRgUoZQAzOWvCBHi/MGN6aX58M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758769794; c=relaxed/simple;
	bh=wY5ASpc42Ew5Nv72ASGsaPiWbWeHKmgDWxuO9DZ79/Y=;
	h=To:Subject:From:Message-Id:Date; b=hbq9ny3xgfyZbJIztslrYqYz1RBzpFTKyrPuzDuceJXAW0pdkC5c+zmqKwJdH03kYBJ99ebUHXklhAfm7YvU3lpvoMOmxunVHAaR+2TKLA7n2HU2AKDiFWm3cCPTRiiVNPi6+K9MGtja/ryp7y7H4N8j6zs1emE40wbgVHjerRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4eYVu8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4eYVu8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F38C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758769793;
	bh=wY5ASpc42Ew5Nv72ASGsaPiWbWeHKmgDWxuO9DZ79/Y=;
	h=To:Subject:From:Date:From;
	b=N4eYVu8+F/7eiN408Yb0fHvDUZWrX0SezUGTTm3gckfeQsiE3Y7FKZbsSSXPox+9r
	 StJ9CGBRJsIUu+KciFs41Ib1GVqqmWHfiSlIDgAuZTsVHI1PYcLiDJnogCZz5QUAHg
	 y2svSK4m+2y3RE8r9mPF5l8Z5Fa1txz3KNkOfyKPc886B65s2b3W855lLpfscBHmis
	 Y4KDDlEWEgtrWPDqhlfKrCRW4HwdEsAmIfnbtvLEaHi2/2oD9p8VnSMCKC6crIz2mz
	 e95la39kmBvlfnUdttB5I1eQVaMrPzG+OvbgbWd75LySidFNWSrqzHz/QcX5mKQOIo
	 QZ43d3zjNIApw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008DCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876979358.29471.17487494255682005425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5df671cd5bf5377dc274f876c9ce609a19a07d0c6deaa0f48e10f231420fec
Date: Thu, 25 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758769793
