Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E09B652
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753497594; cv=none; b=OiqFowfkDDTJsjoI5NVt8CrVzIP1rPISVt7+1H0sQ1aA5wyD8G/UW4vFmbgoNthHPyavRlxYo2Bebrs5GCZjmzAd/S8IKBHA47FJehaK4u/maBFsh6JHn25SixtAGjrndCvSBc6g1WzU7cJECp+tiHlY12LMN9xpgcKIYY2Kkt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753497594; c=relaxed/simple;
	bh=QPZm5igJ/FjKW/GNdq7rAC8zWijVhi841sLBBDO0GhY=;
	h=To:Subject:From:Message-Id:Date; b=mjac23WCEakYtb2ztDmd2OC62PUb2hC4TX9g51XHIN7mnz5TORwGPxxCYsRls4+QAU0uG3IjS8py886qqo9AOTvq+D+2/M2HH32gPzHGOD6wO1YyzIUWXPGuJzhWHImHyQChyWop67hllpfMaCPNj52BPxRdW7VKZx9YwmCo1rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHY/kWuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHY/kWuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4278C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753497593;
	bh=QPZm5igJ/FjKW/GNdq7rAC8zWijVhi841sLBBDO0GhY=;
	h=To:Subject:From:Date:From;
	b=MHY/kWuOjzs4XR5EQWXtFXJcLr4dmt6RwpDyAC76a9pPk7a4Tyxa4dVQJCz0CnU6o
	 4u1Ka9kBSN30965GfD6eVH4WlFu5b/kayiG94quUcQ1Xi/PUNR4Di0k2N+X4DzLCU0
	 jiQy2Y3Bh3E1IIdJO4RPKIk1VNdp5O9zrAjagIsfwmvVC7vYFTCREtnU5jHtv7Ebdr
	 M97eGP8b4h+31vue6/NKaBHYM4T+TwAsifL6585tjVaSwb0KWXTAg3zbQVGU9gdPFs
	 KSxC82HtmgP+t8zaVUFaYQezT3vVuhXR4iJ44fhgBP+PFHBYWSbGtQ7tEDfsYTN1S6
	 FIzxlfKkGF9Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95129C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349759357.13509.17847188810541283311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4170005d9c466b891784e0767dcac8ba9ae651850641b6c9f2370afd0658c947
Date: Sat, 26 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753497593
