Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE75B67A
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759636794; cv=none; b=BxBV5d3Jgp3Iw1UGSX/fs4UdfLBmEqzv5jMEjVJLDsZhCGwH2FSA5NGvEZpt+MFomE0HckkTc7EvbOgnaaaxOj3y4EWNrdYbI8fJ+6kBG9u8hoZdSAULbiQmhWIuOYsprcWOU9Vo0fYeXTDmE3uY0CI4OluUVXl9bkYwowYtfaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759636794; c=relaxed/simple;
	bh=0Z/TYKzb9WfrBkq3Wfai4+/jiNtyiw5a1NXNSfaGrX4=;
	h=To:Subject:From:Message-Id:Date; b=QPUcl8D7SXR2LvNqN8pxq51y/IvDcCdxOGQJHtVJo+J1QatRjyNEMgW/KoaDdytiPmU4pM7w+JEVp77WnDdCG8dBm2JNKJJitsOc0hgz8IDDbiobk14YTEbp3XhLqkKoUHSjX/mFlj6SIvGMnQPnQNHcFNSRdUzt3FLSvrid6lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCxYS1HM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCxYS1HM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C4AC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759636793;
	bh=0Z/TYKzb9WfrBkq3Wfai4+/jiNtyiw5a1NXNSfaGrX4=;
	h=To:Subject:From:Date:From;
	b=gCxYS1HMpw/FMzg98XMEoJWq7oJfeMgPQUL+FntPP/T31Pcd5KKSJbq496hXBdkzO
	 1KJ9FfRJjwr2UoofrlxiXZ0JbsnSRKFgZYJS2IEdWHoiajN0p1JzDxxI+Kri+XM+Rj
	 sb1TwsLzz+HTnUNJxgRe0Yi+JeuRDtTht/cnIvjYpENWCC2wLlBk8eApUPywtZMMKX
	 S75Hfottv6X29BA6h3qr+YBshyPveGFIJt5IFfmJc/8KjAAg1MtYgQyq63Y8tA8T1W
	 IpRl8ml6EaoHgmHt4TRU49NINkwE1IBlsjmRttUhnzLtM8apa/lFulPi1Pl5gQoCwu
	 Ul9GUrtBEUJFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DB1CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963679357.28582.16673748068973641234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9a6e0d58a129fc4710d0cc6be7d7468718e7c8e911f1a18ade431e042c4716
Date: Sun, 05 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759636793
