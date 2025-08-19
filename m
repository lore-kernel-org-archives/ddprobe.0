Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48522238C1E
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755644394; cv=none; b=ZPyWorUV1ocymAMcFnisTlQfS6TLLwlqnl+b21Fmbd1/B8+oRgVXtFukvnFfxfKh87/281pHRy4AxzvOJFJqY3Yj2gQ6odG0KmySYQVxGctkcuDwtPnFdO+oMhroZKsErSAa7sgD7RywhsZtlEDmLavZzt6cNm9DQ9z/mtFa8co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755644394; c=relaxed/simple;
	bh=a1RgS2KmqdaSE4Qq/6NAqczwH9mKm4P/gwRXTdg8YKc=;
	h=To:Subject:From:Message-Id:Date; b=UeeCBE4VnZC1Ecxn+D5qFm3SJJ+selZveRgvoihCKm2iVupjMK73d53soY2i4gzvhRFSF+ToHMNZTQZdo+cI7Qz1uUMrdIin5EYVVcopMxQbus4unKrxmAmoJ8WWh8v31TE5K8AnqlY3Fx4BT1FV4pNL3eFlWIFG2BFrOiVHW04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4ONhgPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4ONhgPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0F7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755644393;
	bh=a1RgS2KmqdaSE4Qq/6NAqczwH9mKm4P/gwRXTdg8YKc=;
	h=To:Subject:From:Date:From;
	b=u4ONhgPm3WGi0Z6oBdTse+rpKvY6DPw5I3nug8MFQ4WwW46PyAnzCn8QaKY8ZPldj
	 ofNbf07+P0SjT9CX2teWzTp/CQtkedSVG5vdiNBVJOnqUZvCVqxDTTwLafTcqhgag+
	 LdH8I9xKrMVVxeSymrAjHzRNTAEICk85HKCvzkMXgZeSXrfhn+Tl+AV6tPMA6T5dKv
	 RjzogDXwimt8muTDOArGaZWxrFGD9pvelP6mCq6KrZKw6nnzQcneKoc/mlEJqjm7qU
	 Hcb6nRW0MuiHzTFWISCaAlXAiSjFVt8c57RMcsM6GDMcVCEar03sbtGkM37vVmrDaP
	 pSFeYDIHWvccA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E640CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564439357.26920.9177365773995410852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e845a700b2f88d1da67e757d95b41637329061c8e239b3564bd1c0f29d2e2ebd
Date: Tue, 19 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755644393
