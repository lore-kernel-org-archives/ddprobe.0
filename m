Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677EE3515F1
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790259034; cv=none; b=SGhdcwPBulF0ucoZu8ULk4K+NBS4OeR51mNGH7AReNbBwpYAIsgS2RT+jhEkTw/uQ8cfDoblKZxERER+gf1+N8z+1EArWt5MKnbajWbCd5d1OMLnYR7YSEK0J+wXtTUlvtN5oMKo8d3vPfS+XephFadB+k0c6bsc3tDtQJkIO3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790259034; c=relaxed/simple;
	bh=Kf5qr2I55Zsw55rEao0eYBmF0oz65kkNBR+9G05XnnA=;
	h=To:Subject:From:Message-Id:Date; b=powkp0r0rFdKiX/muLwjbZmvfR0bZ/1Hc8n3Geuc5oKkeuUtu4JOUtSSeuhYI92I6e+0QMJKakcMZzgr4NOb4sVdcg7Q3y7kaZrmdgvaHdsVVIaRaOG7Eg2Yiirt7wuO7du4RYe01QN3nLJsub3c++YugkT84vMwPj7SNg476aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCB1J29U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCB1J29U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE502C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790259033;
	bh=Kf5qr2I55Zsw55rEao0eYBmF0oz65kkNBR+9G05XnnA=;
	h=To:Subject:From:Date:From;
	b=pCB1J29Uq4+L76fMzRUlPEYtB48o2YSMIFKuEsnPZbie/mqNRUeKOWFmDOum01W/K
	 AkwEuX4rpheqIpSJbOuWM9rL7URgpA62J/M49hs6LbVI0nQComxxjhzd+VdkZUBtsK
	 LLpIX2MY5l134W2GhHjRQR0yD2E8n3XktcX2VfCNEHRyWegDH3bTyZ5XhygxO4HXbB
	 1vNzBF4vzJ9l9Vma3isOmzIYI0Wp4KrEVQuBgXNuFdX5MlWWKEbWS03diO9+0UdQif
	 h07UFtPN2PO8rQz1sfmtJ1zQGCtbIkuERzOnRWCoE1Htv6gOd9kmCAnljhVeE6M273
	 DzVjN+K5zkmbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC604C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025903369.14774.972165334356119383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a9df081caa8f5a312dd73dc544f6c97982cb997452ebf5bafe32292f9f8794
Date: Thu, 24 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790259033
