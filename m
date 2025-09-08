Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFA31C07C3
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757327395; cv=none; b=Zy82I5xTVlVFGtTL3efAsT7BbpSEvidv2zQ9vwdPeKLeN8EIrF3FViuZEgiUFZ+1JKIo3sWjqQRN11qsQU8DLhfv/cH14QBDr5rkB8j/6nnxjJdY8uXgmv094z1sREHR8+a6SH5LVDGpt4Mlc90hBcd91EfK0vtlefcwWyBSKs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757327395; c=relaxed/simple;
	bh=roZH6ePx4qM/u3YPLZ0yD2MXRTCDwlWxlVVopV27OzY=;
	h=To:Subject:From:Message-Id:Date; b=XcCh9sxNlTlZSMl2Ay7QrLh5yX7IDCJZm/VhG/6UxcmmiHrq+EBIVdDlg2GAfezPNXt7hjE5R0S2pBb/QI/dCDGoEELRU2VySE3fdN7uA4yROwy+h3np1+d8BNoPkarsJKRLRouKGePny69McZ4KlNaNkrr2JWeUMyrbgWvj+Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrqSx2La; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrqSx2La"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1936C4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757327393;
	bh=roZH6ePx4qM/u3YPLZ0yD2MXRTCDwlWxlVVopV27OzY=;
	h=To:Subject:From:Date:From;
	b=VrqSx2LaTqYxw8LoTqStxfqasTcmabw2sReFs+3cxGEsRX8zWcHnOcaJ442tVIMMS
	 vXG7W+w6Z7HPN2BVz0worm4wixFjnMOaOrVL9bTVRH5Ks+CheudkHYG1ApHUl4Epiq
	 Jph+9VMK9UIRF/V5EY9jvoy/8RrmX9IyQb/2QSZT/+mW2F+Ln76N5SbOShR1gMrvH3
	 +AVsRYAoS/saZ7pa3/o4Q0LoF2DQM4R3bA8Ts1uAzEx9OAjgtgDJre0eFZ2AzY4r4R
	 wDxYPRaDqLe/ixn/QRQUAYxbAs5+o8DbX4NE9g6hDcRyYkOcujzdxY/N+F8nX7Sfrl
	 hbWMLc83EybXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFDFCAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732739357.14534.9657748906587991905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e109a47733d8afca6ebac541b52524901f144cf269b93e9c767cb6e9e59b06
Date: Mon, 08 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757327393
