Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40740156E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713237563; cv=none; b=CxRWr+wwRfyZEMXsj2+Fi+NcTGxEHRN5XOHdaiZ75Znux+wdnzco83WGscKDxkDSDGg37A59kisq1zztn9+6kBA2GOIGfy1ghiBIbRekxQQk0LDoc39mwDyKfwGhebpWuQ4C8+xG7QulFrPnhPX5jJB40yBAzDNCPPRuHeNgjCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713237563; c=relaxed/simple;
	bh=nL111F49yuGvTofSzJDVBY8jauqMXEMWkyvi3+yYr4w=;
	h=To:Subject:From:Message-Id:Date; b=XUHJzXTMOVyOnbAp+qp2XWCjSRXSVZAsO0fumjm4acYJUQvHjAcDiim2SDIf8jpIJ1mZlLm4vsXGutD0zXEmq2EmCXNYQNAP9H+M7mNsPdLEvtjJQsyVSQSDQ52oj+RthIcokHnl4vBu6vfRSOX4RQPo84WUaQI2ySpOJgw02qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLszKraI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLszKraI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5B9C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713237562;
	bh=nL111F49yuGvTofSzJDVBY8jauqMXEMWkyvi3+yYr4w=;
	h=To:Subject:From:Date:From;
	b=KLszKraIaLL7JegBAvANZFJKQWLFfs7xsHVHf//GU364FmUJaJwURieJrINA8r/Tj
	 ka2aCdcvAyLsz9fsR8sCVlJpeNB/7iJPm0wF2oa2EgVEEVeHjOtrIzbovScWJnlNed
	 9CPKPVABzqgLbRtlu8rX9WyWgx2J3ZtMFHgqCy6YnbOv2aeBrK/Vvy8VGDcm8bhwol
	 ja+OGw+6lbQ1MVpLphaR/kwPqwCCrzlKAfPpVMyfOBX56MswtHzytj/2LyTJQa8JZ+
	 N1yW3zhoJEsCLrg9FvxpIhgDvwX/oHyon0eQEOEVPDt7v3s+BPaS7C5wXXNCHhGTQX
	 Ic4b2fMErdGYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B94C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171323756275.1024.3414286089750540428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6bc779c358c2bc33151b1e2cd1a219fd29e6ae914ba493adc5079b1c3c316a
Date: Tue, 16 Apr 2024 03:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713237562
