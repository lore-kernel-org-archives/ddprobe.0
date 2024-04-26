Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42439148FE6
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714147343; cv=none; b=SSnnyl1Qs0uaAwE0QVM1qV/kYkR+43et91QC6FJIaftc18Hv/Jja0bERlIV5vvHS+Kxx04r5RKKVF2qz8Zm6GM5IGAWIkWrNOSCmvmY6VNYueKTqhA3bxNA1C2P44MlGYPefujZbSrUoOs8S/6SN0nyHB9ggU3nGksB9AVC65Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714147343; c=relaxed/simple;
	bh=r8/+dWWJrYDEzfsrvMGL7X7m5OXHiDkMAO7YPak3Oss=;
	h=To:Subject:From:Message-Id:Date; b=gEwfs4R1FV5OFM3L4QiorFjIyOoQBfe6HE/3ckHWNX8E223jrkASfdpKUuPyIiWUZTqUbJupbUDc3/ymO68mhn3FfeETVD7AcHLkHpIsdYDnNuS27b0/g+ocGmAXUS6VR0YaVj2O2c37xo1LtvW1YEnjmjVTaZEvOSoKalv9sHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZUpxQjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZUpxQjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0E3C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714147342;
	bh=r8/+dWWJrYDEzfsrvMGL7X7m5OXHiDkMAO7YPak3Oss=;
	h=To:Subject:From:Date:From;
	b=qZUpxQjHfpBcOj+/5B3RxcH5ZbeR57JL7mvyy9O/gLhdeBUQMDYg7F/NK2DOvBxdO
	 HQwwHA2qP6eAtfDpPg1jl1HTTEdQfLmCgL4Sh5InkBQAb9NAb8dO8hL32O2vORWs6K
	 ZV1NePv7+vDEfl5UyBXHbeFHTNFXrP1iHljnv+nptod5rdTmEPIn4JKrOFpqcC8tyq
	 sVe0y5d/K1R9EloXh5LISQKs2EUl91gtyFsX1j92A+mmF/K1rzBcpD1V8gDpZ8bzkT
	 ++2w2tH20BZ+72NriSSFaHlYywRBDZaSctZIjTwd4y8Tqe6VUOkBUJZJmD2621S80a
	 Z+b7Itm9nJ++A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB118C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414734275.26156.17387506830583394561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3991a8e716d15a981750817415a735f72dd0271f5d4637d8e580a93914a40412
Date: Fri, 26 Apr 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714147342
