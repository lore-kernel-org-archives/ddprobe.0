Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1AF917C21C
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771685094; cv=none; b=ErAivF6qDjMQbChOnUC0LT8X5BR1MGh/ElzvfJQ1ESml31/ixQVv9HGZ8APeaa9672dOm2kMDBU+NqndKUNzqJaoVOoGza6jEPoPBMcQfWcc2fXEApkpb+UxgACnYzGNW/1T2KtSv5bIWm8Qs8oTwTpABtoFeMpxf/mMmS0t4O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771685094; c=relaxed/simple;
	bh=hAopHMpTm0bqZGGeBDxH6prL3yEbI1oU3f8Z6YJcf9A=;
	h=To:Subject:From:Message-Id:Date; b=V1MXauOkeBvfJ2no6FUeJwMY8H5H0wvK+6+tpCJkOf3/bzbfe4ZgJ2K/QjgW75ycuVV7tj+sW9uWSezep8ThyoSXWyE2d1lZ+XMISDnjn1A3Uxkbi2h0Bdla/bRjvkgsSk+iPwaS6s3ox4jYGzLCiLs8xDHXTzw3uVuZ49fVzdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUH0OmCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUH0OmCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BF3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771685093;
	bh=hAopHMpTm0bqZGGeBDxH6prL3yEbI1oU3f8Z6YJcf9A=;
	h=To:Subject:From:Date:From;
	b=bUH0OmChl95qjkgY9g3s2/llgqfAyAaGpC7Lo6NfL7cJGbbq/yjocgT36wrkO8iU3
	 wA6/p0rw1L50B+u1DJHl7AWsI0I0RYrEhj4wSoyOjoNYR/b4vjk7pEUb1YZFrDkq0X
	 oVqNK2RWq7hBO3RE3wcoaaUdl7l3WZdiizPkZtJsf9l/dow4v3YPPf5mkH5ZZTeTLx
	 D6FO6clBtjl9Bgs1HElr3tw8Yi6CrlOpsB7acQDmUOjIWs3gXFOPs3lB/8Gr28wg09
	 T9TMRAyZ0wNXKkTQ9PSZ7SikjXXo6cnTmo41XMMAy90Wr93iCpVoK5ddHBRsL4GOTF
	 VasP7iZ5i9rPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F6BC61DE9
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168509360.25298.13102065163049444057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64f833d342842a48a6db299aeb1f9ecc7902c3597834ce33b2420b1d8524875
Date: Sat, 21 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771685093
