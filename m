Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE9D270552
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792005634; cv=none; b=f9+Ux1XhPX1etaFATt42ReYxZ3CG2Jrce0Xyqph0zRLqro7dA57xf9GFE3o4sPunJ1oRBFWddVeAdg11oKA2BMNcPlFj9vmpsLp7QlNQJqMNDi/I3A2p0quBT8qIQVjyED1/291z7EdgZKhE4DAN2J1SznDO8LlddH+feAex6HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792005634; c=relaxed/simple;
	bh=OLG2vIizQOVP0Oqc0gbulM8CM8IiRbxLRqbhfgPAO9o=;
	h=To:Subject:From:Message-Id:Date; b=ZKc9Re4Mag6/+UipZddqZP1TaNr1cBWwv7igh8Eyd7bypjmgVS4kkgqMVg5AuACWdXrKEX84zVF7WuxGj/VPhO9CrhpGVCBRR2nLk9NRFsEUdZlRvRk6nZ99lSB3zzzYDo1w6GlCEFnET3NIiPkwH5dkj00Et3DnhviB9bEk93I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjyrUXXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjyrUXXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8860C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792005633;
	bh=OLG2vIizQOVP0Oqc0gbulM8CM8IiRbxLRqbhfgPAO9o=;
	h=To:Subject:From:Date:From;
	b=qjyrUXXkiYzK89vDmOajh8fGWX+x8pbrXSGdGQquvWlMWu6610Ig19ps3JOr0/Nyt
	 nDPQ/cPhcp0WlXZfs3IsJKcNwnQ/J7l3UEy7RTVyGEZZHF5hu/XvTcJnSe9MTFmoIb
	 N3BWRSCARKIbv580PFmvVrz8Q9PHDqb46E91st3J2gfzT6tTlPg1z0HBjFelz7nVQ1
	 dAtZgKbAAUun0O0cnLnzHYRN6PfhnAg/20CI/3NlEQU1ycSQyioUzf9XagFjMOCU6B
	 qokDewUKQEQ3driPTROq59rd9byrhNaJ/pUbUCMbuUjoYYxerbBzUB7MbOlp55IYBA
	 sddp/mthoK8+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE60CC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200563375.6239.6739892975169793814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12877f40ae244936f8b309d74a1b8e097d2319d98148eb5f807a78093cc14af5
Date: Wed, 14 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792005633
