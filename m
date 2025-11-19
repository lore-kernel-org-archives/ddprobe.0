Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70786307AC5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763535714; cv=none; b=I/L/64t9If2bSGxRFrkK7q06OZ3HPe0nVoj5C8o2nLzCUOs1MRr11ASC2G1KKvi5gAYsGPGyV7P1mOr9eR/unM/J1Ruh6vYirgvdMkM6AfjqEWnccUsscduNgHl2qZK0Dt9aSbNR82ZVVo3ojkC1EzReCgowuB/HTT0Xn4vadCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763535714; c=relaxed/simple;
	bh=4rkY0CN2rwdsHsGObYMTAw9qZbUxrnX3B+kUPiUWe6c=;
	h=To:Subject:From:Message-Id:Date; b=I+dmv1CC3UCmjCBuFDrf4oo3RAOfQpuaof77VCRUGZ71u+bmYIOdVmHT2UITTTP3AJHLOsn+u4NCnmejza9sDACT5l+TEF3FrChi+nnjk3sA/T/WfiUJAUZqerA9RGAwMMm3i1jQpPui1qLAp9E6iVtriSeNa/YbC5wOwmyu+00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZ+yUS+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZ+yUS+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E79C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763535713;
	bh=4rkY0CN2rwdsHsGObYMTAw9qZbUxrnX3B+kUPiUWe6c=;
	h=To:Subject:From:Date:From;
	b=hZ+yUS+KuNa0i7P4wCIqBlc7adBS2xv4QaTs8Ep/jOQJgWMnXU+OTOQxHw5SNsqH6
	 RQEOh08xJmh2ORXbxyWtp+jPh1+982aKTj7f1N59lqBXVlL3c3tATeYxVK5f/eBqfp
	 KK6kgKIU6iWR6UfeRRy2+tMzgvss+O13YRswVXdpUGm2O4KO9ugSbRX7h6moOyCmvE
	 j0RcKXBgUhAh00WWLvJ12MX33vi6BBWmvbf1KgnLAghA/kZnUNgteF9pTLbrziGXHR
	 U3LnVdl4zCL7Tvw4Py8bMiSNVKTzWd1BnqQZlFYVuq4snDtkfQwdPXXcUe3MGa19iL
	 ntk4iKGsLSc9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F5CF2567
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353571358.19128.2310634784816763169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4335daabf7118e00d2805943123c2f5b7b3034f647e2240c81175336b58b46a3
Date: Wed, 19 Nov 2025 07:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763535713
