Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DFF3AEF3B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773827694; cv=none; b=fn2bqK72jbXFjaNQohw6ZxoHsVfRG5XMr7CAyQ+0M8H8NIhztEUxO4KwHt3ZfgFFe4jxtkZMctJtGzfaMaBgEWZmWAMPTqMwb6wwitZWRIw19SW0wakxCB1yT9kM1UOmRTa0EPotc3y6jqrUGh3UdfujOXoo2XlJyQ/PoQCb07w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773827694; c=relaxed/simple;
	bh=cD/nAfRS5Yg++9AMchd5AFE1mezLtyqE+1mdeDuxmvg=;
	h=To:Subject:From:Message-Id:Date; b=nHbBtGix+NeH3QQwwZN5BIacXncoi7VkEFRd4x+Fl095dQJqrdUN2mSMoYqdarbyQOW/6o4omXNpxpovMq7eoGdAPN4VcedW9PzAtKsuPHqnZ39zlpIdY4jnI03/FTB8Vd6ObMuYbQlkv8uVnJkEfVnr04gmvVM+YLrksemnNxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghS7wL/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghS7wL/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19CAC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773827693;
	bh=cD/nAfRS5Yg++9AMchd5AFE1mezLtyqE+1mdeDuxmvg=;
	h=To:Subject:From:Date:From;
	b=ghS7wL/rGGrqFbDJ8yTvkIAwN2dS7Tp66kYr7+oRc99wlOR357fMcGglsa8LUSV0v
	 pAQap/tTC0dWDIcJBRdA35e1c0iX07KGNSv+l6cJFgdkUOqbHOKrk5I25nLaIfDsjZ
	 eUI8JbiWAAag4ywolQPZ/7YO3QRgrx3jK0l0BPGN1hY/7uy7RqoT+DFmFDX1ZvCURa
	 tyoXGtcYEGzJ/65z8MuAJoy3hk9o3RlANHO3+JOjLoDEwJZ7shDF6Wj69WSi6BZWM3
	 Gpeyvlw7mrophIj/eWkFZINbOyZZeTeJIucT88rUs8PeyPA3tTjvHfc6D5DV3vN/la
	 SAZibCG4H9ULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002310854DF
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382769358.11860.17932197829094470049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55881c7d66d9ec94d5f6e73b3cc3d5ce86be67a97e55f3c9ce0c3ca4c9554b3
Date: Wed, 18 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773827693
