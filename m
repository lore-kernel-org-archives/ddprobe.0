Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABB519DF66
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746293394; cv=none; b=k4WPMQloqG8CgZoFjOE+wWi3TE6POZmsamDzpsUXh6WY+gcDcL2d1AZ3BdJloZhM5YKpEeu2dp7CP1+SXnSdkaLgLI12CfONvLTKUHmLoQasWnzAShbFxbXC74pXGWZFq1yqdTjOMQFYwYrpNijVivNYKZT4nYWbqP4Mbjtyk/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746293394; c=relaxed/simple;
	bh=D3XPvqnGKF9PJXNcYTWEsF/EpzMOx7FclBpuINrhWt0=;
	h=To:Subject:From:Message-Id:Date; b=SnBLOVsSpwqhwSXwUkWI2cVw3NZb24Bx33I/maoTtYbT39P41soteVUpMVi90DeJoC3B6VgonKDgYblZk9O8qIZwM5jQOEAQ5prc1glSfqENeehFKbjf+XBv3B/oPCShh3f48/I4rGJVxw7HDRisgmWY9UyMoWN1HmY4i8a6V1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIVp5uwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIVp5uwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E3FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746293393;
	bh=D3XPvqnGKF9PJXNcYTWEsF/EpzMOx7FclBpuINrhWt0=;
	h=To:Subject:From:Date:From;
	b=IIVp5uwMO5ob89c0FTvNhp0Hn3FEko+PV+4CnKpci9g9wLChC6zHNEv61l/RnWSui
	 LEuFZvT5ecGCORUJvlPPivl8WM03ncJAeNnMfT+dTHApaKHNQhvcRFbXSzezmwoEMi
	 jOx0ge4HxGrKTKd/LDDIbsv81ud1hlt1CsuNOW3bLB7bPEnCgWCatXe7aIBHFjbUBz
	 Zz7tSIzaUfMxOjxTqiTfXwNhnfsskOjdu1xKjAp5I6wnqfNQY1nPIuM7xC2qp9lwv3
	 YvZz16bPX6dYNGEwH8ZWG02gbtPZ9MkWRlvNfmK0KJCDYCj/RTrPTxHinOyQi93C4F
	 luEtd3XMCwHkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93415C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629339357.29216.15921999293604409760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6b26ddeb18490941961b5964b81f8f7a379a76cbe0f70ac53bcaeae7226790
Date: Sat, 03 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746293393
