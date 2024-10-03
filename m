Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515C1ABEB4
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727994954; cv=none; b=afKlkqRHPEOVMwplUr6zMD2GF1UKZArurFWmR4BnIIeXLmMgHb4bszjmrYM+TSLT2hmXmmjEJP6FUQIKDlF0B17d6CcoCjoJuzN+4JexLeg77VCwGFcUsCEeCJNATl6nS/SBSWsVTtHkUN17nzJRDrl7WJCBpBzcYD5B+C4G8tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727994954; c=relaxed/simple;
	bh=H233Bs8Ez6wEpSITthx8NCNHBs/GoIf7wVCMifykFrk=;
	h=To:Subject:From:Message-Id:Date; b=G62tzeW1phNcnXCrCrcoq68LrxJGW+11fukS/goSVJtZSDTpnKqfQibVmScfrG9V58Yd2aqZWk4C3h7Eim7R+BqITDmETV/gkMbXC2tMeVrHBnLVETyPbaHVW+HO/d9ue7t3LX6AgdpcArZJOI9E4NHXfWd2wAsJUVvUtOVz9k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiPpIJxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiPpIJxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5F7C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727994953;
	bh=H233Bs8Ez6wEpSITthx8NCNHBs/GoIf7wVCMifykFrk=;
	h=To:Subject:From:Date:From;
	b=AiPpIJxVkVYcdwtlpbhpZD0B1tfsHxEnworCTW8ExQKGYRlba/vfVjecvRkBrsf2J
	 knEgmVnQV9ZI0ZmhZcOQ9JNQqBOidVuEITV7oawE+A0CsyTOd6i9UTG9UZUPYBZhUQ
	 jvm66oI7SzvypoTszGGxyC6Y4j1dJ90QzuddqoDsH4wmuPiyVK2Borm7Z11p0c34Qq
	 IyswVxRJRdLFSlxoBAFYMcPF8ZpZTxjsT4qj7q6kXgikYyS35KCmz/H6cDYeaiC2wR
	 sdGldUn+z1lkgc8jWP/qp2ZdfmqfVsNipdadN09HQW/vy0GsVTvphmB1NjhKrjjJzh
	 8kHV7p7H0buUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B3DCF34CF
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172799495359.31035.1512682660311274624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6458940b24ceede61d6a68e3536606eefd3eabf5b743767043d5ac6754aa67
Date: Thu, 03 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727994953
