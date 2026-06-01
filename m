Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A18163CB
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780272274; cv=none; b=ic9aqkYnq+tsem4rqXcc4Fhi4TsLiCN0JyvgFfD42rrFGYVtqa+7Bd4tVALcov5cpaMeQXCsqD6h9QoBNFdWZrC58R3z1ZEZwwpaTnYHJbGHFrmLaH+OAp5U3sdX46q8uumBTClu8vJ1wua/yhgadh+0r3jGhMwoB7B/fHUypN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780272274; c=relaxed/simple;
	bh=6NP7CnF4Ym9cGGfd30KXSgRPFTh6uxFO+UE0YTBs6qk=;
	h=To:Subject:From:Message-Id:Date; b=mLWWlEEAHKKPd3rApIO9ItVfCaQzRCN6rii7kovSsJQC5CcXngvm3ktK2PdpHFygrZkvX1E4y6iec3r27DNMRjlzKi1FNnGHwJEiqQj6sTlilA6Zw42bBNYHe8DiHirTV6ziKkZ3CkV3QYb4pj+ilZ44uXUNKBLeGdishppgEpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtXxbAQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtXxbAQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C33C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780272273;
	bh=6NP7CnF4Ym9cGGfd30KXSgRPFTh6uxFO+UE0YTBs6qk=;
	h=To:Subject:From:Date:From;
	b=jtXxbAQs+mDvroH4qPpuKz4wHTTSbR40UnCh0KDaVIIMA8+asU64Eug8Kn8vuuT5O
	 YOBl0c5WS312P3FP4axInnWzC8h8qkXgHIB/3UWIGOcIQu+tA8Ag2b8DcMVYymjFYI
	 /s6NaNE3wR+vytQH9daXXWU0wYfxDYuuhopwWuv8BqTKFjdD2r7o7A953tdnqkXRA9
	 bR4Gosmnb9MCX4eQw2q7G6GEHQGjyrJQWyeVWckote24z3qsmD74BJ9efxowoi6a+g
	 Y2EfioCLUNNGd/tGKz/xk13kAPVQSnMWVnet7YIi/TvjJ973bbj+2W7ak0OZJx5pre
	 +HVTlu2Faxi0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5896CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027227375.8125.13657689028944125209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d992e23dc8f6ef4a6b353591ffcf46a1c44993c208b8a6e02dfcb85f6dbf87a
Date: Mon, 01 Jun 2026 00:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780272273
