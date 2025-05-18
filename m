Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4413D10F2
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747531194; cv=none; b=epkFmAvw5T78Hih40jvqg/hRaTn2xlNcBIb0ZttoCZTHPvgqOb6EERrJCb8/dnXX5ieZo5ntTJ+mdZOYnZTZZq5qiJ1oaey0dw1Zq4AtlabBQM0S8at6XgQc8o0qJ/wvvvOcSvghx5aHfuuOfLNLwDMITkkiBWKAr94HSYQBQcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747531194; c=relaxed/simple;
	bh=7Lc53fsIylHqm1oQ56Gb9LR6eCxJKwD5fw4q3NAmhK0=;
	h=To:Subject:From:Message-Id:Date; b=MT5KPO7oiYs24aQRS6ETalQKjAfuQITFk/T1uRWcDP8K5/fAR30ch7xw3LCg3XMFQnGGLYshjzAdt1FRQLA1gCFKYOTYXFj6ImeAIbv5N8+ZZCJiwIRlsyipEC8QCIO58DeZGrwZty+HRxIMs+DBuSiCZn3QmWFQJ387d4+zD2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMvxl+t5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMvxl+t5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA4DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747531193;
	bh=7Lc53fsIylHqm1oQ56Gb9LR6eCxJKwD5fw4q3NAmhK0=;
	h=To:Subject:From:Date:From;
	b=NMvxl+t5O2I4f+AlaOKhfV6OgeL8scjzrG3IJ9UBeiYCDImLDdhiW68ohsGwx5WhD
	 SUmTiwhhOrUXbkZKxK5TWpa7uqdbj85AGjGH5q1zSyQY87wffCh/gCPiQPXpnFPto7
	 12L8ybIJTSRGDJOKIkcMlO/gNGhqlhmzWnyjxlVsJZl+KZvRpL2HtaCetLo6qXa5k1
	 H2RUZqK+ODMphZYH7Hq/BmvPSbT3h9H0JBpzXLzaIFJwoCySreriDtlvjEj93u694U
	 4bfyI1UOFxNSFsrPz7f0l6Es/9NqlpkdNPQMZ25jWWXRBRTH6i1/P4LnGJlecbJFon
	 rayKN9m7o3qug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C6DC2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753119359.8776.5956700205182407390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51fefe8a45e05629ca40ef1f5a1c2b4ef19c1faca3047b9e2f9e786f7e5ab908
Date: Sun, 18 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747531193
