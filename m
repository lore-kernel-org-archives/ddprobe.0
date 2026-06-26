Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACD838B146
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782441454; cv=none; b=Uhvex8D5LJQS82NSTB3ck55zCuhTBk15HZ8X9yOozuJEJhIpNVxZ+/hKBrN+N9TBo1+08fzhJoZH0AlQsVrpaAKAG9f9h/xT0AifjxhLP9b6+G3p2vXulreCP1ESnVf0soGcPI0cQ8VAM8v+caap1kClv8QNxM7y5QuR7wmdPjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782441454; c=relaxed/simple;
	bh=+5CctWnm3/jtL7nn69ZEEOqMn5iT2TkZ3CM4s6DFCE0=;
	h=To:Subject:From:Message-Id:Date; b=idnUnolX69Et9y5NpE9o5fGlUejBEpe7s/DDa8KsdyG1O6iLJf/uPn4R9LaKHpMfwrUSYhHbW6IMl3sEvqfRtxRttPJCgjb6GBDqw/26Y25DvPTC2jw3Gi1F2ZMMRy/6uFLZ/6XYHC61fvXSbIvFkUO2u8GUwWTjfhNJTZSn06g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZg3rCes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZg3rCes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE27C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782441453;
	bh=+5CctWnm3/jtL7nn69ZEEOqMn5iT2TkZ3CM4s6DFCE0=;
	h=To:Subject:From:Date:From;
	b=EZg3rCesD3iuTVImK12v2UW03RKUF1zYhE0AuGxBvGQjENxB4ZvpZJuDNbOtDzGVM
	 aCdpL3t4CJozAuPUL2gB0eA2/JOoB/askORovRvQWEYXlwuxDelfEwRzMDYqmE5nov
	 AgwaJ9he06L+wOpaNjI1atsIYF+uqCGLkGM9t2QDpTECUMhYfBz0YB90979ARGB4CT
	 nhlbq5hyp7EajHnShZ8vzVo7SEiTIkJc90xP00QlyH9w8kBTF1cGZcfn9xo2NrgrqD
	 NN34kTBcrLJ7hxeoUdaSzyfOtAQZVRINHl6yTaYmr7ruVRjQDtvxKvG1MFT+yH2x6d
	 +itZ5khIrxwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BE5CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244145371.3006.18253166215707278646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f508fcf6b226045a26e5c5c9cc52201d53a2568757d996b9e87e25302b5da73
Date: Fri, 26 Jun 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782441453
