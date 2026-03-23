Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027043446CA
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774249494; cv=none; b=OLbsaj8CVOguMdoCfVMnhkX4vtZe/6m02dPlS+2GQ7oEXx45EtdCoc/fAJ+8sLgT5AvDeRF+O0MN7zivuG5t1JWCK2B1ObNnSXnZ5LHblp6v0/klAVFRPbrcbPVpaJjEMLW34+kFAJxrWApioMIsXR59VKYWn5Iy2xrA4mCjQxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774249494; c=relaxed/simple;
	bh=a/KvyRx2EicfvJeSOp+/tQzGhVykc0SbfMUgvRfy/y4=;
	h=To:Subject:From:Message-Id:Date; b=U1VNs9AsHnRrQsenMg+Otpry3kIkkqq/g8N0vFuMAfO3nAi0KSErSGWr0kXE5xddxfaLa1mTV/05B4fxrv1ZLVgCbv2TL7ip/GphmYHo15qCK+4uQo4ELFxsJiwtPkgXyFI/zx/uA4L+R8Dq/HW3JZhEL5HgIP3GsQdXE2X1Zk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcXLEyAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcXLEyAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BF2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774249493;
	bh=a/KvyRx2EicfvJeSOp+/tQzGhVykc0SbfMUgvRfy/y4=;
	h=To:Subject:From:Date:From;
	b=dcXLEyAThOgPBi+y2XVfCueXf7Wns0U1FBOKD59QYaOYiDT37OrdBTURRHCHm/Xnu
	 Rbk60L0KEUBLa+Xlgtiw/iB9B3lx4upt/qzAkMnaZr6c54XIsjjWheqigoe597tg5+
	 wzPgEH+tWzeegn0c9i8Yazf7iOmqJucHi1r20En5wjduWSK6yE8kEaF7r0mieWRHPh
	 iXG2ATxuv111UzbQriIFSve1OFviN4dJIT0z+YMIJlBKL1FJ997PtBOFQi/z0uMYKi
	 EjjO8YxcsR2cZE5B1Q/oL4bAIc+EWBMVFaq18pGy0halY0ZPURjlJZ69WZ3HjDsaHw
	 24yHSQqo0RKBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91687D58CDC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424949358.21124.7659162312309451213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9459052de7207a88283b549a11a58f1780a3ccd01fc8d31536d8ad8bd2b5d12
Date: Mon, 23 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774249493
