Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AA21F8AC5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776922654; cv=none; b=Ujwyo1dvsikhva0KZiQ6c2sU9yXOHGFlEY9VGp+hnJtc2c4CHdQyI8jleYpMTfSZ3jv6QatMmxYRslAfoUX41zM5QTmDf+RDkTn7cKmCmt1PWqnkGG8JE22N671KwUL+25nmRJzXPTQ1o16elpyZb5gBRf/pWsDdfMT1FBOi/ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776922654; c=relaxed/simple;
	bh=Or0+Szz5JyGTrGCzNL0ww/B2HTMG1iHe4WJAWIIEOak=;
	h=To:Subject:From:Message-Id:Date; b=Fg9oDRX4HgA8yf97UlKrFPZJbkmr2StmJAgbtXhJwhxrpseDFqNeG+CkaA/eJ4fCImyrggeaAUv2vRQQmy5Q3GB51Izx1w49XDEjNEcuoFPCcAAmmJ72hyHXoIFqFsgcgV4ptZTK5ZdGHalrO0TuLp9+5OP4vJSempdpOFW2bhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2G38cND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2G38cND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44C9C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776922653;
	bh=Or0+Szz5JyGTrGCzNL0ww/B2HTMG1iHe4WJAWIIEOak=;
	h=To:Subject:From:Date:From;
	b=P2G38cNDzm++om9QLBB0sufprIomm0ddSND3ufMeBlNBp3hqs+0Nk4f0TS5GkSRC+
	 mCMRjl6r01m8/UI1BJZz5qWUhYF3I1SONSDXtKWtVdLJQtYzzz6l5diO/2ByhjULoL
	 Yc5RrjbuZNrbE46ObZAZRdPkqWSxb+kzC990SgiM/fFpBbsw6HSx4BhBMolanmlzOg
	 cugETPl4VFzCWUy5DLNN1UTsMBRTvC7SuuKjI5gMg4QVQovyivHVaEOMWYvdN+d45s
	 F53MlEhp9pJaOvhvorW0+P04fQUZIfxAW1hkTIia25Puf/BBjJZwcFwUWWMpVWMH1Z
	 M3ZhHwDfmBoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF352FAD40B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692265369.8848.12371345886177611239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8a422c2a5698e82a1fdc9b61f4b2ae894a02f6356d280ddb916b2dadbac3a4
Date: Thu, 23 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776922653
