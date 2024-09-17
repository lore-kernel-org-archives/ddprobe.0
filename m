Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4316CA31
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726538154; cv=none; b=Vt5NAIAmDAcrIvkXXOMiCwXPNBeY4wI9iOiKLDYpGqnQJtEYgJOq+giHFxmV7jlL4l3o70FW6oyuYejyVgALPABY8Dy4Hj6bpLlcrNovJWo0Ug6oNZr0Mu0g04wXiL0sAtPQ620cYGzSLA38VsgL7/SsBK9+cXT+GQrkdeUXnAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726538154; c=relaxed/simple;
	bh=4jicL+Y00PjV/t2I3FpB4oDBKv4cgluG6FPAnDfIfgE=;
	h=To:Subject:From:Message-Id:Date; b=kkwk/72rOr8idf5iLZMeSBc9BbXyxE8oNyhQ4AL1iO6rYS+4GxsmlVBjQzdAkamYZ5Kr/VaRO2BCV7hpK001DcYl8CAi2iw2q/KsBAjrEkJqB+3sd1Mi0R5gFToJCNEXrUtDC+kgW2f1DMa86Fk2/gOeuVQ8E4x5A3MAJEqbUXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRAPh6Bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRAPh6Bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5274C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726538153;
	bh=4jicL+Y00PjV/t2I3FpB4oDBKv4cgluG6FPAnDfIfgE=;
	h=To:Subject:From:Date:From;
	b=MRAPh6BiYedlqQes/7vH8g1f6Ij+iUzGDoeZRvfSMQamsCa/sWjyYLMnC2LUtc9z/
	 mju0UEtW3rp3Nr61qbHMDEUSLtvl59DoDmd9vIaWohuDLasho0Y4CAVGsltzya/LHk
	 2ykgfI0lWJuG3GMhBDLJHOSART0IE+8gldNa2l4cuhvu4mBFNdgPQSIDXd0ZLIHoB4
	 X96YEU2YxrJUQNTkuyXaWxo7V0SV8jOqb7Clygl3kg+Xj48V0/pBGGgTMsTLk9BXzL
	 eF88tmYtrOdWgfexd9BpLgeXZ5xijTTctLDUPXPJrDYvxVJ7/H2rnY81KCZV8Vgzp/
	 9Slx4JHlI1HOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA08C3ABB2
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172653815360.18183.13726132832333915175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca662ce89cc9b0cb0027f708e144e61123393db59919565beefc9a054cf1971
Date: Tue, 17 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726538153
