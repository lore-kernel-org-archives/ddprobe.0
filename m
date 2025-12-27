Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3780922D9ED
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766801634; cv=none; b=H3kCxGCouR2Wx6pQy4DXd1XB8nptpuxXsFYdKB2WptqZaHZh3JM9VJDPoInEPTftAWmej5ZZNlGEXwowPpB36h1STYK71xj33ql7r1/d3xJ0WVAXcCH+xBgbQrrMNnFoisHJezBjLvQZXRz+HrQzyNRUNovZMl70kZaXZqUrlFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766801634; c=relaxed/simple;
	bh=tMIBH4RmQN63Z0jrLCJbrU2lK1Sbmtwwq4P+bXxpwBc=;
	h=To:Subject:From:Message-Id:Date; b=mBn2t0vigSsN5z2FNvPWWRWqQKdoYVwuGP3vvBXO7ZJuWTfFMODMu7+fysi5MsTlLEQQcYSg/FusqiLbuRQTswIBMbzZEVYQW5s0pqQ1F0KcrDa/VPgcd5zb2TVDveI3PmrSSFYiqeMUjetynTF83J/b7o1c85ROPEy3LMHE9r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NC5dmSa2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NC5dmSa2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A906AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766801633;
	bh=tMIBH4RmQN63Z0jrLCJbrU2lK1Sbmtwwq4P+bXxpwBc=;
	h=To:Subject:From:Date:From;
	b=NC5dmSa2JWr9cd9S56uqlejYrRo8qDO+HdqlJEPLWsbbZOyj3ekiO6DQpNGmRhFUs
	 jW5QNPbjKc469Swi8ma+AbQZ3bl8CFMgNreQ1ofDUNUO+hu8/dsPnY0rcPHT9Swlom
	 im53Y5EvFX6UtCcSv+apHVmUhE1d49WKDQ63tREbQ7o5N0joKwtsXn/QamhTWlc4cU
	 4nDRkEsExoaNEvYvoZy+m8orxjKhwH/hfHdAUCJpAnwHRt3v/ZU+cyD7veHoT/vKbn
	 s1iDk/YrcW5tMxvQykQWYm2N3ce48hfknVRsCz/3OL/tOXDVsV9fldWQ1jKHOkMbIC
	 F0TlahdL3DFAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A7E8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680163358.32119.11193284604867965110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500e8ce860969b33eb0f1ce14114ff0421101ce4faa50a09c16884f768515310
Date: Sat, 27 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766801633
