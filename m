Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3853F8836
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747508395; cv=none; b=Havh4muOaMd5MPVS851h27yWTOCjYfgVovHowv/nZwLfMZrZnDkwe/DH+mD8duPqKRuoI/yXxOdSaYKS97s5DQBMudw1npKp1RzjsazJkuCUH3zIXEyUGVZgCgxUp2lK0AO8afOqWu8f9kj13nSK+iqFZkGl9p9MDYKU0ttpjQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747508395; c=relaxed/simple;
	bh=Xnbzk+eoQp1rfnwzFJ0d8rWViwXnQ4tTdyrrhZPMNzY=;
	h=To:Subject:From:Message-Id:Date; b=k3O2Xbqi5ukPdWwMAjn/Id85BDknplBXYxFamSmmGSDqd119bOQhHQxPU7ZsXz5hBtz32N+GD/y2wOb/kQ2A2YfOCW8BvGh5tqUmsR2VALMJAjs8SuoA8DGmsZsDevLbHqN2ne+bsbanTrzbl03J144LvdAEsyzdQY+qYPSL1dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZzxKEBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZzxKEBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E52C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747508393;
	bh=Xnbzk+eoQp1rfnwzFJ0d8rWViwXnQ4tTdyrrhZPMNzY=;
	h=To:Subject:From:Date:From;
	b=aZzxKEBvtC42tiZkhxzgX2NcJFIUF4b8vOwCkJf5keCdbJVIYYGFZ6HlmV8j9zh68
	 ZniZl/if+7laV+nRp3HYJA0cdxjaT2dNq5TODKiiyKackl7qP+BoOB0QK+wOwRXaYr
	 YV9rLsu27q05CoYbdQbEzofm/WTtleyjYejr+npyv6//7A0ZeIYX3NYP6NSoni8Y3Z
	 ve+6izpTRUCQiuRrVLpbZJi+8WWp4wGV0qj4tKHoeotwKPA62eijPY1BKvDcmXLFEO
	 qzgg6PYI0jx4Nz1N1o1MKNx34i5bOfVERjJrDv36Z1J2JxTnwAjosxC3IeRGma+0yz
	 7o/WYZXsMCh4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA8C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750839357.5945.8030333846117803484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89b3380547af7db4ec59e4929189f79e48aa06a23921b325e68bea4db6bc3d0
Date: Sat, 17 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747508393
