Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216772ECE9D
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762558194; cv=none; b=TeFOx8qqTmrxYRlrxFQi/HPnHnJ7o0qxdzUlJRwdA1WfaT7/J4P/d1wJRxnf+b+AwEbw1cncDKSyryArtXgJ9QnreDUz6yTvN6ymRBLZW2occroaGmfw4YGeworW1rwx8vTzed+S7xLvGDgc9W/+O+yuRTVWsxff12ier9mF41k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762558194; c=relaxed/simple;
	bh=mrzaT+U58vv7cJUyhX7GF30SxMSIGq34vC2sTAiP10E=;
	h=To:Subject:From:Message-Id:Date; b=Qhu4fGlSoGyChoOODpWzWqt8WHeEGXp9e3shWd23DaXymaDOfFJ/78OMCS2V5uJnl4ti8lAT2r7sjDDnL/32Q19OmibOuizEauNy/YlJbsbxbtmHtVJmk//6SYAfUlxJkx5m/F9xj9Zwo5jHQ86GgB6UoJmN/puHA3qLdG5xXTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZhFXYPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZhFXYPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4EBC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762558193;
	bh=mrzaT+U58vv7cJUyhX7GF30SxMSIGq34vC2sTAiP10E=;
	h=To:Subject:From:Date:From;
	b=HZhFXYPGY3Y4S9pqVsooRSV5iTIjisVWYkEyB0Beohol8TEblZB27LgjsTqfjRJOl
	 cEaZJvWYKE9JVk328+s91QCb8DiprWimWEAUSFjvctld0ZLB+ehbC6EgyNzbRMXpD1
	 34QgOx3robXA1IVUFT7yb5f9iYphzQ4bM+TeSFN6UiAwHe6FoOqnCMsa18Ccj4RDMe
	 T3z4bF4OYuxz8sYDFBJQH8Ilgpw+s+n0oxVq1u8PTSTShNZZI44KE2IDjCY73aa0w3
	 csSLO3Xt9AF6+8O2PV2nMpLWDmRCQeIMqAAWGh6G2D2xuyYMUxOozVCPMos1pd7oWe
	 QhSw5uBur0duw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C227CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255819362.21934.1371159131875356345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848b29f5f98215107be5cd102e99885b6dc2725253a8c53d235220fa78f07b0e
Date: Fri, 07 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762558193
