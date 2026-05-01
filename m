Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2585F1B7910
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777648654; cv=none; b=rGiaFL9iYyUu2fp1xJ/F9lWhtqHrCooV+LkG7+Myl3zMdBICrjZ55FWGv+qrt40qLdWvlFkfVc9sTQMFM4kCkrNPuCchGODo0OmWoANTeo4mYNxrtbuntk7pmn+IWSrs6h50Xk7XXBjUhGFNelkjuuXVGjqcBRU1v+BeX+Jp0cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777648654; c=relaxed/simple;
	bh=WrRfPXw1ck+Jr6cdGn79tFChWmAnnNUxnMS0QeyHFRo=;
	h=To:Subject:From:Message-Id:Date; b=rG0Cwq1k0t9wbYcZANSO5X8FYRbrpnAo1HUIF+NCdyBEaNiOzLEs6z6NMMvyL2Mz6iLxcIqiGk84ZMk0/mn2X0/H3E4MRZ7AeAq5D+jtLupBLnP2h9MZ9vjYCaaMrhQCf7fV1RYf7ruwo5gZAFaG9qYVsIXTR7W4aaw7HJJvrNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQooNkb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQooNkb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC0FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777648653;
	bh=WrRfPXw1ck+Jr6cdGn79tFChWmAnnNUxnMS0QeyHFRo=;
	h=To:Subject:From:Date:From;
	b=WQooNkb1tHLOgVoV+XgP9I95XIkWJ3LTaNDk8oq/0TQSmia4mRMImaAVmN+2EJVbB
	 ICENFmBkjJjjPRyZ2gkeaVTZBOFroI3espHmDwbEjcufB4s2trjDVMfj2dYIvhd8E+
	 yT4Lpx2hcWnIhpku6ZzVKUKn+wXqcDpxRMkmHIdiaEVna5G/qSr/rScL1SdVWXk4Tz
	 2iWhBFiN8/l2ZK2MTZ/JBpNbHuEhQg3sXf6druzBMpCAaJFjTW0pNJRzzwZsHF14ZI
	 2igMEqJ/c8PKnRAf5JmuQZNRvS+2K812aawHa28SWsyIJFRtxx5oCTOrn4gmhleGxN
	 9xg3gh1+S1xfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2BFCD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764865369.16345.5963230931838492758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad79a3d0625b1bda7f584c8861ce8258388213b80fc0421a8a33cb07d821a15
Date: Fri, 01 May 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777648653
