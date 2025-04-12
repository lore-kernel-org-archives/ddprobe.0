Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D07A1885A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744480194; cv=none; b=dUoJPBp2jVBRyX6oHZ4TecXjOvhueCEFYgrePJzviBAxkKmcnYJhPi0fXFCsLcSFkXzN7+OKplDCqN9ZlUowkvDPhkxz2RamHEKD6hirvioRl7BThR3Fb3aUgBmHc5Aonljq5qW7WsT/8UsypWBkFKE+UvgDGRHAWBa/D1x3eGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744480194; c=relaxed/simple;
	bh=i1W60NEox2KFVM7tZ7hDORg6fi6gXqrjSYhwq2h/RzI=;
	h=To:Subject:From:Message-Id:Date; b=uPW38Pcc7XOsM/MWhp5yDwKO3uVX+OWnumoJJja+QEtBz0GihkUHko0xs6Q6cA/J/l/RV3QvDm3+jJS3Lh6nii9Um85Al08iP09uJHoCi8xD+MHYst5t/gcxy8l3HNETs7iR4f/WOU6RTjkQAmCdXNzzpI9c/AzH5Q5KIaRzino=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y78OMCmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y78OMCmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CEFC4CEE8
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744480193;
	bh=i1W60NEox2KFVM7tZ7hDORg6fi6gXqrjSYhwq2h/RzI=;
	h=To:Subject:From:Date:From;
	b=Y78OMCmPBITJCu00uXIOJCbU3GcyPNS5EkKefLbsSuDpxxSOvQyT9KD7Z5/9O3hym
	 Qs5oRz06CdwE8RasVVQJMoWZfs44CVTyQBMF7/187K0Hd/HD3moyc6DRYSNktrRIMX
	 vIE91+Iz/qr2VPYamocNFjunB+1jnEpqzuoJbo2YEIZL8I53FLkqt7u0k8VU/+KbMe
	 bFQqLKO+ExCCsd54b4XKge2IjSSTEHf4549q2TOPkWWYlSyYxKTK9mUzGg7gx5bAg+
	 qyuuCAhRUIced1pFKZSeKHeBPaaQgC5tdzmduKDMwqocsDSCECeJn35xIuklG5cO7P
	 DGtXpolTaA0Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905EAC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448019358.21213.8149163311094499599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a728bf503c3bb5615d6484c5facde2296c30c90215ff517e841d8ec785dd9c
Date: Sat, 12 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744480193
