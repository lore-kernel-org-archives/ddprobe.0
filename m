Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAA8F9E6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740883734; cv=none; b=if+hNNpHho9VMaut/CxtfgDeUFmEZhecc9JCLPD+/Kxp2b6tI4GoQ+5+qD0Br9Z1jHPTQo1NmLw2rnFN5xNx9Q4qApRvfgPGVDns4VptlyOBlZ46dv1GtxkRp7FyCMLwr/SoaMmzy31rVBQ0yn3XNHIGyxPmLn9+NkFlxjikkxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740883734; c=relaxed/simple;
	bh=9aPVSkpW29z3P7sqpBKpMiY325+pxXM07eXQVx7ot18=;
	h=To:Subject:From:Message-Id:Date; b=lFEZfYb99740N9NCb+XJa4faQ7AyjV9uZjvqtJer1JPLRx5KsQW5Vr94qm74fh2UQ6KzgG3xlEdqjaj5Ozllg/GqM3wnlslwV7ASepp4wjsPQKKt9EUCxSgkhzYIO3a8NQcxbQy7ITNxz8tFMwGCdsWbXIbNAXzS4OAQOgmzvwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ep8ei/dQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ep8ei/dQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB51BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740883733;
	bh=9aPVSkpW29z3P7sqpBKpMiY325+pxXM07eXQVx7ot18=;
	h=To:Subject:From:Date:From;
	b=ep8ei/dQvpmeMTwF2X15Rx4p23sD98PVprxyyFUSaHzmuOuSCbd6OJmNehJn+6uxH
	 6BtsL70NYdMFMNdjpT+ARNwcyCotYqUoBj6kFhwPakDc0SIieYOZXpGDSAQmLClChv
	 TACq7v67YffQucnI6sntF4hDgdmc1Fixec9s5CNpH19K1Bo86xgreWL+N1BepslmwN
	 scDJnmd3UEXl9tb4OIxyKZkTFyKJG3ekRGgCYiNmpFQPPUqKYLBRQfx2q2xwK6DQyv
	 JJ5urBuRRWza/EBq/dCV/F1Ietu+xf8QARYsHQoCKg+AJc5WwhrC0LtY9TwxN79DKV
	 5m5AOvPCJ/0Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED5DC021B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174088373361.16361.9983943579959429421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757edca629a537d7e4315e0100cc660d8a20b5bbc376b8158c243c825faa41b1
Date: Sun, 02 Mar 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740883733
