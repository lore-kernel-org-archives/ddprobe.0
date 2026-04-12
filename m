Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF43226D18
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775963254; cv=none; b=TURoC2iIlpPO+vXM/MM2RWy0ojRPKsQ0da/WTQe8SaPHjQjwNejpdrzDyH1QXZV/2DD/J+Yak/fT8UujaJFDsyTRahOGATOENXjuFO7MTZ69d5Gavrs8DnX0ORMxfnFVMlZ62dTK7fOkuqNQEOsBUWv+NdHDmgIuX48frTTPzoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775963254; c=relaxed/simple;
	bh=pFU6WBf0zlzEbscYtpt0MCe8kDNO7vWyCr7KVUcJhv8=;
	h=To:Subject:From:Message-Id:Date; b=hVwt9lA84XKdzONYnPhaKGFDq92JtPADfCbXJBqLT1yhiggUIB4nMpB9SbDxIXAB/z/cSTfoGr3mm50lnpXwCoPKalkRkSzfMF7QrexuqHL1vW3EVs2qbIJLsZiGiRLRYVUhx67qZLCYB2Vbelx+2h4IecdqFu5cmov6Hi9AsfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tO0v1bbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tO0v1bbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09DFC116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775963253;
	bh=pFU6WBf0zlzEbscYtpt0MCe8kDNO7vWyCr7KVUcJhv8=;
	h=To:Subject:From:Date:From;
	b=tO0v1bbR7Zehk2I5MIPb/2AG7dqWOI78wl1Ys52vPJlqcgHyqjKyOxAMW4FQg5LHF
	 0VtphGdiwwE56Yg0ngi1YpSehA6VyZ8kZxZ1yTwlZcWXnKfRsAt3lcgCgrpydvc+fO
	 RR9cbVDj9167qJjNHZ5hJ5GVSHiXexs8kLbm59M2tginCzCaIF19NHtxYol5k5IT0K
	 x0DV7bM/TQ6LNbHfTDucgrOjw/bsBtkfm5q/UjLy2gjp4OPsc0YeajN7p6xXlW9OVB
	 yebsGZPgLayNMmcm6+yZ00GsNKn7Ds0zeL44vnWegLsUCSO+ocySZOXXuaOzhNajOQ
	 9E3oONu27qkPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF54AF3ED63
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596325368.16866.14094494400774312832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84ed904ee2a7a0aa6a1fb865d7ea7c0e91158d3d1127b735011e766c408b0d6
Date: Sun, 12 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775963253
