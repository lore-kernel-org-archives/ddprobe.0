Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362F5500963
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768062834; cv=none; b=U5yV5p06icvo8jM8BYO1lr+T3ugb0nmYbdFzpCpCsESLIkv2mhLtkzS7Czl+M2TYIuPEqBzIOZvjRPzPhlhixGL/v+PLnA7RmEhKxi0taPvdAg4S7vpj9AxaHlyj1tcL3sTRN6oyZbjA+ZiNQSrjo9dRu5KtbI2/iDagbAUNaMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768062834; c=relaxed/simple;
	bh=nRqX8b26C6OMepIRGvS7IqvRu8GQrexapKXWPFWFgAw=;
	h=To:Subject:From:Message-Id:Date; b=SD7osdf/BvSEtYWqQLiOlohbytafXtPx9tDUmwrHBeUXyV1ecDnma/MLS52mYSyl6lBnFotqDMv07LWq3hkBuHCWLHlZ/r662A2guyCdgd2PDzmVMHaP1HI6O+Eqmmp+LeGJ0xsFId3GtcH/q5nKSAihaYIxVmMz5UzN+Jgg4cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slieKw1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slieKw1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6184C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768062833;
	bh=nRqX8b26C6OMepIRGvS7IqvRu8GQrexapKXWPFWFgAw=;
	h=To:Subject:From:Date:From;
	b=slieKw1bw0ZNlY3RLOQWd5xsKEggg2XJPHZCWZwgCzKIPfe96PJZ/TwIxDy1azyX9
	 K9sLgtWRLvETvipvCwVEqeIFuByHiaNEdpbuUjSNsjk1CaFWrYZnEdH4SIuvTZV90c
	 NRYxPqLJhmIn5nctcN1QHqgvNx1yzH0sIphCqwnaHbqrHN9vr19bwB1FCD5MLeDHsR
	 rzRCELZ0riPUsH2h38jRUvvgkDGo2lzm13a6rX4ASp49tDWkUjJ/c6ZPBlDPYe+8rr
	 JpmDwuEHoh+HvARdHYCqhggMX9mX7RHnWEqk67XYELV+rtZssxUhs7ybplAunwgdkF
	 T89FP273KnLrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95639D277F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806283357.21094.7090716865600657597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3e4d4517ec2559f626ce0bbeda1a46430f1f9b191ef851fb9d50c1f544b6fd
Date: Sat, 10 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768062833
