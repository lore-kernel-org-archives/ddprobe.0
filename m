Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1123A1CA
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714189343; cv=none; b=XbZ5caUBPPNSQ3fjw7FrbtiSE3U+356Frze1gmxVdh2pDrcy7O9Vdmm0u0WdrDfgwZgFspddRWKD4ewE0DUzlTuxop/TinBQzVTaCgVZNnnJ6V6oN6hmiy4bCYNuVR7tCPQ9Eip04a0eLCVzAmAU3eTLeBvIwWLcE8eFZjUY078=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714189343; c=relaxed/simple;
	bh=9l9xu4rCf3Mne5tUlSKMZhqXftBbfvsKA0fiCMLzghM=;
	h=To:Subject:From:Message-Id:Date; b=OeG/StFmkCMlJg89V9t+m9nQqhvE6l1R3bhNs3Je4opTLpXyDp24lng5+rT85D3/Bc6i5eFAN24VooARVsFLKCYvoPeKGKDqCSQSoL4TRCHhqFVYfmpkMKIPc/237MJI0wgg90N+loLZJm/OyJcFDG7BGSiOMpgzjfgh/FnkkLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK8OtbVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK8OtbVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD112C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714189342;
	bh=9l9xu4rCf3Mne5tUlSKMZhqXftBbfvsKA0fiCMLzghM=;
	h=To:Subject:From:Date:From;
	b=eK8OtbVA6avUOdbCimYVHW02QH9v2G+5heutbXWHnfr6G2ubF0VRKU2VlKDQCUvZ7
	 3Zm9uE0rhPNEfqRhWf7nZfIoRVOoPnTpWbVqlfH7sHVXTLkRYasS9KrS8ICYd4ORPl
	 XqzsN1HqfuyaeivovihAI84weEqVMoARy4y1ZUY6oSLZJPywrnXhnczh8t0HWryj3f
	 fFoxzaVIcTYPHk7pvlcPerRQjRkSHXDcCsXxuKjQu3dYAF+La4ARlGbzFpmMywoNrL
	 Qv5II9MirJetp4H0AHe7dV+y7OSh1ZgzK7ayQ5luoso1Jr3mSXP7OS4wSzgRoA+HiB
	 2Te0c5fCwTCDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD22FC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418934275.17067.13347690239891898576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcf9902fbdd204235e5cf12e181f0c45f60b2e9519fe0180a8fe4e9506ea800
Date: Sat, 27 Apr 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714189342
