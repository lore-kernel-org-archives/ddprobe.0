Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2752134BA33
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758133194; cv=none; b=augrGWkhDrspaO5B3zV7BN2QqoqGI1CPx7+1DGiW5DAcsAX2PPAVgInm+N/xn7piy0z0QwLhX5sO2fy9YtONFrcHh9/uirmCdY8MuLAz6D99c63anDLqzSs5EqrCRn8q1HbJ5/PNS10nL6qjFko4cxOcLukqF/dDRBMEhZgxJdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758133194; c=relaxed/simple;
	bh=c7DYEpc8J7M4qExAfvMPa4GazEK+mBN5+m9xaX0joow=;
	h=To:Subject:From:Message-Id:Date; b=pMZ178a0+puwltuII5QCQMb0QSXx7EQs4g93o4NBCQxxJ/ZsMaMrVVhy+6wLG7yj02Z6j619A2FzHEWD7BjihwJQkJ4R+SG4cbtHbU3I0PIDBValKQJjTqC3Qw3rJt1izVQ+vVVeXEe7MsoJaEi56qEwrQ2klqRP44M6eS9HbF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbS+matI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbS+matI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A581AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758133193;
	bh=c7DYEpc8J7M4qExAfvMPa4GazEK+mBN5+m9xaX0joow=;
	h=To:Subject:From:Date:From;
	b=mbS+matIAzVdHq5R4/2EqAj4IVlrtNuBd1JqsPlra/9tQcFHoOaawSauiBtsRGyki
	 2wfeNYCObgC8ExZOVVVbLXCJ3JklbNlhUqxtBOzyG8vOPkDYubf2fuaNiN3pP4zyoV
	 IkJ3hWzKU0OihEZ8GKPE2lEXcf9+OJ5RmIBVUAbl/AnuyBIaN25ZjVs2WcIBBuVjo8
	 4GSAmweQNPbH2jD1Azyk55Wx+Himd/soW/p4H6yhGpCZW1sK6LrgCiny5b++HILpTG
	 jEDPEpO4oKMaA1PG8RfX+oAXLr7L9QSeo4Nw0XL3jZ0N9CE3leLWS7fcqYknrCgf1c
	 DqgdRPnluOchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D1CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813319358.13427.5629993453766277748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6469e6659b4e58577ea68276df3d85a5f0eec4139b2308b6fa8f56a4c8ee672e
Date: Wed, 17 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758133193
