Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DEC5FB8A
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716528203; cv=none; b=ik+cBctz7O8FL7M8vrWNM2v3n3oLdWwnP4yuheV6Ye98VHv8qavDdQ3CXNe9aIeGcDWsEET303hpYcLCJVnSF9B8Yu5DdFp7Bl4CPlqscn/uiV96wcuI7tjnxjW0getP5pzQ8wPG270jRNQgqAnEShCS9js60gVYQWg8+1YbhiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716528203; c=relaxed/simple;
	bh=MXyKw2yyhTHwjbwVhmqu5x5K4LREGrJxr5bzppNG+7s=;
	h=To:Subject:From:Message-Id:Date; b=OKiBUD/2MMtkKKcU1xi8FW0OT9V3Wqtk2kNqjeBxrbwPQB8V1VkWt+yDfmXOwa5VWTvUW2YIjOPraL4zh+0HARqK4Nr6NP69L10Zrb1Ldm1tr/lBv8RXCS/Frg0569SL6LM265eWYJV0LImemvnrxG75p52AnIGRXDhALPvr1T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTOcg9A+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTOcg9A+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF9EC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716528202;
	bh=MXyKw2yyhTHwjbwVhmqu5x5K4LREGrJxr5bzppNG+7s=;
	h=To:Subject:From:Date:From;
	b=fTOcg9A+o6FWBKM7g4/IayHfpJs8FU558GiNeY03ldap7lCI7oEXGeC+fGj9vyww9
	 bHNC78/+qaKO4s0ZN5YpSfHvNmJNTnyffBo5aBpTzwocFc5RnEjKRMQyPqsaAvdYGb
	 4Z4rraTbX+3zHm0qrrMyNGcXZhTbz2fBLqtEjebeHVv6GEhENUD1GK83BYuCjP0lhb
	 hT054111KPlHm3gavwbR+X+gnVojiLCxumUcDFCOEHXNoBcZ/lqe2tKbIWb8J7t6L7
	 WNqh+h7DKiDXqLroS+Qq2t6rnPWEUGs5NoZ4pvXbu8pam3/raYJ4dSt6GWVspcNbFZ
	 JCWl6fZU89PKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81D7C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171652820281.13055.15135889955606778905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a0f2dbcf38b88b340dd1377725cdc9e0cffe9470025a92f3fcb233ec45914f
Date: Fri, 24 May 2024 05:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716528202
