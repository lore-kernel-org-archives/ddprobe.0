Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739113CAE85
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777033654; cv=none; b=r56jKtBaUq651LysAR/7r9LxF83RCGZ+MS85SQhNfwvuZmdiLWKWWg9dqeZt/4qlp+AYG0VT68wM8TfTXWigu8EkTCiIbshVIHuS1ET7kJNwg4NUmzm3Ar0YiHJi2Q2EpM5yCZ7HcXGHTjwu1elZBUgsK30b46VA/dPJxGuyPks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777033654; c=relaxed/simple;
	bh=VITyZzTmmBUrCVxru14VwMolSzXMwXEfoGfA5WfHHRo=;
	h=To:Subject:From:Message-Id:Date; b=J5+2ay8BNFerDpy71G0LIdYcZ4UDq+1HpiXkk6GKr8fOkP1BSYr9Hp7bU/TBGP1MZ43D3k6Ylx2476wNV5F0tiHsS2vVlcxtPXZSTVZjdHnetean7B385Ump2G/LYAU9A3La2UY49WdAXrcg7/g5TbGPbTJiGXoPw24+r8xKEHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjE5LzKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjE5LzKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE82DC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777033653;
	bh=VITyZzTmmBUrCVxru14VwMolSzXMwXEfoGfA5WfHHRo=;
	h=To:Subject:From:Date:From;
	b=TjE5LzKM/cWOwZFx+0O/sP6VgIJniKJ9P/7bKkvx6RtByiDzGDPPAa8HYTMlydmww
	 ATaqa5zFaYZDTu2uaGTmFqVYu9vE1+nePmLPptqvrJfktNUJXd3ZL2NCjm/yGscOB8
	 UVzFKkwtjt3OIHt+dkmZHRTh7qftw76GiCaK3PtKd8zk8lukf/IKh6/QP2zeuFKnjn
	 uKcEHu1VrklBmgGrUYd0PCZORCUcZA87W10lPdf2aiYx1du9jXE0WHIAGDZ8CN8yvh
	 ePPjiPiBG5h1MJ/CZQj8+S+dJRldKQrdC1fkha6IvVqAWhyAnKW4YeKmZ255++s1fP
	 n+Vqar9bJVOEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF80FFE521D
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703365368.13722.10366375280279586354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde2374226e2e52fa1853b343b053643fbdbf26e709ed9b33ecd983fa9450bcb
Date: Fri, 24 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777033653
