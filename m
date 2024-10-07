Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19BA1DE2B6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728326754; cv=none; b=mjs9ZjlGlLfyZNpspL8zRy6tgCz775frmDq3U1FHlIq0Q1FAERtjulvFBRxiD+tRJwam3T8U2AUy0imXrVOh3Yb2cf1bulH1JwhK7+0enfPhTW9ZT/gmsYebIqVos7UC/f2UDozjRMnXMYqviQhH5mHG9QZ1MjsC2b1c/XuQ27Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728326754; c=relaxed/simple;
	bh=KAKPRMCIkAWH5q2qarM49qE9OFk2/kQ0cNKWdFcKi9o=;
	h=To:Subject:From:Message-Id:Date; b=CivOd9K7OARMn+vqWz/7kOXKGPcf1bZ8qunjQG4PhgctsvU3XXAmnWdFxX4Ew9wvF1Kr6fETZ5daBLKvj5qE4qgs/s28u+AQiJFlgL8pLXX0iz/nuO3/W0k2RDBmlD//XvHLxg7VwXYF/fft8nTvgCX1ox+hw32J3E8yuljtdac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cletnYvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cletnYvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F084C4CECF
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728326753;
	bh=KAKPRMCIkAWH5q2qarM49qE9OFk2/kQ0cNKWdFcKi9o=;
	h=To:Subject:From:Date:From;
	b=cletnYvlTSsFOCAvVXr6LFw/uh1xUzf5hsrHNk2qmS8f/Ob30ikT6eoxwPgKrSct8
	 DFl9wEWKE217vrnv1HYQibzEKHcO/TDQdmrWgCsagMdFKm6ZMTW5MKYBIPTLDTMGLf
	 SjmlWFqyKEvTrFRPcTHz78zgMAn6tR1BDtXO+j0SRVx6DdUYo86w+w83/zefd6Sr7G
	 +eSZ7hi3lzgFXAWtEB6ddTXWZYjmuT0IvWNWXfNUvq1PeLujCMXUP+YMBIvX8O+ihh
	 tcX6kanAfDVx7PU9HLp1cA7XQe0l5scJRPotgtZHqIuBjYO/nIm3EpDpaLZrWemlKw
	 inV5mCaHv2Cww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F3CFB452
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832675357.18333.300208094442230450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58eed309343cd44eaf8ec858ee66c5800575edf8c8cfd71ff0ce1244118d0a21
Date: Mon, 07 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728326753
