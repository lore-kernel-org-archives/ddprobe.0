Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28693271462
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756556994; cv=none; b=Wyr9/PKwPiheImfh+XuUqqMO/xbw9MBvAHX2DOoKim1cU2Bt9DbGkNN5GUC1SWqwFjqjH0OoR1AP9j65TO5apuqSCDNHKIh5h/3MhqGU0dKLYvmb1993i2bZ2v06cogIZ53d5gvIRGlzK2D9xj3dao9fFVNQ4ay0Ylin/Xn1sj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756556994; c=relaxed/simple;
	bh=g/lUHxCGa1DKDOdND04FngvYMvqGgPNrokAIdKc9PT4=;
	h=To:Subject:From:Message-Id:Date; b=CYANUHCHHH1E1HJ4ruxqZvsQvJ3GHYulg1Jyj6HZdclsdmfXgzW3jzd+0sPoQGuVXabhBsCe9ukCdFBZopUCQ6HKkOzPwjq/uvLIFFMnZkJ9gZPxMhntEkttCK5wG0BR65A28/dF4EGwfqPIu7/ejiGuzbij+kc+vDWWpdZMAOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDvVlHhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDvVlHhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B14C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756556993;
	bh=g/lUHxCGa1DKDOdND04FngvYMvqGgPNrokAIdKc9PT4=;
	h=To:Subject:From:Date:From;
	b=gDvVlHhYQwfHie5wcMv2XuCElQXJds5BhEjb2Cdeg6pG9OfHN92E8UYP0jovv84VV
	 lRZXjrfanOoEdVRHTneHgFsJIcCoKU6EWghGCQUkCNTpnDDA2HlYO+cP2PyyTAXOBb
	 rhMwDCx66yJ/UjZ6NB9nFxRsIn14oFEsbqHbdC7YNNK7jKcT4b+1qGn5DvbEYcHZfy
	 l+9c253Q/8qwhPjPbjFw8FKXrBieYJ/Ckozp4Dc81JjorIbbAmX7gURXgzWCUGVu9o
	 tMPeCzYILApEoKHFM0ajncbXplukhAb2fUGXl4DvlbRwycsdpVdWNf3fk0jFGlTD05
	 trhb1I88JORXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F2ACA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655699358.1128.4160791271053408928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1f7291ebace5e796a30c851d6ff1f88ac3b3289a083d1300e562638e33f14d
Date: Sat, 30 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756556993
