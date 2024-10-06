Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4191928377
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728237354; cv=none; b=srL0BHFVdzyx2FCg1pSuTSY47O515NDRMIGFRRq38ViuWtIA1JnGAeATAB88yFpgAW7cRn856V50rWmpQTuFi40BPnAV21qMohqB/azvc/L5b4Om0dWv2ObIjPoNILYFOHphb+f3WdNz29nJwqEBuHesMM78RAeQK51cLZF002g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728237354; c=relaxed/simple;
	bh=FS5INQub93qrvEUhFTbABGfEogtdkjTeMDf8VQr43jE=;
	h=To:Subject:From:Message-Id:Date; b=UNGDGEwRqI7ob8Kcs4upulpQIsgJ3MMyzgSdqt08hQ/SDCZn0U5j88lxYGb2WIEsbgOC6WRlwp6gNTMYWv/tBqEn/CV0PiJ9LfnpnAxSAsaL1D2kcp0qOuY+2EpW2OSSQjN5lOosjWSUf2CzYrt4ng+41n3kb8MkeLCLSD7hrmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U693Lbt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U693Lbt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA1C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728237353;
	bh=FS5INQub93qrvEUhFTbABGfEogtdkjTeMDf8VQr43jE=;
	h=To:Subject:From:Date:From;
	b=U693Lbt4MvlKHCYxDLYBQlrXsKJdJ/uvkMkwZMy2FAdMUnY8uobF5jebPBN2q27+0
	 SIiIVRpnUUAlqXo8rL6WGAsGVBJt+8uqtiBLspL1AuXFimZBAhL7vaePe7P3xcPaUY
	 zwe0m2er6KCg3S0gtelvbLZ7/UcCV3f5kN9hYst3ufjwSEQX6RhG1k9Evc8gcbmZ9Y
	 mjsW5w+zgIVywrXh94+36oarrQtiXMHe4IeJrB+Jy1Mc8jGP8NQN8MwmRAA3SmVOac
	 2nyLaZrJ6jTf+Qacmryoz7iMZyoWLVHWGMhQlPzXT05Xie7rSO2yXU3dVmxrQjjFtp
	 Dii46VA4s4oUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95935CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823735358.16480.12205155752096877990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac4fe250784227acf666be4a2f7f5b176dc565807e2a891f47d9df77bd05814
Date: Sun, 06 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728237353
