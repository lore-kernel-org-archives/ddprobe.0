Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD85E1EDA1C
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 08:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739261035; cv=none; b=F0dH9SMzMFaMMu2ksvhtEtgQ6bfBaB8IESfE1b2R/S1hmTXKYzPYcojBsZxNWkFZ6wwfdd8TTArLNW7Bv2MIo2xMe+C0u0oe+b0VwZOCxKptx9YUYvQ97wNuWIvRAU6aWjqyaCFmUfkqT6/9uI0rxUkS9/ORfD5EcPpu4CnJxH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739261035; c=relaxed/simple;
	bh=9R8yc6KhOjeL4bjQ/V6NEzOC1cUTrbKYp5T5I7MtzaM=;
	h=To:Subject:From:Message-Id:Date; b=stDPkvYoZV9MquiH/L+90itOcQIVf2DIc+nAMWhz2pWwyvnFNtvp/tytWTtnG/m526VkDE8AYssKQSNZI3WkJ4ijDYre+2x51fYlUzwPcyqIx+TnjcJvA+yfgEpv4/YTqPzo69hlA7Xo50kWEH4rDcHlNXIEobOChHfCxW1KJ0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjbEHeSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjbEHeSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4238CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 08:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739261035;
	bh=9R8yc6KhOjeL4bjQ/V6NEzOC1cUTrbKYp5T5I7MtzaM=;
	h=To:Subject:From:Date:From;
	b=ZjbEHeSi+piOhNaI1Jj1xBa2Dsn28kFhJmsbJrEeY2rxpZQlFy8e6gRPyD+wWt24J
	 wmnozwbQFhvdOD1wpPJ9/tdeqQ2DNgmu7alrJLwx2BNyUerz0f9ZLwykmTtA1kbT/k
	 yUMoaTranixPrfEetL040xODf+AjsmIb8nEL4uxBq2yOmZMgSZRAJhYad/QNgnrxs5
	 l6Wm3Rn4MOV0Mt/YmdJ5Tg/hqY1XAkouyvXRFv/ie7epFXAqsvz6heAkG2Xoe28pcn
	 iAeucsNVfbsXki5xsX5SX8zf7D4Y3btkIX/rntTHGRFHY8kiAi6PyljJ7gYPywJdF6
	 94EubEX0/xT5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB45C0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 08:03:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173926103455.21731.5680893599269586040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c601a970c30bbb0d6e3340e4340f5f6e740077f35c4179345bc5682992ebfe
Date: Tue, 11 Feb 2025 08:03:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739261034
