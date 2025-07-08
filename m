Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA8F1E9905
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752010194; cv=none; b=seSiVxCvBp55MNI28G/EkyMZXSeqTXXEnZgrcklrsbOrD3Gxt2YKfxnHr6yBV3V5ChKL/E1Chzt+n6za/nACd710I17bNB9c+EMsh69Hv4lAe1ysohMO1Q1YPqHucB3SeuOMpzC9h0NfeqJObESFGcQHELgyn0YKoxvn/wBvsX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752010194; c=relaxed/simple;
	bh=4cX3ryaCcTtcky+hkOkPztWCZpOtqN0c6l2lVFunU1M=;
	h=To:Subject:From:Message-Id:Date; b=OH1t8qEZ/BKWDsh0iXudxxmA6eBKSUrH5XCvNTSGGnc8k13mFS0px/KUU0VHG7x/38GBxg4Ih1KGWelvoRBHaa7NyjtSpi6sukbSMY4Mo2wQMN/NKdfwbuAIl4hVHblpwKKqA2GPBBHOEw30XHBjQ43PvNmHphY8sKV1IdaG698=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5ajAjQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5ajAjQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D5C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752010193;
	bh=4cX3ryaCcTtcky+hkOkPztWCZpOtqN0c6l2lVFunU1M=;
	h=To:Subject:From:Date:From;
	b=Z5ajAjQSHRIjCzzP4tQIDsvCXLfSEmSVv1txwSVGLSmvH5rmsX3V73FhDXFh7tpPs
	 Q4s6n1VCXZNLXkecIvJDzve0yOBS+AZS4zCduOxTeHgFjeXfnY4UBHYt9FD/NugQtH
	 lG85erxL7uTjX6tP3uV20e9HcnfE4DnBxsMo0rpKsD0f3w4ceGPuHQqgTqlg4eh4gW
	 4WIotzEiARQNeRSjZRbgFqcvB0o6WtAaA0qEu2quycdq6cytqFF2/wobMGFz+WAwnF
	 YjvyyURLNCLBTo35TxgRAZ2MXXhpt316GUDQ7O41fyVk2ssnljVsIi/wQclYFrxgPk
	 d14dyoTON9g4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE07C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201019358.16006.18115289847655016425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc72ce0583673633c5cbd472af45a120eaad04118e54a0487c808a62ea206e25
Date: Tue, 08 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752010193
