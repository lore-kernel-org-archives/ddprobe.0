Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358AF239E80
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754777394; cv=none; b=GtHt0qeQSglBmJ2vti9SU2NMSC5gCkLapu/VGxQ1Lf6f3Jh5OqsxChDcHPBnkuyYj1CBEv0HHnritqJK7oFctG+uu8BZGge9AC1obTPU0Dt5g3BWbXkr8a6w9EOfAPiyKKU3U3Y9mdI70R5mhNj4N+C5MXn4p1PxnYTGBO7Mt64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754777394; c=relaxed/simple;
	bh=48eHOapsggoMd2isvKPTblzPNTlolkOQQSB1t36cXWE=;
	h=To:Subject:From:Message-Id:Date; b=rWnVFqd16HpRgSl6rzG/kQ9DnfaO7ock/qk5VbNG8MJzGQMmRbRxzvwcOEcxJtH5a0wv9xixoVV3KKT8JWyoNnfsVn/QPnbh/5Y5s5pNsbNZYiFapEbi7G4FY7rfRrFpeeygJ4jL8wlna1AKd6kASVBBjlaPxFxoI2nNjXPdGNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttcR3oHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttcR3oHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF5FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754777393;
	bh=48eHOapsggoMd2isvKPTblzPNTlolkOQQSB1t36cXWE=;
	h=To:Subject:From:Date:From;
	b=ttcR3oHwFKfDvDvhKI31KVFcujr8LB0qYtvU/itHDC8PkiOEp52Ds/G/dxAFdtUA6
	 xHkLfQOVhO2qotIrEnjbNSWnd9fvxtKQLp2ALhE2dxIk9oXJPTbiOW8smsouuTeabH
	 58rak4VftNBEaPiP9IVMH/py7WkudvKgB6K+usr6qbDagbBsrFHQXV/4y+sEth/ErP
	 IYuzH2kvbckZ5VCc2wy+OZKAOEN/GlKX8hL3ySQlDkOinFmH1r/TXiZeDVE9+2I9pM
	 7OgZXNiDDRNIlq7UlNPXRCqWio15393FJFlNY6TWfZFfD3HNrHNkeMGtg0loucn7eV
	 9mVORrc93kT9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A7C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477739357.8181.8892312887951061397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f3ba99f68ec6515a456d36a56a509277ce6f4873c76fa5c6c48ba80d552947
Date: Sat, 09 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754777393
