Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417DC1624DF
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786753234; cv=none; b=drNcQKZE8DLFbumV0Y5kQzOo6s45mDwiJmdV5lNsG/3MQlu4bnP26dkiGT55tc28zc5YZl8LFyvhpJo/etr+w+mmiAL4N/9zgay/vLg+yU7fWrXW1NDFtrStW4O0rX2iLDx77EkoGnuCkaSGRSMgMoUjgnKOU1J8NB36I466B6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786753234; c=relaxed/simple;
	bh=J/vTyHFgcX/DDHMeCboFBC1pRAk+UiUyPcboHRsZvVg=;
	h=To:Subject:From:Message-Id:Date; b=fRlHsJgbIJ7ZyFBs8gptAdeIhiSCEEesy84DsJsGaDYo5DAUJch2gr0kXJmrlU2ySOoO+mjreju566QGtpFXJuoCqj0h/qfO1CFN0CS5q17QxZPxXt9dRWbL+YaRE3z5UcGOo6qu+FQTQFfR0jQ4D+pQ6a7knmHQAEli2PZ7yDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrewjP7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrewjP7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0583C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786753233;
	bh=J/vTyHFgcX/DDHMeCboFBC1pRAk+UiUyPcboHRsZvVg=;
	h=To:Subject:From:Date:From;
	b=hrewjP7a5bBtyesDVRY4vqF8t5B6m3IjHXk1vapsVBUNIK1Z+ce7Lo+Qnic6keldN
	 5qlWKLm5bf7Sdz7Rn/kVAdq8X+UB8Vh6VnMnEqDPRcBiYNxl1dFtStSsMrQuE/pk0S
	 GGSBzF7VijpD9JeVB519+91nQ2wtnYZfSHYVCz97tZq/if/wu1N+7s4X1vvBHz4ASY
	 cnShfSNtjti61JPTGgibLNIzya9JL7+XOHRCzMDES2yYAWPzoUD/rLjmhCYHer/lHt
	 UPP5yqsdx1h1HHwgVJ/AMjXLTJIywyML7mmYRLWLXMIu9X81LkNydCJY/P7eho7zYg
	 C8h2aqwR8Vecg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB02EC5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675323369.20941.12168522205718606251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb0b97a5078db280ba35480db24f0cbc4707da69005dd18e22bba33025f789c
Date: Sat, 15 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786753233
