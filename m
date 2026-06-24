Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C83523AE9B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782343654; cv=none; b=Of6oGBCQApfMJ41TnuDBWpGG5Hb1MSi4mpKMUmZc9seqEnQOVHFIuxd1zsazSWR6BVMrp5aQI5rddDOM+wpt7eiFZfYPOY5584EbxSZGkiVCwcKeUxdSi4zqtlbCuqvbC/nZ2Me5kcLOUtEtuq9LPJaqzAE8XHX1r7ngfzPEDb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782343654; c=relaxed/simple;
	bh=fOqm4It3tiYlTzVWW91bLK52yBSGF89oiPgIIbDzp2o=;
	h=To:Subject:From:Message-Id:Date; b=o0FOev236OpMU4MM8UzGeDbVlmvuXccHUUC3nG/XPLGDscLR0tYER7lg37SHkfMjwnS+DV3wXl/4DTu6UK8FeLTbOKEI3P+hhAfRwZEO7P1m/7JF1brAOgVJKVgVOAPiW4/CqdwAL7F05zI2RMCtCm/IEiWWqmiNhRdMCLxeO3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYZzCPPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYZzCPPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFAAC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782343653;
	bh=fOqm4It3tiYlTzVWW91bLK52yBSGF89oiPgIIbDzp2o=;
	h=To:Subject:From:Date:From;
	b=uYZzCPPiSajdLytwyWsX3qZpNdHRIhuNjgsGDWbqRMmTe/JWheVaaK7+Wj5DU+y8W
	 gBl6QvC9rrfNMD1uREo10bB8zoPhlAT4PEGNAvspnRtsQY5w0144Bqy2aDaVttUzjj
	 odTIEyjpy0VmyacuVwL+i6+tBXMhqkJPj8dzJ4kuJvgWw4sgZRPDJvtneqSFtsTIUO
	 iAY0NKkZKfUNkxKl26WWUz87lvyo1ft+0OIfysVIb40fKjsC9Jy+0QeyuZNNkR8dRq
	 C7CmXMMr4EMLYfAy1DcIF8BoVO54C0Yeyikn6O6j7KeCF1hnwBZyEHQde5IS3W5pPo
	 etesNQz3VjaLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D80CDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234365370.12355.5355641403371116003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0024421fcb66dca19916fa5f3dcbcecb108fd1f129a874b1000f3b87d0a37648
Date: Wed, 24 Jun 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782343653
