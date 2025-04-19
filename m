Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B61A184F
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745043594; cv=none; b=lLQbWR3+zSmVjzLE/rOpsukY4I1o4zpgQcauCKrpKGqA/w3g8Diy870yJNB+AnlKAiATO2f/BdERo9YObV3QnyPQxVpkbjowUCNr5LxYAVQexvstGTObuGUZTpxTo9yXisLXEri/i14RoSFt5PEgbRWTwZqx1ARA5KdeKeyZTA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745043594; c=relaxed/simple;
	bh=ROa6yZttc6j+sqoX1ywLADpVtsIjiC0nrnXQbmtvO30=;
	h=To:Subject:From:Message-Id:Date; b=jR8dY6GHvIv8mcvKrg5HGc4KDgYyF7Bf1WdpHG8jML/Zcg/z9oCbQ9/sW9Hv3D3iDYNlTTl1XYyvfvni3fVigM0XXGjAIKy6XKpZB9n4rCK/w5TIy3bC2cKL4RDhfTZeL02yMbQFzKVYlb6fwNKYYD0uCND7pS/dA9WVHwpOYBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvzOi4t1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvzOi4t1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3368C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745043593;
	bh=ROa6yZttc6j+sqoX1ywLADpVtsIjiC0nrnXQbmtvO30=;
	h=To:Subject:From:Date:From;
	b=IvzOi4t1QT7x8kdULr+Ty1InBjjKD8fbU6/gAdKmPSS4HtpV/C71gdgq5bsR8plK7
	 R3q6ndqvUWyM2zexBMTf5LintYIo7rhTumYAePKbsOUb0nOoRh2QntfJiP9mTlUnLQ
	 ToxxdtNOOBilOfOWvgVxRohhP5PUGm2Q6rTZZt04jpXM8Ieh6jy5mGykDTccAoVAy3
	 VtDXndeGdp+8Ns4T3TpiwJVMrT+QQBuBTYQhLQJXx8nzPG/yrQny6DgVkOy9HSMygd
	 RUMb5c2VlB9Wu5RhQhGfhkUsH+XfD41oK1d1lubJGobt6kismF2G0eyZwXfaDPKNYS
	 5QspK0HXyMs4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D943C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504359362.2311.5406077958181460690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103bfc4862dc0d38d18bab80f17dc77e15ccbaf614c7ff42d92e2b8e80146863
Date: Sat, 19 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745043593
