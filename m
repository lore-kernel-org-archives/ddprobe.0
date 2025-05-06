Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3855D3D994
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746574794; cv=none; b=Ko14uG1RR30kGb1OMsjwEAltC+SfGSUtt790qaHwOy96s6+rqBGLVs8vsn8Y036juXEp6+cVw2zVVKXBA2/mUUb2nstB07EbU6RItHd2nB3Aze8vrEq5lGtDs4O7jJ9QOQo6lUYuZ5U2z2a/uJa0iBLuvcEu5uciT9iEVl3ViS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746574794; c=relaxed/simple;
	bh=nWlJxUYwShbbGv2ok04nuaZuoZDsYxt8lY8ukoyVkJI=;
	h=To:Subject:From:Message-Id:Date; b=PuMmTEMLpGqb4cdc0+Ky1js0cWTz/AypjU7jZazMjBoiyNWGKxEuro/Uh79X+XgDwhSzDSjkOZqFdyHF/CcgIVUrsMUT1KLuQHg87tjC6DFpdvo29YH0bDfCuaZ90SWLiU1Uirrw7SnIYsIOjetQlzszKz8Yj27QuzeQQHIYSAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ez4eAww/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ez4eAww/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6C1C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746574793;
	bh=nWlJxUYwShbbGv2ok04nuaZuoZDsYxt8lY8ukoyVkJI=;
	h=To:Subject:From:Date:From;
	b=Ez4eAww/gAbXlbXbVK0HtFwBCBZUI2z7MT6sVjj8ADsVLDHFra4RmEffGgwUogxjA
	 Dt4EQdkW4MELAhLmrA3BoFoNrO5T3Z7cSJyMKmOkPOG7F7d6saEbHImihDD0VcsqWO
	 WOXNvwHt0o7RIgaOXO7PKt+4OlNxWxqDuf9pmG/rXJE/dNTiKC6uuvctFV3Gvh+F5U
	 u/RK3EYZBhZWbSwe5rd9rEg9LoBHPMe2LgQ5of1Tgqv+2E4GhEg7rsZseq82I2CRjq
	 R5cYBakjj/FrgRBnsAQWMRUrwpSq24wOCju6hccSBp6xR87ZMA1et27a4BknQTdH/s
	 wjjbpGM3z+/Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2D3C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657479357.32115.8264671637991501149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961a2a3474a9c03b8316de245ebedaf75173929738a3f2c8adcd897f44c5aba4
Date: Tue, 06 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746574793
