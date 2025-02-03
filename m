Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC0B1FF1C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738574754; cv=none; b=nNHWlpf7l/y0pVNGgWQIfuAJy3wrrWebkbG9uzI6pM9LHCPpdeKgCyca5nem1ZI+TsFn+RQ7xYUgGdrZnyv/8NqRj/TUnIZ0b3ZLkLKFfn3WNmD4ytCI/lO8NRLsryH9m/1sHk8JeHHpJB9fwyAs8EsDqbL3WflEPW297mpMY50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738574754; c=relaxed/simple;
	bh=VkxEqe+dR8e1mpMC9wBa1YrlL5GuLiTdRi7/LFOxnKA=;
	h=To:Subject:From:Message-Id:Date; b=hYFZk2/DLhK0A+OxR+nKlubonsBH+TmUDspU/33J/+2tIH8vY9qATQEsClXh41YrTXFA8GWHcD/mYm1pByWhGpeTnZAlXDwoZtMeTk7o7oQXxWKs1MQFhzHHeks9ZWxDri4guppxUXCovMkHjQpUol2QK5FfKCoBSmcrbtt6fkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6JzFLN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6JzFLN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17FEC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738574753;
	bh=VkxEqe+dR8e1mpMC9wBa1YrlL5GuLiTdRi7/LFOxnKA=;
	h=To:Subject:From:Date:From;
	b=g6JzFLN7+0erhFaAllAXcNil6a7aSxQaWw9VO6tt23yIpgT8SR9lQhBn78FFOhtvA
	 1NGhMNTnIypgOg1ilu4gq5d4ONDLKVWsXEqv14S63FLKgyp/B+KLQEbs3P9c1hCcfe
	 TGaAMSDEaL7ToU/CBEdGLdSbmv/Icx8aN2kMbRYfYEcSYFQWFo5iluzYYlOPPus68+
	 jdQsjJDtwuG4Oz5ianI/SV6SjX2BI91wripgVKZz263ZAhihc/h09F3Tx3cuD37E61
	 Idj/ymumPYLfwq+b3QZ+qie8rivQlcTH421ncb9Fxr98w+6wnZQ39oRk3nmTitk7oz
	 aTBP5WAIsfFqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA72AC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173857475368.29677.18382646459685521965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d019a79252a54c60c9ba273d33fc99d602a3612d3c2bacb12c455050129ea8
Date: Mon, 03 Feb 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738574753
