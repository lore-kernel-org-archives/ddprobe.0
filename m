Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB63F4FA
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740199134; cv=none; b=m87B9Kv8vs/BZrXf2e0HCxgFedkCc1a2KfVjtJ3UJc9QmJB9JtUKOTmD5avn0svS22/Sg8JTjJ3M8WqZr8y6ThDWORB1asQxK4rWWs074uWj7GSiFOnfEVO2RWgxG0zgeepRFbwmGP66E0pCKRxz+Ajcy92pTAk/GjYyPvpCKLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740199134; c=relaxed/simple;
	bh=7wd8IQqTyPxGJe9d6u5mfjCKrOcS+yE568A3xG/qbg8=;
	h=To:Subject:From:Message-Id:Date; b=TK/8F8wwvuHTZpVsku68M8Wua/Zt0V5R1vQLlFkgKLVVL4K9GpinagyOkDM5syf1k6TcVl1MaMgn4bRShj/TAp1BdG9MAK6lcZCwxzKv+NtrMSxJDGc98AxCAxf/WjoovmGBmdQgkGtFLmsH0dFuQThAbNVeUMLGeYBYtxRpiu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxAwHdAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxAwHdAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91A4C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740199133;
	bh=7wd8IQqTyPxGJe9d6u5mfjCKrOcS+yE568A3xG/qbg8=;
	h=To:Subject:From:Date:From;
	b=bxAwHdATxPofwo/FUvLCF3HLBSZ8DPtqQK6BEySDl20pG3gNy50f8Z5LXZzOLWYUy
	 b10ucA6yVEmaVTv1UhgqUqv31MJqnNDF3G2lkWhps9qBQ/fVx+NtCNiD2elC9n1Lku
	 04hOK0ABY4yZGYrhAl0MCyFc1bo+UhTAZgP8vFEi9VpA9Jw3xjNWJZ28/5QkabYIMc
	 2g0H+7qB+ncAZ5tDvk7fhULSYbjv0p2b3kDVxcjecal7gQSglZagyGrbTmwli+8K2z
	 tl+kKGr2Tn6xyYOEeJcwWZlD5+e0GCnCPSOq5MnbmJh+QKrN7JEwtzDO6rdm2lS+gL
	 xNGwyi470+D5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93714C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174019913359.7495.15924594544450357415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d2d94dcd9b8600f1e1891b0f4f16d0b414b62485cd4ca6ba6c21dd624426ee
Date: Sat, 22 Feb 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740199133
