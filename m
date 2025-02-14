Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDF618EFD4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739566135; cv=none; b=gKqdRYb7BBGSTGSyQIn/p/CNqLeagouPEmH/LouCTXW8jcbe/Jv8gbcavKjn/A+MQc3lf/7qIBXTiD2gXwWGtiYhNzCr+u/4j9qDBh6eVUXaZ3wv01gYLfRI5SPM5hWE6EIXLvvwcmvNZSnmGIfAxvjoZMRg0JU4bp1nbkZ6BMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739566135; c=relaxed/simple;
	bh=j03/g7FDuyCkqU6yzWjq3QVU+ti8Nkt+VSZVr7sGL0o=;
	h=To:Subject:From:Message-Id:Date; b=hcfKB1zv9bbPITTjDUql8MCNNQx75DohLI7STqcaI3wCed7IELBtrmwDNdUM+uvKN5h/+gSwLcnNcV6KzShNdulnwohMkOBybGnfZVmysZozQeXdBOFxPTv7UzQ6pxoZTXZSlBsELc5OnQ1iXXuViYWEwFMfGzQBm7ffy06U4KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPktoMOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPktoMOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4ED1C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739566133;
	bh=j03/g7FDuyCkqU6yzWjq3QVU+ti8Nkt+VSZVr7sGL0o=;
	h=To:Subject:From:Date:From;
	b=nPktoMOU7T8Y3vkWRhC4/8I9l/dzE75DHbid6wYhateXD8zkGHLD66EW196fldrGL
	 7/plnJkA4XeAQROM3K/fW/OvUvZBa2phvdw11UF56Eq2jHP9S7QeSOruczM7rR7HpJ
	 vuaJwlMWrG/V9SdMN40fwnpQ2ZVR/761ZYgucgWminiAxGOIRy5PpD1yPrgsLrXMfj
	 xRvTRtIyUXdub8jZ2I+ZsW2CMXLiT2ZouXbAl1ttPKh7qEb+9dvPDMM6fHJXEGZebR
	 yjcLNEu+SqM7ncS2TE22cZABpqkvmXmiqMDdhJgDJvxjG1qii9ss7L51g0dJDDzlfl
	 0KhQR15a1OsdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E259C021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173956613363.9019.13341769779420063075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14fbd81919e9a2c9d3547c6206005a5e0cde35697e931da24d04fa1d6bb69a8
Date: Fri, 14 Feb 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739566133
