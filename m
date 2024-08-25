Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C6CF9DF
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724562954; cv=none; b=PK8+GWCJep0pNWxcvgV4YdBg/pFiwx3bMV8/+UIfrpBCiAUvcPAf8lcxIWiMsL2VUGSiR56O4W2INuwSAOsU9Os2oe3a29GG8lEViOL/IXXWmXApi8LmRhkYkBVByVLsCI/u7vAZZ+SXGkBiXyPDNNncshcLxGxAJZ4itFkP/b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724562954; c=relaxed/simple;
	bh=HfqGjuT1AXZxYzqENpF9v57lvMaonVrz5ryLGmVymXE=;
	h=To:Subject:From:Message-Id:Date; b=DXGuSX46dbXnVRDN6jv552buxfZYL/kXWf5taxZC3+ZGntE7gvDaCfk2RHqgoegKV3PDnPLPvzRzyPt12r3nTfFBf91sYR13ty8v3QljDzRHaIvnZ6Shkz1xPec2JprATV+0yIcrzkEu+BhzyQj5oQjMimKrD7wxeprMwwDU6xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlBUcXU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlBUcXU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B489CC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724562953;
	bh=HfqGjuT1AXZxYzqENpF9v57lvMaonVrz5ryLGmVymXE=;
	h=To:Subject:From:Date:From;
	b=jlBUcXU4AZiZ208cZj/P4S77jQf3c86x4hD3wxlGnA6UJREIQIgw93kQKYc+MVTTQ
	 WEE3Z17tE8x9ZNeqDNqGk6K+QMNGXP9vCOFwRgYd+vpGr4WpEbsbrKXipwBcRLBFck
	 +KZ/R4+oNBVHyoNfuigG01IUXzDtDcP1V3AZI7dG8vy1oieKk1mhJTKjxFOCBI2AEt
	 K0oDnQER2hv3ROc6RhbdnwlX5yLNYoo7veyRaWp4mrdliY9qFTYMLBdqirrr1m3qyv
	 Z4Xev6Qs67phqVlpft4zICepyFj9YNS36CdstpyRQKfiQlW9hFjRXOavURKqVmSRZU
	 cHnqU9IvxTixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA14C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172456295361.21494.15833663280631158805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69806d381041803d749ff2521f44a6274c0d938961d409ce14b2072a3ace69b
Date: Sun, 25 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724562953
