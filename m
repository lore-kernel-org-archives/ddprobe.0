Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C1D32E6AC
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771326294; cv=none; b=RCt03YJVwi7CbqlK90tKILAofV6udHRZsSwDm/Ro/yNWsH40CoGhh3SRAgX8rOhpbr3pPDG6nULdvYa7zdlhJQDELl2Q9X+1O9d5XJub3YFXhTzdyE2Kv3qQuOC3eXiB0m7yHunojr/yP6rgol6aK+RpAUv3J7jkN+8kmK4FsnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771326294; c=relaxed/simple;
	bh=W2L5CU4REGQPDqgDowKQ7kmQwgGigmB2lLdpDVHzsEg=;
	h=To:Subject:From:Message-Id:Date; b=SHEEGkp2maGQ8jl/Skm6maY84UTpcz744C9dfRMFdNAX9lptu8GG1aeEt2U+XsY8jcDhuR6BySMNBuAK/SHuIENnTRQ+W0wf57UD4Jjo5xZyXdOTqUMc+dKsk0l6R7DFsfX1gT0KWnx0+YkO37X10VaW0R2c/NCUYSPcOQhrbVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5uLYCNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5uLYCNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE65FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771326293;
	bh=W2L5CU4REGQPDqgDowKQ7kmQwgGigmB2lLdpDVHzsEg=;
	h=To:Subject:From:Date:From;
	b=A5uLYCNd3PLEebT+g8cv3GsxKivHVWoI7X6emmgnbYc2mFi5e/jNTN4XbD2BohPM/
	 gOxJ/KptgAcm+lZlZkfsqHo+EkzQlBC+QxnjvLIOgP2hSTRE4xVmwvTEujB2Jb1hx1
	 fu5JeAANFISgcTPBFe83g/UJ01+Wk1qk3eJqltb4C5UlnVy2Z1XcM8vIqZUXd53vf5
	 rvi9fToNoRahuwmm/fB8FMC5qFebURF4rZLcdjmkqaDKr8+ca52DypsufofveIPyyq
	 FFqL8Dw0oLbHp7ekjbSgbXx1krHbbprkEaWO0fPXpk8lPD93QhvbhLps0i1WfRWvb8
	 Jr0F2QSZqlolg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97208E68172
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132629360.9201.6664575712922640538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f88f753164a7e8b80e14f4f72083f2b75ffb616286a6a84b681cf8326e1ed9
Date: Tue, 17 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771326293
