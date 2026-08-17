Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316A74322E5
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786978234; cv=none; b=i0Y1dIBfii38JRvs0nh7lD6FLSeLY+/a8Wf12rjuj5oFuN8pxdk7LVV6BlzO2HteyL+f4x4I7vqQXOApoqpE+Zq2EN+3Fx+ni39ukaf3mvCCOsPx7ceVTshIGlS4Tqd/ul/AFa5AlPw0ees6Ixy8KUQyx63/EqXxrd3kvuoeVfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786978234; c=relaxed/simple;
	bh=56qYojXuTwF8wWeR5KO9pYJUm43MPXmH9La7wurOBk4=;
	h=To:Subject:From:Message-Id:Date; b=VoAmm9E24fQkR/qEDLgc9AQKbqB0d4n1CyZjX+IubOoXoctEpfMQcyiwGPOI0LdodomtD8U7GZnoIwIDCk4x1W0FONVgcBfGYYLNzOZCaX2ed9JgUIZzj0i6nRccuQUv2UsrUk3ggSTAyGo3m3mDttFwHM42TxyYzL4rN/dQZ9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjyGSWKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjyGSWKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC821C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786978233;
	bh=56qYojXuTwF8wWeR5KO9pYJUm43MPXmH9La7wurOBk4=;
	h=To:Subject:From:Date:From;
	b=fjyGSWKzeAyvuOsAaTfuITMgjSehWljLeq4ZxnSUawMa0LvsUiWfqvwTDQeyO9M5z
	 IWPG8LwcQO1wlW68fYkVKx+OPVyfpWwdgrVS/Bhd8caUMnr2JvRPMTXgL29WIh1YWc
	 aQ1VfFb+LXo0WqgMAAhNcFeyt8wTRgUbVi8YTMH7y6z6fHNA1bhBQeF7A9DJfmnsu5
	 WITBSAuzdalrjxfWhlETwVzYAWG/3OoXeV5r/40GgdM2s9IQH9p1QznUAPWVuwddH/
	 kLNbVZXOzW0BXTt2pGjYpNRpSKJmFMtjSrvgXCGbbnOt8QS4iagXco12pqSzvkVW6S
	 okuEp2vRdLH7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA7AC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697823368.27705.6722018573192421727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18911356c3ad71637a68405c84b06de7c3c6a66c9209d7698cd6998847327aa4
Date: Mon, 17 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786978233
