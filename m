Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F18F1519A3
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741427934; cv=none; b=VhTJFTyvDdLutJ3ky9oow/wG8sF5jOfVuaDuWAyYf+NKJhPdsvDPMIb02pY8O+8gER+m6nGK56gTGf7r1grMFWyDsmV8ud2IA73jZDOMGPFH93MZ+vQ5gv9CLkdDfOHVE2/x/saNs2bAIWURQP8pGU2hHSeVTHiiKxwSKTvqCdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741427934; c=relaxed/simple;
	bh=NiD6gLyCRQ7haYSj/1kpOAjkXHr4lHoA3x/6qYvgiko=;
	h=To:Subject:From:Message-Id:Date; b=BvOUbGgGMgDUPHfD6FqZiFvCPy0UyRfKajp7HY8a1fmY51F0yPTSPOUopw9lB8p/sdqVE0OFyP/amF8sb0GKWaFWNPVW6SJQnd4TajHEiMvH2ZF5L7QbL4q38Q/siWKRebvS5D2EI655Wpcep5HhK4UNbX4tEpuDepU80q83sWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwvVqXCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwvVqXCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB05C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741427933;
	bh=NiD6gLyCRQ7haYSj/1kpOAjkXHr4lHoA3x/6qYvgiko=;
	h=To:Subject:From:Date:From;
	b=SwvVqXCrR6+U3ECV/ybMqIiLjfDoABBUDlOfzQc6hMLRfrj7f4JJP9RRykzC3/z8R
	 hOFWpufZjoiG0Mfc4JHAd+lx6lTRKOHQ+30O1hEFfORa9oSsu9EAL7m069wLgiA6Yy
	 nEkvNagbhbGiFnLrQC8OnOWLuijJ6WF55akZazWMGqvhEww54E4tnL+53uXGdsZdgW
	 LGn3zrcNkFXg2ZUSo4txcnSeYdNTIPW/7XtrP/nlIpRRbRXcw7XTTSUVep3YUWk/Vl
	 fK1keHujVCq0gVRup2ocSzNUCc/GRaRyyY5g03KRoGVXzWXItcx1Qbp7ZUJCNvHApJ
	 gezgBAQFfXeAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EF5C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142793360.19824.10896969519245135497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b434ca8653e9ac31c78d888cabef3cb134073261a54d7145c3b4dc1db47ad5
Date: Sat, 08 Mar 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741427933
