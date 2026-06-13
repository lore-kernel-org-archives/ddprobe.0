Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B16214AD20
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781321194; cv=none; b=i2Z+c+O00HkdFMZVm7hZ6UQNi03e6g1TnQzGFiGnwa3k4AdklkZxeOVX0Kk1zG4/IjGwyslLXv2Qu6A5xhk3omzGiZqAt47lhozMX5zUuYjemHdCe42Lu+7QbKM/RYZ0C+wyysGyBJXXSEak/WGSt3wY31OhmYJdAYbn1HP0C00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781321194; c=relaxed/simple;
	bh=+pcdsExRtK3mzaU2bmd80r0+JXmfQ1D4PWxH1lrJjAU=;
	h=To:Subject:From:Message-Id:Date; b=KHxQdO1OFeZCbeytxT1yjli1N8THYNYA0QBaD6hmkTGFKPmOTodpqEBJdURruiA2PG7gDcW6lBgIc2gIPDtoJN7jD3YwSzm+z+PlYziqrPyKiQ7Tl/06swZVFWwYcnUYqVYwGzs/E6P1X7qdaLWNYSxLZlsIhC94FnZcfoKlkRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+MKC9Rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+MKC9Rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EBFC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781321193;
	bh=+pcdsExRtK3mzaU2bmd80r0+JXmfQ1D4PWxH1lrJjAU=;
	h=To:Subject:From:Date:From;
	b=q+MKC9RckuAg4nVymoSuZxNEUHPWDT0MMfyru2RYuFLn19dqDcS8Wp4VUSK/DhUHP
	 DfuDIbJTPWBAIA3n2maQQzuZ9M/v00YcYK1kI/fstzEhSfGS3Vtn0g2kx2zDZ/tHVP
	 rRO+a9QO69wQ1n+BV2JaI8Ypq3UFqEA2bIt23/hgoATCytnm/YzsaAt6AoKYPecpve
	 47XLUX1HRZ27y/2ebLFt3A3h+n0ok82vdGFUXqgDSv9gflxuMufu38h7xqHGj8SwCz
	 XEavDLzxxM84pCNAnwv1xyt6IxKVnRwSmu8vfTVEEIEfbW3TcHzv7tvcSr7PlpiL3f
	 Xo8HeQXyVUCog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCECCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132119368.20993.684546732997147173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e770f55fa0d0d1da88e77af7ad4e8763f8c7e7e0c8312308ad4530d6cebcb815
Date: Sat, 13 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781321193
