Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D652820298D
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765224773; cv=none; b=FK+NM+s6W5+KyTn5olMzeebJDclEnAadz0wciGq+V7cMY3TVl6vyBud53MX6REIRWQuRFa0xaDr/dIuY0JrXZEB0EZv+74nLDMddYm4VCXhecX1b235mlUCUbnIbF0w5kMctF3fRtC/7ZcsqNP+N+HFmMcJSqXL/K6zjWKXWbsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765224773; c=relaxed/simple;
	bh=0UTP+GkuxyZAyYTXsVOEVTVb8mWC1V6Bpr6LdsTYL1M=;
	h=To:Subject:From:Message-Id:Date; b=MlB8NpF0GVUJqBaVlnwZNXOvPcb4fIPk5UJrR2TNqMczMX2A5W7ARFsAnnEHEY+ykjbr4r7dMHLHFyNHsSaywOEnscLBx97apcAPLXxVG4ukT9AgA43bmgLlYoDzmOmeIPWN/p4U4PazsLncqcoTjAnt9hOgE0sonQqEMLBVRVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I70USY3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I70USY3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30E1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765224773;
	bh=0UTP+GkuxyZAyYTXsVOEVTVb8mWC1V6Bpr6LdsTYL1M=;
	h=To:Subject:From:Date:From;
	b=I70USY3VP83ZirU82R+FHaN6RCusw+WAV7C5QNGrHmHS2glmv5fWNH32kFFFE86Oq
	 GnBDxZJDnk+AC7wjdo2cg7nklso6m9RFYPhAbYH53yUtvqs3axO6J/WnetQkLW2huL
	 fRE9Yz3kLIWZG/eRHbRo4xsnCZTqiIAP6WIt0hHdHF2uGsHSumWtqJre+psi7RvGUp
	 GXLgDbsCftOzOLmkpsWKa+QC3FOfy/44LwAYnQjPytGqDGuI9TA/dkry5Cepaa1mTL
	 GrijfYVE5A5usS/lJ2RqCJuzz2j0rnueP638/rypHfCbmBIV49x0SmRe8BSN/XLRJZ
	 N3TV1AO29IbiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B53D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522477361.24619.1860595071590691125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad214f073ec472a1897cecc3b120cf0e925a4e7ca9a724fb670449254e4f8348
Date: Mon, 08 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765224773
