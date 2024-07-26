Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B42B15666F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721981154; cv=none; b=m0+0qvKFWE0Q1ygEhbHNmG6qsCxu5cH4S6yd6uXBZ/8krvCDpLBJsc/j2SxRh2K/k6BbR0Jbrm9gF6+AkqM8uVzp7goO6qD+3TpeaQq8DH2+p5Md5w2KXF4nQEXSSvlW4SpcmK60/voO1a3Qi40p6O+DSJfnt4e8vEZYLOTTaxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721981154; c=relaxed/simple;
	bh=JqDTHIUCg9meVg5njwhHMeHUg+J+OEn18MU915jaly0=;
	h=To:Subject:From:Message-Id:Date; b=OrFAIpetjP3Yn6UyJ4GtXWKjdAF4uaKcHfJnTxq4V+vsGqE+IPNZzVcDqhsNT95ANNH8HYsihia8kG7qAFawn8gNCtJjJXfhJd4imaMdNKApIYlHN1D1ZVrZPpS5RNQgeia5x0fnrwI4UiVOgh/qB7FEr9gJel++OrJEZZ4qY6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1RDwyjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1RDwyjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9280C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721981153;
	bh=JqDTHIUCg9meVg5njwhHMeHUg+J+OEn18MU915jaly0=;
	h=To:Subject:From:Date:From;
	b=Q1RDwyjb4KzasSCXnhWBC/8LZv/3SWkvBLY6aZTUTK4VF6JmXezGaPlbaOF+Ky9s3
	 mAjX4roVyExm1gl+OHYYEuZZyD40t3dasl2feSqsUAcb1p1uKCmB6ZyzsWP3WQSiZD
	 faDigom/W3UPD27P6juHWBV3NECKUl79N1Df+4qMu9jyK+3TKWU6ByOa2v26mfIYIt
	 X/GbopmPNfLeuWRN4WVS3hq0O2YyH4oU63O3kTGdYQmKUYCehGx3PAwW/gVMSMfFD+
	 hJnF/ukb699AS9l8ZATnzgAeIFmOth/aYRX+0xTIry23QsNabDMqN2YTba96nFWw6P
	 Jtxjlg4qnxf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF8C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172198115360.4119.14283522318599799046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d73b8c122fa440e714573bf7db319f123a8d67e4b3fc10b93e132a0fa71f9be7
Date: Fri, 26 Jul 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721981153
