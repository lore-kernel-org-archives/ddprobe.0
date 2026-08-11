Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2BC3F4856
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786429834; cv=none; b=R99mNmIXUNFVbu/rrAMdRWoyFumQWpAMR5VDWg/8WlCPnWAIrp+MHRjDV3ivqR6W64F98PjGAE15Am66ewRC9jlpPxSee/SpIvPfDhCVxPvCRkjKRdV5JLMEW/qsPKEuF8Wo3sOYebcUYpze1z78WD08gQwOobFQz0XfQQj33Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786429834; c=relaxed/simple;
	bh=A0aezaqFTXxYyCz8r6h0VFJCV8eNpGm8AW0vvgw1MsI=;
	h=To:Subject:From:Message-Id:Date; b=JQfQi/rPJiNfltdbn2EAweICng1yPFIjh6qCVI1BTgNpguNWMI8N3PIG/OVYyxHg0JtMz61yga1at/OtFgDQp1ZoHCEuItxfvzToDd9FTbHwwLBZ6JiMftvv3SVnXjO9pSWG6yDNTTjFpl7GkN9A43jOsQ0o0rym0SSMTisi9cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiYTPJlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiYTPJlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A48C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786429833;
	bh=A0aezaqFTXxYyCz8r6h0VFJCV8eNpGm8AW0vvgw1MsI=;
	h=To:Subject:From:Date:From;
	b=PiYTPJlGEFl/AY7ZuovdNl5EWu6WbyRh0Cxa9ZDKoJ7fluoc6hHS1EOz8QLW/EmEG
	 VNip96nYxODkrY8e737wWu4U7GRQKmF2hqE68JPPLdOuHZIf6fFY9/kX19MtUsvHuh
	 e2EZ3Mcj+FWchK+F8ygCA/ID03Az5BoF/Ay1DT0zOgdtMOpKhAPfP2Zo9jfWTUelPm
	 K+hkrW4pxPdz7JL9YoYt2eRt+bsTQQ+5hmJRhtqfCs6+E6bZmXgsx2Wm9t90Hu7073
	 ia1LjRpt/Mc0w/euPdDt7vSfaJ0dF6aY8TbqDOoVSKQKG4WonTBkhlU9g6m8Wa5VCm
	 tFJne0lutU2pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80E1C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642983368.30780.18177135760995305488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f630f4f8506d3dd2b653698ecde5cc43b21a5f8631ea582176df634a3dfb2a
Date: Tue, 11 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786429833
