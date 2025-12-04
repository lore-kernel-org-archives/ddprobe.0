Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4D9243367
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764814974; cv=none; b=eE05EG/IvyHU2O2ULcmp0CerQNQ6qQoUW0R29zVK3b0canBPvcRJvTb505zLHvTyBz8uo5MeIpP0iPT+IdRqPLkSI3wZKgjM3n6R814Ztr+f+hehvq8tRv8yV6PJH1+DswI1xvx1lXnvsBX1ue1KKNNSAWEiBCrN8/CFnS0GHEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764814974; c=relaxed/simple;
	bh=08v3GigctgKkNFBTgpAK0RFCDlzCYfjoo4/UemD2GNE=;
	h=To:Subject:From:Message-Id:Date; b=BISDEcZ2jl++4vfK3vHMpxccpJCWKjwz9uHXg/E8EJ7juAnqvPn2aG+PAR4u+OpXl41GWA3IbO9LDWze9P1JBYB8QUsGsBlY0RlEPp00wDWSh0a4kq5Na9GD2gSyvtTWfiCC/SsWrFhKO/dA9SiS8NANt8SeKJEHi5rmkg/jflQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euPk7Gqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euPk7Gqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC46FC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764814973;
	bh=08v3GigctgKkNFBTgpAK0RFCDlzCYfjoo4/UemD2GNE=;
	h=To:Subject:From:Date:From;
	b=euPk7GqnafxQUszC08qAEi1IfS4lyX4uVaCxQw5LB4FYEkHM6rPD+7qy0G/QIKvDP
	 ggADVrLacWSZkZUGB1oXq5BfHS5Jx3q3Yr8fHd8qmky5B6mi9T06wRTJzbRwLeb2Vl
	 EYfwWFS5EzwjcWZkWKwXqSbBtP3TOauP8/hcCPj480qI2FX/GZ6/qCoUtiy9uz/l+2
	 HTZ1q3H9Cr8F/IRA1N1gtGi2q1y1vOwgfNXIyZKM/mEP2+7PbrzMOuoxLB3kGhi/rj
	 8zjZM4x8XYlOup8a5UDzLDJflJWUDx9swpviDrDnVTlJzSZ/Aeq2aiokNiyKwwkJSD
	 b85NyKVZz+5iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9479FD1CDB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481497358.32346.18176872188405516808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d67e4e0992540388d16d67591e80d1a8cf371cba9d058bd59d3df930a36938
Date: Thu, 04 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764814973
