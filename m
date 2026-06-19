Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E0183A14
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781906794; cv=none; b=d9bmfPLEwdOTMhAy1UshmLvvwwccNVb0y0/YbZJm4Q/JOxNd26peW2ABC1XyZcjFfGbbcv0C0JTGdFfKKw0jCpe/s2hZ8iwQEkmPdgMGXrFZaXSX0qM4u/u9oiEsptF+ZGDwk8z3u4RbBUyN2QIw2+btGsSlEpxfTm+lruXiTMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781906794; c=relaxed/simple;
	bh=Gela/0vjCq1GrqloVDr5OFk3JPwYqNzaf0ChMy+AWYU=;
	h=To:Subject:From:Message-Id:Date; b=O2jMNzuj2R9s2s0fH4xtadxqbXqcCvXZgjLAdEJPThPDuIdC1f35VHTSoSWTAV9mNbKzKpijUcqDRog9G86cdw+J5Xv6dmPvNX/+4OxszY5lmze8x3BFDzlljw7sdHIFcZiVblUZqNGAqUWud5xaINcuXXeapSDSdhBnVM3xwe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzVM50D/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzVM50D/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF17C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781906793;
	bh=Gela/0vjCq1GrqloVDr5OFk3JPwYqNzaf0ChMy+AWYU=;
	h=To:Subject:From:Date:From;
	b=RzVM50D/2A3GFwX5GEg4VCk7A7CXc/D/4N8DEFR7qWG3Rlk89ksSjoBWNpuFbgTbv
	 q/eMYV3YIUISQtwhC8TvTXiI94bAhkH2TCEebssItjAai/IW6pZ9SWE9ChKnl7q3bU
	 1KHld8A0BxtmhHqecixAu9j6C4e2UXQlnMeLVm+afHD/vFLL5YUeUZQilLnUPGrvzB
	 kX5k0GTmO+CixaxaeQSF8mZFfXeWN1Q4MvgciqQrgVQGNKpSUug4IMXptygL2SOHST
	 cAdie5SX7mSMdAbkOvKdOmN16Ds/RjFT7P5Wrh029njDoGBMvojn3MHtqMjdRmj3Fq
	 vYbmhYYBedSwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB63CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190679369.8189.14322959905647470013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf04fcafee7019d3178bd7d25da6075c502f441a3f7fd46e549421d16490d99b
Date: Fri, 19 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781906793
