Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C43B2397BE
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752085794; cv=none; b=sNYfKbiJhWwtkBaGaTp2RTVsJm9thIak86VlDVxcOaFgBjJrN1BYkBdzlpBMO9DduqUmZBdlc3Uwo2WkmWfGNLqaL8gl4SS/qQWALsA60R/LFKxCAEuc59zsHlhlijdXDZpc55niu/EN09dvI245fv5koF3qjL9potJ0gL8040U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752085794; c=relaxed/simple;
	bh=9dTjN6fjDKLXM+qlGG5GuwaC8fnqx/Ab/6FC/PKpgkU=;
	h=To:Subject:From:Message-Id:Date; b=IYdVyXvreMde/frtT+Jo6JMwZTsCeOfCQvV7SAS4GHjHIYpbgGlBYnMNitZhJHmKw2TP9qpYDrjIn3GDmMNREX1StXzf/eB8YEGzF0JR4Npsqr2bHvfj/cIxQvDZIw8lI+bza1J0Ddw0GmQmZSKfQaBruu8lgJyF/53ENIOLOgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEHE26nD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEHE26nD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB86C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752085793;
	bh=9dTjN6fjDKLXM+qlGG5GuwaC8fnqx/Ab/6FC/PKpgkU=;
	h=To:Subject:From:Date:From;
	b=UEHE26nDRn6qdq/4uKwfW2KqOPAqPvAqprhWxnyd9L4zxTsAI2zPC8lz3Dzv3CSiJ
	 egtJsjfVrMNDw73YRsVyqfyTdb/r4NoYH03TnDJvWt8JCU/Zv5kaV6QzA6unuRViK5
	 lkP1ikPMu0lJ+Eb07kWxC2Pm559+0e7Lnyi9+qN964b6vJmLIR+b9lBlpPyQwQyWqH
	 jAAjekZC8PPdbbkVTSfTpJvZuhgPyRPNXXHPbkiHkc7yL606r+18r7zjMAX49ewkWt
	 eY8OXfdOo3rPpRB/3KeB7IV848HLurt4jfRRDiKn9mZwr8/SZwMUTMfaAgIkMFKcOw
	 KBXSqvb8ztfKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FECFC83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208579358.16628.15779121633406120900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb31df107970e78de70bcc56dd28a0e5fb13a90d9df70642a18892ddafdc4e53
Date: Wed, 09 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752085793
