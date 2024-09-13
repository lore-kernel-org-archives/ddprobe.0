Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302BD42042
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726260354; cv=none; b=Jj8TIAa3RT2TFTTcaXgzdzd/kGgakMnxTB7mynCZRZt6CIRb4lti9GFTeurVCyCIcvflvhbrIAbxpJAFTqb8O5ngZuI8dmXhQjQHDzz26ODLEDw+HsebeFuxBGi8lS93LRUOv6IV4cvx5dzBHLt1fur4z8oXLBogiq/wf0EGfiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726260354; c=relaxed/simple;
	bh=AlSG/l5q3peIAtGN0Zyb1ecZIVwBM05SxtxAl4d9Ii8=;
	h=To:Subject:From:Message-Id:Date; b=ZX2USNjjdNdfU3YHDsf8KjUWcAikQQqOO7b/fFc0FONJoLaCtDl18jhRLQ+8jmWiKvL8janzBb3pzRgJTfVC9YWppcXy4sN1PEYCtk1sZE1cOtf7OQGh1/WU742oVMN4cCT9cr4C9rVUDY2Z/2tc+i0QL9XSDzZabrTCN/gQpyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSEqPuWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSEqPuWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBB8C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726260353;
	bh=AlSG/l5q3peIAtGN0Zyb1ecZIVwBM05SxtxAl4d9Ii8=;
	h=To:Subject:From:Date:From;
	b=bSEqPuWD0SkQvIG+86wDD1qQf+rYJB+aA+8eFj7z55p7haQT4DJwFAf3CPeN+TgWg
	 lLP1PVdzEVnsDu4Lld0keTmsjAnkqiwAW9TZlPR3714lWxuLIdhL3rW77D6N86Y0xh
	 fHMIR41qgDLRHXAFE9lfV4XpfRuB0w4wHWQhxPMqQJxRm/iw0kI8at3oKqsUj+GYtH
	 3J3lBEH0J9QC/r0oKTIHML/yN2NkUupH1X5iW14a3SI0AbeU5S65+SKRUj772xEwTy
	 acQU7R1jqJhZa251WlCjYMzelp9sU4H2alcpSvN5A2EAGcaChpLV/E1tczzN+e6Bdm
	 JPiOg0FUkxeRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EB3FC6181
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626035358.8286.16538465256004981258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8209129e65a0d0c50d93694948602722ea551aa793deeb9cbb4362508b2d5627
Date: Fri, 13 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726260353
