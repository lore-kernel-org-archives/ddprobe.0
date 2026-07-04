Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAE518CBE1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783125514; cv=none; b=pXAhkPeB9BOlF1RUPO5LW/370KREo9MMiobLAr7VS8bK6BSlA6Yi4dsUxz8ddZ0n2/ZRZxObHK7X7EWrQM3tvRYTlcvQ4JVKSkezwaNh3ha9Kcg5RIpIeJJwAVLATd6sJuuOjC3nCA5s+n8O89bP4ua64KD7ro0/tt9JK9wz0Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783125514; c=relaxed/simple;
	bh=g4MCTFThYw6gGOEd+XJpl9el1no3nVdV+UluTBmmhSs=;
	h=To:Subject:From:Message-Id:Date; b=UYTANM0vNSbiHh97urajnbQdNF6EVqMhQ1X9Lm6zGs/uYk+c4UrmuVqWm/gHaNPuUpGu/gLUEZLiblDWHYRMIdi+BwrjAYUOBpe+9wZZDBmb/e9CvZEbvkSmqi8PLTUYMB+MIpL9J1/Bvn8zUCkgPknmqe4FdjEjsBvhPuXhS5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rk4tbG0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rk4tbG0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C0DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783125513;
	bh=g4MCTFThYw6gGOEd+XJpl9el1no3nVdV+UluTBmmhSs=;
	h=To:Subject:From:Date:From;
	b=rk4tbG0PS6y+3ib/QICXJjcZgrCb/8eR0SxHd0j4wzC2RDowV+vKP0B9l66TiT+FK
	 WwnpYNTHb6JJo1vcVJGZgTJCpDxVoNrbqolJyPJAJQclSPZ91ym/FFmUEFKGRNoH4o
	 jQWFddaIOXWQJuJae+UQw1HjY8mbjlyZp6FnFbi2secp3xDfxDH1+mtXG+n/7CSx+N
	 Tv3vv8Lb7e1U5ncMycFnpks/8toOQe8kljGnkzuhbw/GbEcHoJ3a2Pmbghf1Rzo/Y8
	 LDB3S4rpEQQvnE+DxFMPnIzCLODYrTEatC6wRJX+1WJBO+3koAZW2WY3Gun3s0VIft
	 J+mjygagVylqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDEDC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312551368.12180.6307869689168178085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f43e732b3e1127ceaae144509f9c2cf6668a471471c50d9a79cb4bcf2f45f4
Date: Sat, 04 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783125513
