Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891622D63E5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786172434; cv=none; b=t4+3VMAuaivWKs1n//OKPWNew1QiZDptY/EeGf+DHUKR9un7xmPZB97vwTLw4pcUnxgpddCgydv/WWwyT3s8mrxr2qX02tFbbDNJF9bhz3s9RjAsh3H2du22MJQ9LSk8s32gTffD1wER0q2FAn9V/oZLmQa4Uv5BY0x/MDw3QJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786172434; c=relaxed/simple;
	bh=OdCzBWbiawto138NGJg+BlPHhvzvXRAjq7HuR504VVI=;
	h=To:Subject:From:Message-Id:Date; b=ED63pQtRRW/12L+3cLoiiEJvNl3NbbWozv0146+MDXqfPvIxm+SMc7aOZNjFVoso4v1ILDYgIk/WVWoLM85h4yZIVhfowPFtREOONFmSpRCUgwNllhU7tNQA/PllymAlo18NTGYuaj1m/wH9lxeNTBumIQJVNi0X3SC/SDAfsXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0LFdICB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0LFdICB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D451DC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786172433;
	bh=OdCzBWbiawto138NGJg+BlPHhvzvXRAjq7HuR504VVI=;
	h=To:Subject:From:Date:From;
	b=o0LFdICBO+g5QiDZIokHUfIuc+O692ypdQRCTwKXlnldTpXlWDNoD6NDOSLbiVgZx
	 vCdbU85nLxSMP/c7IeiqKlQ+aPNV6/janUv1rB0Cqx0fB+92xitlekKa34oqmYPD7B
	 ftB+ZS3+cN0FExeqFnj1BQIZCiAYe51e84IilU6lL3FYCznx+o1YF4P6nELGMPDXnC
	 Ls/SnXMr7en/6H07JlCeBNk1U05ms/2mPBzGxFLKczpbCLKd8HgRK4fmY4k7fvuc64
	 CiKchu/LsQIapYAefmNiglwTlXOZctpBPTI247SofBLxpek/oVjAlrLfqO4qfTwme0
	 RjkixTFKVwacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB418C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617243369.25583.15050719403732627149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a389c2e28f641f22c48510782dc1c55a382b30c6ae53cce66bfca3a63479849
Date: Sat, 08 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786172433
