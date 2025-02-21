Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDACFF4FA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 12:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740142133; cv=none; b=U+ul0TC2vzxFRM0BYgrcz+0PjGD1GL/rPt0kE3a80Xp0L9ODPPf5ZUKzTgN4/A53auUPIRhEENl2Eh/GIk5d5ozp/0G2304F2IVacifYfgW6AWDuVa/hxjIx6PXvLRt1xaAQbhTzsVR+rALvwtc26R36aJ+85XI8doAl4e9L2EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740142133; c=relaxed/simple;
	bh=jZ2G/I9D1mh7sZMYOyavo/jmFlBCjafZHC2lOxLkeQA=;
	h=To:Subject:From:Message-Id:Date; b=C2tpdrITT8NY/2UUFdZ1fXXR+EUAsYi5LFtT9uNRLgPC7GODdSk9ngddi1++/MXiCKX1WcC8FRN9ppOLsuMjjJeQJkAhamd/g9OMaDZq2hpBiMPGytiUeDIo7EPjPdNJoUr1P40+GQJyam1eJPMRul0tqzlJC1RV2AxXDYNrnDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDXfB3If; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDXfB3If"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A4DC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 12:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740142133;
	bh=jZ2G/I9D1mh7sZMYOyavo/jmFlBCjafZHC2lOxLkeQA=;
	h=To:Subject:From:Date:From;
	b=rDXfB3IfGH2bKFvpGFbQjqASg5UOn4c75dXsPKv+HmdmUJ0JQC8yuX0y0JkN2xLYS
	 TSxyAx1V/MKdxvNJcI19F++o4cl7BfPon/GQKD7xH4/TVmohh+axPbaT1v1fFfHr8t
	 c4I197IShcQBVhMiLbM8yuSQXSUPfT81ryxfjqaAk/F2EzD1hK3BiRKX1ubbQSQgzk
	 g2wLkguZQeRifvK3VRxcmaZS3X8rIBJlbFWM8cCj3IHkIyZG0tGllvsHDkv4zjv1OZ
	 vDkuMy71Xdzf1HFr65HXDFRe8PeCkIU12Uha2UrlBdNOjg/LM/38YZNMl9lZBZIjgy
	 rGe1gXB6KZHiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4CFC021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 12:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174014213357.20108.10022789553229667781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b417c6b94c2dfdbceb24012b48c67278559a11d1c4083d8528d10e22dd54875
Date: Fri, 21 Feb 2025 12:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740142133
