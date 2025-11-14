Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE132DC794
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763146794; cv=none; b=VqZH/+Yf/7AGIgPrV5bFwtrWKpOgNk1HlEChFZjINVUTDwYMnwBky8MYLWhcmeKGWuZjeQOx/tcxmTXjtLJpUcEdbHzLQZmSH/61gf1bml3s7qw+ZBiJq/uqsODnKUvgo/sIdP9mmX2FzZqpXXX5LYcsO+WmXmI25bGMOjSqaz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763146794; c=relaxed/simple;
	bh=hyUVJTAMAwb73+y5btXMXoyW+bLI6DNjLGdhHsYyzgU=;
	h=To:Subject:From:Message-Id:Date; b=CJYKIuJ7398s5IkQzQD63eeimt756Y2QARGv/1oNxUZPZ9/rwAxMVP47ahRlTPXDj3+V8jtujoi5RwPu/6f02foP5wXLDvHPp/sQEWtdSslywr0/yWcixyTs3nmHXPdA5dCWs7TD5ePdODfw7nqQ7kH35Szu63zBGrBq2RKgFtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8QCNwLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8QCNwLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A471AC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763146793;
	bh=hyUVJTAMAwb73+y5btXMXoyW+bLI6DNjLGdhHsYyzgU=;
	h=To:Subject:From:Date:From;
	b=T8QCNwLdno2h4HlSeJ+cgPiE4PvAvxLI+dSmRfHTo0p01+PZRpwU/Zy+J0u7KNlCn
	 N7UmzkR+MdlJ/6bwJAMgXrfOmf7S8JHcCD1Bce6BugMzSOQVjNjt1w7DrSmBMFb+F3
	 jxm91iuFXYSkK8HQZsw3o7ymxUjeb+GJoxsfbQrc0A3DHoevwMHZwa30lqCitj7/WN
	 ERcfnKACldc8IHkC8mW874dv9hoH1mcFK9XGd8bcajkSRnBMFq2O9NJTXsDDaO/R5B
	 l28hUOPLy5EN7KOqbkiyZyaIKyHDVXcl5UHAr1RLZ44XrHCeEUtjm5vRvR/qWuu8OG
	 DShi1B7M9zitA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983A0CE8D76
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314679361.13777.13561195290743535778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cbc2033b8683aa64e939890c45dd94db77a9762f9a0aee0a367f173ce3d558a
Date: Fri, 14 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763146793
