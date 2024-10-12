Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4675114D457
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728738354; cv=none; b=DWjm2lt+GuUJ4ImK8Pb5apx8vkZgoNzj0lUMyXhx2ov0Z6BqEmNGIBk++eBInjKw1dT+wfG23PSAtdnfiyLBxmO631JBtMowrUvuj9iugQ7JY7Ujj2pck7m84YLS4ouykkl1QIYFu4RKN7+1wLoczpj31OFLXqy37FiDIhFTrSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728738354; c=relaxed/simple;
	bh=rc2GXT9l/+WIjBTExRTu4QXHAOthKTIaS23Izo6qStI=;
	h=To:Subject:From:Message-Id:Date; b=O6K8djFZlWc6KXJuhrewcjT8d4183FKntXly84RF7pxk6g3WRiB1hJh5ffT2OG/GMaxr5kYaGbAr99+S6FtPDj3j3iU09V79fKsU4XJDOqDiv9+pJ+dRJczePldNyJskcBnsrYoCyzOzQ4m43m4J+FEQxoSrbqRaqlyqO3OQYHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppZiR/Vc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppZiR/Vc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E4AC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728738353;
	bh=rc2GXT9l/+WIjBTExRTu4QXHAOthKTIaS23Izo6qStI=;
	h=To:Subject:From:Date:From;
	b=ppZiR/VcLVVdHRLPGPV6owqPq/riJXrClNRX06S0zBtEZY8zEJbYUjr09vMeRQDp8
	 bVkr0YrJNmKTT0T2mCXcf4q7gQEhAFRUhkIeHcNgaUK4f+Jb70Nw8BHYfNFgrbVYZd
	 hf1D5Etp35rnVizDGL7c4F/TPrM8ptKUzXWuGfy+dGJlv05Vn6Of35cnWh6ezRqCjY
	 6UAiXnfcKaPd0v1U6iVixK2OtkUntkmpanQV9ypYvMtutj8nB7YApZSm4l8eYfu8d1
	 Kz0q+4RZek6/tuM/fM0L14Pav3pPrXt1nc7Bhu7AVNhKUbPotxsCGyuddH6ss0ZgXN
	 x34k0WGq+CkVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44B6CF2568
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873835364.5705.10546181013835856407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c0c32fcde10a111e493e2f63d1c70f44795049341c8b24add36a6f5a769944
Date: Sat, 12 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728738353
