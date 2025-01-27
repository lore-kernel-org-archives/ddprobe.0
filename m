Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8B01FF7B4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737984354; cv=none; b=HFwxVguTcQBnVzspV0IKkIYQFAsfnYX8sMfrW6YUQwUsRromoJGreDTtUTHHLIntrv9l9UGF2fQ+UWsV2HJxITx5iXTXUnyac6ugR5r1/RATFVlrZrXwj1mV+HKnmfPC4dzxMZ0VcbjKnRPGipl+82Wl/y6G0yzyj6T/vimQjck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737984354; c=relaxed/simple;
	bh=VPtlk0uYyQsbASXGh6zaeiDBRCltz5FIwtD/8YT2/zQ=;
	h=To:Subject:From:Message-Id:Date; b=V+7PceAsKnuOlwQnmii+On61tPlPtIN3DYVMoEPqWjPoz/HKg2T7aKZUgjsLObWYVbe8PS5vLdLcjJ3cE4xM4Ipn6k1R6VfyFf3/rEiLjRJjopTyJB/Kj/vo6h0sIR4DL8o0mfnZTd22/oFt+pXhNnBBVoLfjeiqijh3fZFWJD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jO9Y/m7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jO9Y/m7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A559DC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737984353;
	bh=VPtlk0uYyQsbASXGh6zaeiDBRCltz5FIwtD/8YT2/zQ=;
	h=To:Subject:From:Date:From;
	b=jO9Y/m7n4jgCfC0X74u8gJb8RITvkPtFXbKx2W0sza9Nvuf2dDwK+8Ls9HE6waKKl
	 E/Kswrb0CT8VQNQ9VGUY8nF2pVGSVJRy+T3jDXW9w5qU8g19rtNAKUChaYZV+kFAC5
	 v39Imz43iBHHx2a5bEhXBm3mjEJrKIl+m+8WS6SWBV6kl2oiFxIfwOEzCbUikabj+y
	 CvxqJ5iMUrC2GX2B+fD3g9JTiIsoFUORblTM7cB+apGY3B1j4djlYVHb+7wyKCUbjc
	 uIEA42O8IqjEbkw15Qn6rEpw2FWaD0yHPG1P7LfIPBLQFUY2bviy7ORmgBypU5e2+I
	 41lB5WNAaF0ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D0C0218A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798435358.4531.3563963332986104098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69defacb1f53313884ccc4d042ad6f3191b0c8639765d2270debb47a9dac2778
Date: Mon, 27 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737984353
