Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2361D2989A2
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760054394; cv=none; b=E4Y2GizrKoIi9lNRa7ENXWGXcuCtaJ+dV0jMb+D7kWV1vmra3iZFq8tKWUhRn3EVtAbWLKAYVFc8Y0mLuzItTlnzXZN8h49Hh4sqbieUuSovwGFnzi32B0WY9nEFSnnYLRFhXM9BGlVHcdUlhU5Z23IOPEKkYUsh/kReHBY0opA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760054394; c=relaxed/simple;
	bh=VEh//kVS1tzRUBCBWNbFXxeHl/MKuWRui31kZ+ePBdk=;
	h=To:Subject:From:Message-Id:Date; b=t3J8SRoKoPwQhsyTx6VGcHVy6TVLjn8XHDUyot2uql87U8oTIVgdfEVDb1UZkhF6yjhzJEElT5CKS0uNVbcuSTZ21tKIjJKMcyb9FL/FdB2yzqTkmoOAhPTiYs20ZBMchme9cJ0jdFat2q+P+4+8qnpEXyRrizKCYerd7LGwrm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5QNuc8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5QNuc8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FAFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760054393;
	bh=VEh//kVS1tzRUBCBWNbFXxeHl/MKuWRui31kZ+ePBdk=;
	h=To:Subject:From:Date:From;
	b=l5QNuc8CP0ImXMd9XwLO8QnJvslbLvjgbJDBPhZayKCPpmv7inPb/KzyCibdCzyy6
	 M83K62Ln+BzECk/ZPLRt1KFmrOiJVqHJFaSTmQlyJey8b9aA4vxkmzh1m1ugcjxUWu
	 pNm88vbHAhcqPOUDDCSmrI0SxCkHmJwFML2hpNgvTNNzKTiZeu/s4oxu47SFA9D/du
	 nKcpjksKpcpJraOraAb5PFCncSP6u0qHI1DvPG4CdMCyz3G83Cssvwuvr9/iJPhR80
	 a+wpdwWYinw95Kfe8hnr49JQyGWxyoIEpLWBhcPLkRHvJ4Ob0qY0lEeiyh7Keq/r2w
	 OAfc9i4LLGPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94771CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005439357.21305.10541185723354039332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04356db61c049825013c26581d34db55ba312a033807b1202a4fe22f62d6e30c
Date: Thu, 09 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760054393
