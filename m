Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E35639E6FD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787958634; cv=none; b=fy5b/KUl2tDkfamyGycHBROgbQ77jDRAcFX63kqfigBcAeOmtT1ziIgKO78WeLZh3sXS/ntbGeDxmufg8A1N69edlF4ijWGUjaH3srDLThYd+4Eb84CwPwofR4AxkGNRLC1XMxq3v/Ga+uGZ1Rp6NfCYZ6A+GnJdKyY/DMIAJOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787958634; c=relaxed/simple;
	bh=E70EYBic93ckUk5zSIaD/frNtXp8OcIDN99uh6vsGoo=;
	h=To:Subject:From:Message-Id:Date; b=Jdcq9hi+Fp5zhmJ8GrZhB5/UHM/nQ84EhOebAzkGDGqs2LUCEb0gLa0tU3khBLmqDCFulBd0dlp/UizUEqIft9SQfh9JTP0FwOmbUPPUhVg+kjBEZpGvt2dS7DJFkExyuStZkWZ2rluDv3Z3qGf/ciMammy9QfOS5Dvp8I4zNvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDJc9aOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDJc9aOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDBCC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787958633;
	bh=E70EYBic93ckUk5zSIaD/frNtXp8OcIDN99uh6vsGoo=;
	h=To:Subject:From:Date:From;
	b=pDJc9aOSsdbGhio9cOt3/2Bb6hUdHdXtJ4yArlo4n3/z5W2IbnrRSLET2FHlaks5k
	 h9xvt5FgkQhLSRxqW+yh+FYntBEvmebszGamsuTDX1pk6EyHBHQAHcde0kzb+vlO8j
	 tPfccP9+Lxbdpiyif29ovpo+22/7D5XVP3jq3n/f/ivj1K2E6PElT2N8PzLbMauzH/
	 YDadIq1SPopnQK9lCu8HCi8U88s5j7Y+A8a6dhspWyusQp9Oqv0l577aLpNmFk9WM9
	 teZiTJVEDvYRUgcqvmhoxLtv7GSgxgrJs9H7xyMNB6fl2Io9eEh5dbyJ/zXNNyCY2Q
	 ZuesFdc+Nd52A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC3C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795863368.1785.9461645329748967499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255740b4c60a8f2eb21cb4ae398624909d7c22b02951e6f28ab34b013d028c8b
Date: Fri, 28 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787958633
