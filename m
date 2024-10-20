Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5431078F
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729410954; cv=none; b=d54HwYr/wRrlIot4mwIQREZNQIqwK8PLX+gzRBzOd7/Wzb062iy7mvcPPAd7S87WCoIRonzQUd8VRIxRdXNvp54NAMhf/zjYKwyZr1WAWWsWmNJo907tI6ZySGX0irb12BR3v21P6IxU2hf6bAuAgBTYl/xQ8ze1swZIqi6gtrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729410954; c=relaxed/simple;
	bh=EVBO+HF16iiQzwrSPAhRQ0nJlV119GKdVY2629KY7YM=;
	h=To:Subject:From:Message-Id:Date; b=UXM26pKWqhPBNr1g87CrZhROi6d4/RSNXhMEw3KuOelzH9jWghyMTl9cI8PRLEBn86NoMzRhR/iJM2bdJSGNIMWqo13U+VIwNAUcN+anklo7S0OAijH6ELLaQnDMyXF3zfVnrlbw1txZiobcmoo/j59Rv5SmFQHoW8QjIN1H+/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NudfbdYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NudfbdYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7556C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729410953;
	bh=EVBO+HF16iiQzwrSPAhRQ0nJlV119GKdVY2629KY7YM=;
	h=To:Subject:From:Date:From;
	b=NudfbdYkxeroMF1GriVdJW9SJgsP0dEtjIBhhU4RLrAwWU5OyqLfsqBXIj4Wt6iq2
	 p2Gcg0TpIrAZmAX1M9tfXeqFsxcaQSGyJc9f/76jQEKVAYKXvTGsI2+eRdr6KPmhpO
	 C1J2CXjZN2f0PTh7SIL4qJB1Yie7ptP754YQGBD61L/sF0magr5IwZgSRKqWt0OVqC
	 o22qsx2j+HkAbowKw6RpcH1Bl+5QbXD11S1k7T9PrmFPaY4D3DcMMhYk+UWXv25t1t
	 16CHs6G+FG2PHOMpWYCZlm7IWtCnCK+LyXzWx3cNB2SeGBB2nhcrlmYkCqGCBiABBP
	 5e7BC3p75T/rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D4ED3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172941095358.1856.7528782930365533692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3a0f29eca498104f16047c28a6f64a44920f300f3f20e0bb94ab831ea10ae0
Date: Sun, 20 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729410953
