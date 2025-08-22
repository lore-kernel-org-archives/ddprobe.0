Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21712D8376
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755895793; cv=none; b=Be80bE3o939XL+OSrpQheLODXQgxYLF0lPaP0B+zQABsOzsSQLuwi8r2hRvxCaqbYvJ2GVYghn9NeDfiPkfVT+Q8cRls4l8xgsKCawABA8pKVj3VrtNfFMOXyk66NfVgv3FG6z8SeKt0ZDUhui0SY+dR48NWkkNl+yLM8UOAtSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755895793; c=relaxed/simple;
	bh=t261IMMSYouzk7ke0m6GmSF+rFG0+n67kseoOGcSIW8=;
	h=To:Subject:From:Message-Id:Date; b=JgrqxbrQQw3zxgj/+XnOdt267KPFangu0gPYv+5/WiDAIhB/Or8J9HCtbQ3r6iZsULXKUVZfc2xn3sPamI5aMf4lqsNWIg8YN2KPIb1znkuQwEDil+dry0fSsqQeaeB0lpgOBRkpez1WcyalFjsW8K1wCiJ30FEa0gXcfv5xuLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQURsWLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQURsWLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15BBC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755895793;
	bh=t261IMMSYouzk7ke0m6GmSF+rFG0+n67kseoOGcSIW8=;
	h=To:Subject:From:Date:From;
	b=aQURsWLUrKa03bXJd25V/NcO67IiFP/IuHgyGKNfL1oarkY9eGaEKe4KhLsorjVL1
	 WHseIwHP5zuJHy2Flhk231ZSYpKwFegVcEuHfinSJOb56/mm1AYN/3LHbIHeEYAirN
	 hHCzqD+F4FrLLAZx1gwI7Jprsoz8UmLhMg/EuO2yecrwRN1lM9kMekwJcrBXDeTZ/k
	 b+gqtUHvliRT1vush07qcLPTbqIXTlMES8iRpMfIthqYOgAwM84dhcstTTve4I026q
	 ut9f0skLIILVs0UjwdXvoVjaA7ewN5ru1PnOf2AwbdLn7Qh+SNXLqQ3pGcVFifIEf/
	 MAr6CP9hdKtRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922AACA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589579357.25275.15630750495464188966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca846405b28522a80f9e87dcf97a6c3022dd90fc76e9ec1f9315891a87a45618
Date: Fri, 22 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755895793
