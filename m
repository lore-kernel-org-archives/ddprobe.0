Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D3E3859F0
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780097614; cv=none; b=OCeFGEUHxunpY1ajftfz0IzRg2jk37fzI9qa+7axWGDbmrTlAB6FPou69l2HKxqgniK3m8zaAPqNlACoWaadgYmmp6VrX/kQyBmztJYZmgD1cGmiY0DbNlbfVn3RlrUmWTVKFy+AhBT4aRfrcEwjTr9F/aL2NAT1cofDH+rj4pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780097614; c=relaxed/simple;
	bh=Ru7rK4fOy0D6aiSgsXMkE3x27etzCcsFAaudMIlyxJQ=;
	h=To:Subject:From:Message-Id:Date; b=I+BdMQzIZUVpS8SuJe1nv+fDw0/iSO76J0wup9XS5IQzuHMLYW2tdAeMkeb3ctOjFt4H2FwpXrC/ETQxzdAmv/84/DI0dyYZDB87JWMvFh+4WcQAxyzVlhE7vaer7k4Jnw4WF1190/IsYby0Z99aOwhHEQ1eTxorzscooT9AHfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXHZVFZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXHZVFZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFABDC2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780097613;
	bh=Ru7rK4fOy0D6aiSgsXMkE3x27etzCcsFAaudMIlyxJQ=;
	h=To:Subject:From:Date:From;
	b=VXHZVFZik0SghQAS91ySAPlUWlrrJMP4zgAfRkNuBGUn0uQ248vKjFq+gqrn9tpIV
	 Lxt9e09vJeyJyadf9QIivgwmGZYxkQqIyi7fIjG9euu7z8Fq2zN0V0gnmS38h3gYbz
	 lNiqH5vzO+wwGxPr/2vYbmqzNSTHxz7OJ3b2Lp1jT411Qpd6QJBSfHdDENLiDOIvTg
	 8MMYcjAWTdS+GMOqv3Rk1SJxLaJAyNPH1K7q8zSlek0m2GLTil6BvLMQQWlYo8Pw02
	 8+35atlIYTX/4OvOITwjFVjaoxrYcTR833yi8eARVlFHHFpxpVuwuJeUEhUjgAhNFW
	 EKLnoZyxpMfNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA4CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009761368.9998.14591185262444422477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d792f04f707d6dfdb007a95d0d1774d42d3a2aaee4dec2905dbb9c4f9aa49d7
Date: Fri, 29 May 2026 23:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780097613
