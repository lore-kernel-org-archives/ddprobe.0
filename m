Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6705513C9A1
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719291203; cv=none; b=AEsXV8B2We2uH4l/x9qHlGHRfMAbKRCz8UHXZ4K2be0mtUzOEeAjX0h7Md99RK6u3d3LPcwpDCkoZm2Q3mnKvChkSu9nywBR+ZZfA72EKi0wpXxm0B3kw7x9d88SQ60zMWAtwSv+znCNxSkapY9XIfsrih+I3YxY3orlKKr1aSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719291203; c=relaxed/simple;
	bh=XLbmOVY7ileyiUnLIh9YB9LgoKKJY8O5dDkr8aTjz9M=;
	h=To:Subject:From:Message-Id:Date; b=lbTPO89s2UxdRqEg2hWUycbZWtdJQOg1Gq4EQnGRMQDHFtnOic+VYioHd5APPYqjKhIOjgT90wG+eHiAZ4o5Laz3q2CsIbd+2aGyFtbob3idO+HGtBW54rtXnhB2BF31ZV8u8JJbdp6s0iDe5fj2Bv6H6Q6623I8wkpzp5bKUeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PE3LtLTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PE3LtLTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73B6C32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719291202;
	bh=XLbmOVY7ileyiUnLIh9YB9LgoKKJY8O5dDkr8aTjz9M=;
	h=To:Subject:From:Date:From;
	b=PE3LtLThSbWj92PEanUMRaZb1xYQRsnSgd6ctOwYPuHxVKcy5/V7ARBTrKo2U9by7
	 /MkJ8g42gW0VQSGci6g4AncisYF9ewXXBldpleosGvE/aMAFdg7Y+8EuAsHB8sRjdM
	 rBtTe7j2rK/nRdWMFQ/HNQky9PegWIriZ/daBaisjolyVEhBo9RyxJhlsnu2T5ew80
	 4qBu4nbsAEcFcTZxgWhzD04HHp2kzDpU1Ihs0EpoBaymGnwW8fl/SIUu4BZGQ7vGrK
	 cvuxB/TstRdFQp187HZkYK9HLCD0CkODAMnFpG72Tjdi3hTZDPSbNTvYRPmwmo8RvW
	 YHG5h3YN+f8zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC99C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929120276.23945.10860835487425836153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6d0c7b6633a6b4e7fb45d18acef53c1a905df9b0a64346bf43d9db9f0393c9
Date: Tue, 25 Jun 2024 04:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719291202
