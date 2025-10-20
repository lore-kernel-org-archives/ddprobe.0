Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291AD2459F7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761004194; cv=none; b=QUlko0VnJP2yZqMe/gQwC/CNgzUwKt9iIiTuOHiHHvNfvX3Pe4D4g+MvfC87kNMTthxOrJwPpN5pqhrHYBBw1+GMP5vFKo3HJdPzUkbbGYNwIv27h5cAmugG1QtpKVAQMOPdizZgerdIx+/ho+LFT+CcT0uM7ylBs472fS6hJs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761004194; c=relaxed/simple;
	bh=gHEOjq13ETps5KOw+0+6P9JBNTiegBUx/n02gyeVMO8=;
	h=To:Subject:From:Message-Id:Date; b=MQX0ozTb1d7ExtW8FPBWEhWD18Qfwz7qX/zmt1WJA1dY/FuFG3VjL+dCq4fW0/yjzkf7g+ncPm3w4EZhytzGnrmb86VZkPmUseHJ2YJr2oJUHasMHzlSWLgOF6d3lrv9j4qU3fBT/k7RaZ6kxkE913gGgo94dXwfWvX67+0/MTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcDgpvkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcDgpvkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA15C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761004193;
	bh=gHEOjq13ETps5KOw+0+6P9JBNTiegBUx/n02gyeVMO8=;
	h=To:Subject:From:Date:From;
	b=dcDgpvkSRuLnfjlPB1lD1LGk4DoIhbT9eP6qX34hsUYCzsJdfZnERU2tWz9eJLRHr
	 xHE/4rKew58U5YQ3Oc/i7HaYCM/vI9DbpXzrBYUKyy8qxZqvBW1NPcalUZi9Od/+k5
	 dZUtv37JuPEimCzxPzE4rKq0QNTmiPqMolmzwFTtW/ORg9E+yZaDi4doQqowYBmJ9D
	 es1cd1zg+74BphBovDCTgrfT98KAXDpVRboF+N+9/X3c+MaWcxW2ZuJbBlEpeP99Ep
	 oJ+E6t/Hhgcm4j6S3zKaAHH2Ka70yE6brdfZdO8IsY9ZA+cbIhEwxjm5E7fOnUD0/w
	 43GKVTp82tQBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982E2CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100419358.23630.5085690646638263122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81a87cb07881a87c488cab95793bfd7d96d2dd7cb973b6404f0b4b64349867a
Date: Mon, 20 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761004193
