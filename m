Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D18931354C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788924034; cv=none; b=AWGw2kC6XuQj+GsDFUMBoZQSxIIIQQOuAqf5NbN5eTeyQEVXd7SYRGtBzjcnHTmCPa+/xnJuaU4UcVkqWezlOy/1scI6gdHR5SeoRD00jCtvCytzVkhqmZ/ddE0svxEr7hZM1FkRy/4ms2EyPGXofSMJeXyJMTGJNrhJsROg2fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788924034; c=relaxed/simple;
	bh=ko+gBXNHuJ33lZrnoywbU/XB5XeLR1BXf4ig8/9r7tE=;
	h=To:Subject:From:Message-Id:Date; b=HPTfT3oHjtieSDyrCxN3d8Bp85rF6/ryZopqJ2PpFciQRmywiZLg0FD5dhQK55L7mDYze5sPJJkxz/lwfZYat2EpD1/YEYs0w7SXIAo4b+xns2KJn/cYlysT08HYQrqhHFS6MGU3ns6A6i8EhAmGRrj6+BemIsA2PMaJjVdvldE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5WTP4Ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5WTP4Ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA21DC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788924033;
	bh=ko+gBXNHuJ33lZrnoywbU/XB5XeLR1BXf4ig8/9r7tE=;
	h=To:Subject:From:Date:From;
	b=P5WTP4Apm6HGf13ex6vq+OLlNlMPvMAvWEkLiQJMuQThk5FKGvmXMCWKyhKTEfunr
	 X7Ugs0TweXpSf4ZA/NjqS4zvHk2+CuBGmAlX4NpepzbdxcG7gi4yqKm+PkeiqmiiIO
	 tY0qh3LqxttPEPUdrxqD7rJrw7dl/RNCMlG4Z+aDgbaCGzDbKHSSLoBDEyS7SMAEGh
	 HupWS8E6uieWTbAbvQi5jorQPL/q8+UFTFO+ETFcAi+F42VgOtqxLhHbJ4ZFSJIymO
	 fbyNI5MclyQ+jlCLuqm2Ow00y/0wPYkMc+11+9azkPkNVQX3OWfzELqPlg7N7Bet+K
	 1a10i7yKNEcfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6AC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892403368.3778.5716245219379166372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17b9838c4d7f096663ed0b9a14a80258f0f82eca36a2eca349b2b77b87363b2
Date: Wed, 09 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788924033
