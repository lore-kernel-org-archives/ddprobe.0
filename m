Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D35BE48
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717383923; cv=none; b=M//f0JtPbOqqAjkm0I5FFNyYA3JD8abd5Uc1K7vMFz/BZ8V+PX3XrBSppRW5uHMedpSrJ19Q2gVKytguXDhpaOtWU0oWa8eU6jyKRDptLvmH2W0v18rOC/Hazs2LzP3340t0BwCO7k2PeHvHlVjGy9CVDRFcT7IVyMxaO9LLemE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717383923; c=relaxed/simple;
	bh=DJOLa/S2u+AhQOFa4ogLKJIxhCQJMgMJ/xTKnagS/cI=;
	h=To:Subject:From:Message-Id:Date; b=dcsReh7wW/HcJreuGg0Wj/UctD5VZEh7hMNd+U6MVuryolKVDuBfqxxBOANjGVKvIqn4AwXNApc/AcJpDL9pdmaXe8HOMw6knZUaNs5FvRHE6KJ9ulg5ZB4bRliwQUI40QzvAOVuWXeWkcjlXtIgAz4VoZAMugaYSEyHtPdyUNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YugX8Vf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YugX8Vf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB8C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717383922;
	bh=DJOLa/S2u+AhQOFa4ogLKJIxhCQJMgMJ/xTKnagS/cI=;
	h=To:Subject:From:Date:From;
	b=YugX8Vf5VUI4LwD1uhlevr6VqA6qtxK0A/ZpXbdrsiZ2HE664NEZBoQussuJb3GDt
	 3JeqCXcDhOr8jYdemQ0R/3yhmh+Bim2/PfFm4iHkG0cHJ9MWZw2p/JVaIzJ71voJTR
	 rqloBOjsOkRO2h2QRYqXaaUfG6PBuBpFl+Kvdf4JOHpm4pp41N/2pZaBfTHBOHPNLG
	 Aq1LODQ3aRldrL6vs+0w9+rxWMwpqs956vfSmjbZS1aBuQ7xUtiQq63bq8hF7aeIFE
	 AYRpaE6Ugmvs9sLvHfkSqXdi2uRk4+56q5nV+Onk3RqFV30wmQ8+/Ha3hFacCw+BxY
	 HvvXJxb/qe3CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC98C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738392275.24939.15655900613181532959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0784a8bb05f35b6f4b5d821d1e09c51d8e8674289ab4242d14d50b4732fe0f
Date: Mon, 03 Jun 2024 03:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717383922
