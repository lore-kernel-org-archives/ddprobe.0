Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C36D3346A8
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760683794; cv=none; b=J6IQnv7CvFQTmMu2S7zpyWFRTd8gWKLlC6l3sBkWS/o49LYYHzWDsqffpLhjzHYVxudvQb2KR/+AcE/NIcvVyrWR+8fhCuiPky4fzPRFcbBORjzNbKs3iaqswjlvJONC+SDPpcr4stFLchPdlZp1cnpsUUopER2/cNeIz6/PA8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760683794; c=relaxed/simple;
	bh=gxS3slj+XVB7TwoM9ik4qh/ksddfQ1qtVaH6javXRcQ=;
	h=To:Subject:From:Message-Id:Date; b=SRcTsUejYegVFU0kOoeDHAPw9rIsMCMBBhprEg+a6ZPSKBYDN5WbY/1bExod5zlqVfTEAOrehaFPO4QNsc1KZBuvQiaZF4CutpSQrObCpWjcFOpIJCmVweDbOiiGePxB+2GUkcS0UObmbqg7ksN4JMpcAEDL0dWGFNAafL9L0bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2id0v+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2id0v+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1517C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760683793;
	bh=gxS3slj+XVB7TwoM9ik4qh/ksddfQ1qtVaH6javXRcQ=;
	h=To:Subject:From:Date:From;
	b=g2id0v+/eFP0TcWeAQJISP00PwmnaWI2ra18JvdiGJVZGlaOhQxUkiq0Fcl3jzrGM
	 Jz39KjAzJ9n2zGo+qK8D9Rer3mQheZ5MnxvS5/d0+hvn2yjt412I1AUfPkEOYzt8gN
	 mwMF0E66WMBwGXgBphIBlKiKvYiNrVdFtyeQ+3js/1avYvCMgxDXJW8N0X0DgLeKEG
	 D+fMJr5N7S0f51n6gMM9BljCSAov871RbxtbzxasshoO8M8qZN2p8HsIGK9Sf06HoS
	 x0BzNcublgIfOed8I84lAB5Vv5mJIdLM+PPLU2G4KCM15ak1w+zq0GcHGpWMmIabpK
	 wJzAyKvfgDYfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B4CCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068379357.14754.15856522954506280397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbe1e5ee5fdfb96386aa38c2fd8c24a9671de40dd3c6245c3c0c18083c39be6
Date: Fri, 17 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760683793
