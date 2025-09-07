Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274A325771
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757286594; cv=none; b=UlpC1NtxnP3FxYbFTuHmlO2zuyny2eN04RP6aFng90/9NMl02kj9CDzdaWJMCPco28h4cXrwKuKtxVY959WZOlykAJj5cB+VVo2k8Vn0108AzUC0H6jmt1dw/SlalKsW8hM5cl6W0A8KZuH/Ma5NguNtJwYBuvERoeYq5626fuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757286594; c=relaxed/simple;
	bh=D636gTTXy+VBcVU1aHWlf8fBRbK9cLFBS8wZ2i5IJTU=;
	h=To:Subject:From:Message-Id:Date; b=Ldx4RyOl1XziDoide4wQDsydhKsQhR7ScszZ7lMkZDy5LLRuKTimnAXOhn5VY4uKhLCC+re4PSjGhBeDEEEnuyicmUxQ+mF+tvp87l+OPt2DOaJhr9zzD93X1vhT1lCXJbYAEa0XqmljbaYt0l5ctxnxT/JsYILj+xjfhKw0WG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgswRsJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgswRsJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60FAC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757286593;
	bh=D636gTTXy+VBcVU1aHWlf8fBRbK9cLFBS8wZ2i5IJTU=;
	h=To:Subject:From:Date:From;
	b=jgswRsJ6VTW7HhZlEVxB3ZmI0AMViKqLXz8jl24QdlJOGZnd5fSzSSmdPCz4DQfuk
	 Pp9epRLYT4rU8WmEGNsl92rt8V1pcjqo2my0kug8sstdHllt/iBHN/dkLplk4BMlWC
	 eGeKIbttuOerTH4py8GEG8K+dG+KghVCSfz0o05y2KQzrQzBeItbDTU0kLBr/T8lly
	 cElHDEHGbindDmbudoJn+vEShAueWDKqGTBsT/HUG/QjvNtEdxaoSa7CFXpnXRrDO1
	 /INPfh8CywuDac3oC53Oj3KSSDmLCGAi+qJ1q0Ric/MNM4FdjJ9tl0n29eg/t7O2I2
	 9P7jZcyBUXSCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91386CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728659357.3933.17595392764256862933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68d31737186a536a845eb8a939f175a57eb20a067d950773023390af9c6fe9c
Date: Sun, 07 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757286593
