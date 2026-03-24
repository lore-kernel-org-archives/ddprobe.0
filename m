Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141A11A680E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774342494; cv=none; b=UwHm5bOzFdUqzNG//lpuFrL8SUfzoqw7929AkkvT68tZcHQFg1nVfDKFtAMdpeLNc/WjCSmdbXUfoFZssJuQivKMTC6CG/UqZBs67WqQrN7dZN9t9bSyX2+u6g+d79ALXdzHxOLEY5SO9ZvsuSb1k79CEQpIYPAaItZcY3jWeSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774342494; c=relaxed/simple;
	bh=/wId1+BILLb+S42S9OAlZ87fGvKveb45Z+At20wk1dU=;
	h=To:Subject:From:Message-Id:Date; b=fOlMMD5nx02/tnoHSNPcklLFlHmd4TzLqUAPYIl2GIesoy7GqgiwhmYH1ufWy/kX0utYFPfMj+G8qRUnqN6KL/2b0nbcQ4D43LxFOaaDxCGc2qOSjPnqihhpdW9nTKA+RKCeMKsi2zRVZegcb5lSx5QDK4v2tcywTvPvCOslt3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4YM52VP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4YM52VP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58DDC2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774342493;
	bh=/wId1+BILLb+S42S9OAlZ87fGvKveb45Z+At20wk1dU=;
	h=To:Subject:From:Date:From;
	b=I4YM52VPOrQdctEV/VKDRRTFbpFLu3kIkF4+vQmGK/ro1VrvLa73lKyQoKxaes5In
	 q2YkU6tb7MftzoGL44ZoON36/c3rjF29nqW9P0IoFiWDSEe/9MIFTUlJKfTp+ymLS3
	 ZsCBLbhSmme+Uh/Bk2oM3vmYXImexmPXPtMNBta3GCWrErakBTAtVa2NGwWeQgWkqG
	 Ln4x01V7s5m5ELbSqJyL6J4sYIxgAal6NBNl4e+A65Xx2hN/KvdDI0nf1TabESfJ1m
	 a31NcAQ4k+saCAorz4bpOOsHgDss652+nvOcrBoEXSMj+EZpAc+DfOcRrbSOPBCPHn
	 tlWXGbiWFM4Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9323DF532F8
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434249359.25755.7751895670713318449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4561736dcfab722c5d1bbb794853ee9480b312303c5305e78427cd196f250835
Date: Tue, 24 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774342493
