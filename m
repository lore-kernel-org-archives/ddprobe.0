Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B0626B0B6
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745411994; cv=none; b=KscezSrMrhKbXY+Rzc1PFGLA0SYCy87f3OKdlR4uMF/SGEUOoQgOvy4LAoDgPAnPnzTfHXZuN5b3GcnGIUEmHmxi0R0AGvLzaNNp5t2GMHfnIFZIZttLomGCJYEnlKscJLkp21u86foeiiqxPYpxhEkCF1p+bNuuvj2v8828fCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745411994; c=relaxed/simple;
	bh=kvfVmLnG3tUUkxXhBDpmSqMtY/6Zz/P03XSxnrE9VUE=;
	h=To:Subject:From:Message-Id:Date; b=YlOMFFbBOmdJEBqBrRAjRlR7xiUuZRVRxvZGtORpgEfctlYmymHQOAH5i+rbYks6cj27+Yt/BInHvyVlmlGko+F05DTv4wE5hLfSC6FlPCmcu/eLY5ZQt92uOHSnAQE0EtCo4kifCisouyis3i7UfHlSvkVmVzvm+cFMM2ck5zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTwP16W1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTwP16W1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E0C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745411993;
	bh=kvfVmLnG3tUUkxXhBDpmSqMtY/6Zz/P03XSxnrE9VUE=;
	h=To:Subject:From:Date:From;
	b=RTwP16W1B5L0/rpYr+PYwFeqDKWOi0Yw+IU+ABm3FYGEGVPINJgMr5QWWUpBBvQuc
	 KDp1Re7Jj7unaAgZ+nGQ64jEt8b6SrOvYICT6V3tWVwYc67a1W/MWS4BthHcS3xn9u
	 dnBRHPMAScz21ADqUg2LEvtT1DOKKSelhKnjqXuQ9eO23s7cxPAVsZky+B5arQ/Q/z
	 1KpjU7oGrHcRbwxB+bqNMchq4W7K0JF1YZNmobI49Fap72XsfVDZoCMPSChKZbIyHB
	 xmoDQvVzkCtGNIDGkYrU8yYTdksMjffrJGsDIKuuJ0dvSLEasYS47GsUfV7BmmlCGi
	 qfIP0z2Xe71QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6DC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541199358.5832.15150106335298517485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af9968dd6a21f24cf6862e6dfc8ba258efad2765ece87a7f3b33168ea65dfaa
Date: Wed, 23 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745411993
