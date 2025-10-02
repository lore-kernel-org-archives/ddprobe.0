Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0250318A6AD
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759417195; cv=none; b=Ii8l1d5a2Hcl3ON8lb8hQX6/+S/GR/9hNZwLfAKSC4zlKCk7IwA9I4H6O+h6tDXF/KfwwDPr04lpNsz8wm146lfsfKnOh2Kf81PIE2xLgkMEH4F+yTIphjw0cMvBxR/x54OQhW3wgusHLjoO1AqwLmGiwX8SGiEMYQX29UdHtRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759417195; c=relaxed/simple;
	bh=/adnW84MevZ6UD/CRvsMwqmSYWoK/C7VjFwOFgcpLCw=;
	h=To:Subject:From:Message-Id:Date; b=Hv4EkirGyGypDCTguAGYB3yWkZGza27zY6aaXEo9cQlVcB0kos25Z3iJvNK6S0deWJR4WY6H+wevffEIs/i5XA94Pd5aSGZPlJzDxSL+Fh0CHYT9lDxGpeZ9G2dqC9l2i7ehT4mHxkKNfbynJhtgc2guKbG7G4fx5wyg1/dWgMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5A8CAsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5A8CAsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA22C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759417193;
	bh=/adnW84MevZ6UD/CRvsMwqmSYWoK/C7VjFwOFgcpLCw=;
	h=To:Subject:From:Date:From;
	b=W5A8CAsfK6U/8WxOtoh+NTprxRbAd4vsmAtTTuLoXLMfpnuDUmZzyREMie3rG7Skj
	 HzravMRj7EI58HVu3EzMcdLw43jytipyzX5WYvmUG+110Yt6+864o0MEmS68HyQ1vr
	 yYV7QGz1jljfzenADTAZ9Qq3hT4rWXH+s5p7vRWjACPN2+UKVr5lscFGYDL0mpIUmx
	 Key/x93V+gfJJX+IIpZwKaZs9klcRTWEUF09+EL4PYl6x2IniXU5y6+XKHjCTgH2Ei
	 JBq4Ek6QDwehwne8HtvHHpiTLIsKEhuidmNyUqjZc1GNL1qJPqCQAhDUvF1rxXG+pS
	 XBdYIIH2TtPaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90068CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941719358.19153.6929402872791594920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492f0314a1becfee68f74efd9843942f4ca97e110924f69987f8c2c406846c36
Date: Thu, 02 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759417193
