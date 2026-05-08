Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6B435E95A
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778275053; cv=none; b=C0F0Dx2Me7aFVffAaeIQ2xFTIqO3VFCeeC/IU4opxscGkOqrozEj9tycmDDdnuoFc6+1Y33fN5yLM35GZIgF1GumHTptLf50kVIUdLiE4gcGTPY45sjSokON6kkLHB0UkrPO3HABV6JIqIhg0iiAtv43ygHfb+mrnAdqPkLk32g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778275053; c=relaxed/simple;
	bh=JDbPhpWIUR0AXi82N8t5fbnzoxkdqaqJtkLpJ3pTKiw=;
	h=To:Subject:From:Message-Id:Date; b=Zuj8xr/+bpno2D3Ye6t1GzvJqhUg/Om4FY86GiitbbBnRUErX6EdFC0qB5N4DnEGGLQQL82gD4XJ1Vyn44sJ7Ue8IPf57yNKrNGoqQt9kryfKLUCCyulw5alxsdE0fcwkt4SowgTbnvD8HRFhkv7O20EAQ5wVTHOB2FdVMsZ9kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsOYAx7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsOYAx7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CD7C2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778275053;
	bh=JDbPhpWIUR0AXi82N8t5fbnzoxkdqaqJtkLpJ3pTKiw=;
	h=To:Subject:From:Date:From;
	b=TsOYAx7iQETXyC2tGl1ps6BD6FJmuYgLHYChFA533e3SjJDNKbugGMb/zWDr+r3jA
	 E7w+wv5u1lPXp6FwExvszfNRgyzTdPfBxnpzfHHJAe3afo7638lConqRbvy2OptAGr
	 aT42IL8QKs8t1TeGarmOfppx119CAmUdVI81Nwk4F6ZTblWxEwXwqK8f70NJAyUQ2o
	 Rgqf3by+xxCBVtAsX7sZ2zoiqjRVLzIdKLzrL0vi+WUZpc6zS5OrmefjGqF7ZOoiY3
	 18RGGfPPRiCBK7JPBiZmz2/G5EMIjFSNcVjP4X2yw0QQFeVhPGg/1TUNbBfL18m0Ns
	 +GU2KgDoyS4Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA965CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827505368.19127.3404261425417077730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6b63539693e018298d9ec916da1d5d64d4913aef94f5d2953381a1c2633f52
Date: Fri, 08 May 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778275053
