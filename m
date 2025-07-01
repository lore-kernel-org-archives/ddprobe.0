Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211FB2905
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751345394; cv=none; b=WlCkA9XSBFc3323drrp3p+/jZyjKg+2xc+9qpyAngOJF/5koSrchsYqAABUU2MoNO52og2tEIBbAWysV91XaJ2CwFSBUzBu384Jwpvl6t8xW1WifpGsl1I153Bj/LzC0czhAFJea6Vv253dGcFkXyyUb+GPleXTEVb86X4yOPJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751345394; c=relaxed/simple;
	bh=lXuUD8ou+xCUSjWrTu3EU4PfQUiG93HQB9xFXAJzHbQ=;
	h=To:Subject:From:Message-Id:Date; b=kx/EykSpKCbaNKICYEZoMh/1Wcw8AEkUBtkE/jRQ8oevMoA4wxkYdVE4dBfXe9mVAIxRhzMYOKcQqK9k6wOZSAIgYxjbI+qFsz1ufmQPwFqMkgrxyHmRNKlfHekaom57rvEHe6DVPeQf7Bj9l9k9aWzkeiX6nGcOV4dAOvvfa/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D11MK//D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D11MK//D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED1BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751345393;
	bh=lXuUD8ou+xCUSjWrTu3EU4PfQUiG93HQB9xFXAJzHbQ=;
	h=To:Subject:From:Date:From;
	b=D11MK//DkRX3fRpUgnn9PNMKYFZl98Q2JjSECd9C/3mKM+78Z89K+L/FGspNnDYyU
	 yUOiFX/jFkpE0ElFmQWwhKIqhXbGsj6SxiLdR3drcOI/Fo4DHGFcCO+re7TFSbc9NW
	 Ay9KygVdIN2a8+jWGaTMDKIrmkK9d1EVe1C3IjHsVCW1oHbvxJP2efIyg9Wx4rOZs4
	 vUCe9KlY2vxD6qUg0wV4Oz69JgDuwx/8lCBuk/JG92FuY22VTaYajTgW/yyD8ObSAo
	 sgaOCMdtwilojip8D3YWvnN/OjMcAmEHJXXlt4RhjRnB7ZfxZ+fP6lQsbZE6Q9gKB4
	 XwnDW/vHONBhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCCC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134539357.27621.6503948385748792827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c548937d50dd8db92cf4581c7a0c351ca79c18a363b75cb452700bb3d48afb
Date: Tue, 01 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751345393
