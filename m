Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495A21F8726
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742245194; cv=none; b=lSJWlWq7GjT+rCdjmKItcN9e3qa6MCVE+Rqgnvmh+2Wtuz9f3HTqvK5Q5OGJubxIBL0I/WHwjzPrQ2rjcO6DP5PJCQso/QmH+D80I8as254ZXCMzHbh2KHh/bHhw+cr+65uzMqb8NbmX5Lfg497qp6a7H0Zz13IxaF9i0+mV+Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742245194; c=relaxed/simple;
	bh=UWsb3Btkfj4pYcSW6wwK/AtLyP/Abwg7xu5ibhMegpY=;
	h=To:Subject:From:Message-Id:Date; b=LJPa7NsklpzRCCVrFIE4n3+lveslPFICJ11L1RVU2ouxUKGHGYXRVPmCH7+7TdVxxTl9tdsXsedVmpLQ3IHZ5TMHdVXOIrwBs/sOI8yD/g31folxpvNbbWlgi4fEwjmNn3MLAiqhZW8uEEs+25OicuohkSYXhkKV4+tlpNmVka8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQ1bbQYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQ1bbQYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC92C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742245193;
	bh=UWsb3Btkfj4pYcSW6wwK/AtLyP/Abwg7xu5ibhMegpY=;
	h=To:Subject:From:Date:From;
	b=eQ1bbQYeF/IL5lh2DOCUhiNYcrju4FC7d32zIZSm5D5b77yn0qgyHIUvd7SJyxud/
	 FMfmg/8ZeZ+lrwk8LXbJvnagEkKEaFLcHNlhc6Z0ISTNMGSwRW2P/V01cbsq9bLMsm
	 nxHLjR4m1udgKf4vY90J8LyXz4iPnJsM5F7T82R0VboA3xf/wiDxtzSlAyZpyOiHcA
	 WQJlnxsuamcqKLKRhnsaz+NznzQMF4Bnk5VcNfByqmvtIHmvm7uB7m0dUmOP/OXyz1
	 QU8LJyUNMDchBlKhiX84JtrE/Q0cpyXCmUKFbDNt1yFXGajw3ge59QQ8rBwYCVvUkK
	 3CPIohq9yz2rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD63C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224519363.22009.1955899193670330954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532b2ed4d6e6cbd5a92935454e11016a559916e303bd846461b40ccc1eda1681
Date: Mon, 17 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742245193
