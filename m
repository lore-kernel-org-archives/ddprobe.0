Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C522F50
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732414554; cv=none; b=AX+JXjJQXjymy0qtJn2CasyB3XScCLv23BpFAVwKONKxJl7bl2+4QWQBHXFtRbdyaf1x3DLaCrA4mkoFpQk1XA/rOikfA8L+wMYequhuixu9n0+539BVDsI26ztr7zxFjTPmduCd7Q6BbK+tELtbfhAFMIDG3mJ2uXQwirV8V3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732414554; c=relaxed/simple;
	bh=appPF9PmiESUd/rV0zGa/pzju1iHOcH6hUeujB8SWFU=;
	h=To:Subject:From:Message-Id:Date; b=OoxQfBoBZKrslBzWi0OqyUhnxzNycSRlfwiAlQclPwKha+wXQ4AHk9DQGPvAdwNe+xkDLfsuHOTeCUwFGclkWPIvlKy4erYMf0slF2e3T9VbskUSlJ7UrbHiGVg2JgChtt4jD0eIcLbR0XcBYAirr39oKTl4luxVPKAlaTN1ICY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+ZMwBtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+ZMwBtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CC4C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732414553;
	bh=appPF9PmiESUd/rV0zGa/pzju1iHOcH6hUeujB8SWFU=;
	h=To:Subject:From:Date:From;
	b=g+ZMwBtuJP8PwJf5mWpol/dZf1HHRGfjKHnxSFuIAiSMZBwUU9llVUjfZUoN5F5gM
	 Z2JGGJPlwbkhTSGutfeuHX+ZrxxzHIc+X3noxInoicq3CtL1MRG8yTn5mpfYGyoTrj
	 QjwAvRuMPOcyPCb8cC6sqqKnrh2z3qaeBLKP9wyWbb6cSi5EOslLFURvDLKPmJhuYy
	 qNU3ZeOilBwmEbvzTm28tR2qyEYG+goRIEWz9pzGvzostCcBMSG6XlBX/dhJtBmSdN
	 aqJuxwO8Jfm/9QJ1NpTBzVEJAwgw6Bvu96vCcxmjQ9vr5+ob5UiIPFDif2NbL+2Ea/
	 Cxid3CCtgrh0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBC9E6688F
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173241455367.27615.7791634719438086335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeed6489f319a094ac96392aa4172106b4ac48c4e7d0ce61d7c5e6936e345996
Date: Sun, 24 Nov 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732414553
