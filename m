Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDB13770B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783847914; cv=none; b=F8CHM+WDuQT3BxJ62EKfMaluXVOxChJRrdQYu8B6RaH9M2NwDFySLGnF6vG93ymByyL8HGGUx46UCA5tLcAnZRvCXbZrj/HdSpEvV1NNPYnnAS/dZtlF+ECPYuf9bP9t4JkxHmXAE4lMG9mkkI9NNMba4FpMJK+fS2wn/zAHwtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783847914; c=relaxed/simple;
	bh=CHBpljyOgfu+TbHlx7UlNs1Djwu1dRaLStLiLCqUehc=;
	h=To:Subject:From:Message-Id:Date; b=q4tp3P96vUwLQlGNitHbbZOO4/egIxtW8tduzS/DiiSDuBvNyZp+bF8EI1EuuT5o+dLAZIAS8A7vMx1McHm6tMXCJc4wf3mjjZfrQsNvavmyxPEkpzTjnXu/cZUp663vAT6BXmbiqEL+X5/SA6yaZ2jZ7N3xiAuuU36pQ9onkI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwWqYYDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwWqYYDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59CDC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783847913;
	bh=CHBpljyOgfu+TbHlx7UlNs1Djwu1dRaLStLiLCqUehc=;
	h=To:Subject:From:Date:From;
	b=UwWqYYDoCl4WsY4zL462s7/ETIEZuGLovklcMj/urQ8WYUcyNqkEKSMLuM4q9+iGa
	 ArYw7DrrHiU/3BH4I/rqqDhOBtE33Rw05c1F4wUtZd1d5EL+nUMohHB+FMjkidJ4ve
	 PLEcVf9+Skz3UTrom0dNvqvmo3M4DKf/7mTdBNs6AiQbTeYuu/mIW+tMTCs3tAGCfd
	 Vo1Ixk+XZTgnMtyVb2emfVwWnyPFhTGxK4pvTs7W+R6H719Z9aQ5prV3pEyKYmI626
	 T5FI4VS1/nbPPN3U88mM2gAjDiXppwJfurpTEs+3EGdLKIKpMIlaxNze3q3J6RgzFR
	 IhawX8WX9DdVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4A7C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384791368.6965.4470444394048256482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1e8b6e9d6ac199f25ff34095c65b07548be072436f11127692f35a7a90e9be
Date: Sun, 12 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783847913
