Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAF11B412B
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736102754; cv=none; b=O9DB9CiOIlWWG+bpMobjhgW/ot4bCyKvlJ6FXYzlkWH6x6Sa9UtJW1VXJC9lRhc34kRuwpdcq9qsZF5aHiJJgxaFIXOtRY5kFHJLBI2Z7DrtJuU56IzRt6i0emzKFVcxolgufVnry3Pc4mbcvN2h7AymFA3T8DKq2xyFYSZRpQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736102754; c=relaxed/simple;
	bh=BWWYrMAQklQkw04GcsCy2xlEZ0/e+tgwCiMp6L+VmUY=;
	h=To:Subject:From:Message-Id:Date; b=FbibAZ4O0JpHBlMmBZplsmTOxrcTQUH6Zpo3E+yLUVZJD4ntfpQ3wVeu24I30ZDtner9DVdcAvUO3H00duWAY+QDglS/hitIy6gUaHPDclZ9JblMz6UXPJ5IOhKCpuU1IYhDtccElyFDf1t7avpYAa85vV79mmFhJdSPZvpMvkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJEuQzJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJEuQzJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4F4C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736102753;
	bh=BWWYrMAQklQkw04GcsCy2xlEZ0/e+tgwCiMp6L+VmUY=;
	h=To:Subject:From:Date:From;
	b=TJEuQzJZqBHaPYBSqST8KMisU/wW1PveI8LYQuFg4HRYqQaRM8by20aA54Or78sns
	 j+5oT8xlZnnr1G9KUcVhIPO9h89hvZwYYUfrbvKaNM1IB1N49Sjcju7W6FSrUWk+E0
	 7hEQ6BZYnsupil2vrcKZBIBvKgJUpoUmLui9SyvlbGCVBBBkV6lJYoHYpsoDraWbcV
	 XK9TEXxJFMc0A0ML9RNamF0ZILPIrFnmgnwaZHLycI2MIpuUX2/JyN6WSJbI33FB6L
	 dMjjMl4UXIGPO8irDMy7bUqHDKjgw4bwtyP8HpXCLted1mZnjy2+nA1FRJqX2KTq2S
	 NbuYkHlcvOqig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9670EE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610275358.26645.3582488987615934328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29cb0c6cb58cab403452251b5968c2911310ffa8125f1524e2bc85aae85794be
Date: Sun, 05 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736102753
