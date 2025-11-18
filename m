Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90CF53016F9
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763430714; cv=none; b=Ddf27DE3jnN0g+whx72WAp8OBnwHxh5mf8TLwqOvijSTDrjnBt4fagl4MRyvNvEeDnUx+FM3uNTuKgV8GvsV1BPcTE3gtvDXFTNZ2vg271mDMxgKg2yfqJeBF08N4tT0lLYVo9gXJqTWJGbJjn1SqU07y9MuKldkwj8PWr+dM5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763430714; c=relaxed/simple;
	bh=bawE7mvcmoomUABoHpLVtMpSk4F4NtmhU70rS8PLfR8=;
	h=To:Subject:From:Message-Id:Date; b=Qub7iDoPWL3vsGnLQfdK69MTXSejij0WZ5FufZCjG0FRm7T9reQuRAkWQ8wHVEs9miNVlykUXP2N1bd7tJh/EJKXhycECdVpeygOR66lNdD6+0/RGDqGu1EiPFU6rakYz+m7mmj/yexXWQPwM4uG+YCHBjKUOgOEAOStVoYQzq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1/YTxUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1/YTxUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EED26C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763430714;
	bh=bawE7mvcmoomUABoHpLVtMpSk4F4NtmhU70rS8PLfR8=;
	h=To:Subject:From:Date:From;
	b=M1/YTxUh9ciKsGx2IqzD5qsO7vMPcAXH+aSVbXaEUZ/DZflUid2/W0gA1z5ZZiDy9
	 r2pWHf8V32jSj8tlth/zdCgChGwXCGnMmV6jgeKgXVVMx4yXYfLopNdVEgxtF8d9iI
	 oqpr/jUGQKfMNu+S7KKrv3YUC6IV8I1KiX+yAv9SbPv9wB1YSIjBWsoMEgB2mSn1wx
	 RdosYM38w2fFbtPsHteqioaHa8z10yHrrG1daL2VNwRJtkPpQ8MrYPvh/cQ8/dexx9
	 0efcL9NiPPAevbCwPkqI72flTHT85LaIsbvL0o/v/TeaHzkLnK9G/medGtGzvrz8mY
	 nxE3Mbg7lNiGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F2CE8D6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 01:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343071358.956.14584143438831157746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b081652fd65361ffdaf8a1f37caf3bf24b0391ac7b6524a9dd2e8b98b5bb9ce
Date: Tue, 18 Nov 2025 01:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763430713
