Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC5D40D598
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782794314; cv=none; b=cl3krKAhGpvpBaIHNPkQ7QC0mOApyiKitUMaDDXHalAz75y25O729j6alHCtqlBhBNnn87LYgivBm//GF947kStJZmhy6TaMb8i3CO2wIDCpMbC96tHzam0NGiLFewreo+PbgiTcx9CYBVkxxFVRSf+dAyuVJmaPunTiApRvhqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782794314; c=relaxed/simple;
	bh=wD7yi9VFvPt6uaPJhPzMoWl2+pm5WvDysUpIZs5TB3A=;
	h=To:Subject:From:Message-Id:Date; b=CIzs4rLs3CZpRPi88YE+pRwdsCHVWhdjkyfL9gMNXiTv8NJgI2a6QL8JQcqYIEgzaKDB0mu4yRbb3d6twtcrlcKeRRUVc2aKrCfMcQL0trZw1GtXrpr1+glKGgyRNc72fxnZlDWrBQIsnx75e9ENFPNWytImg71I2i4M5Fw7COI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSc/U6dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSc/U6dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C61C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782794313;
	bh=wD7yi9VFvPt6uaPJhPzMoWl2+pm5WvDysUpIZs5TB3A=;
	h=To:Subject:From:Date:From;
	b=mSc/U6dp2td8sxKIe8JCbXzcjh1VsystPThuOWMU6J/6DtDI5eN3X5FJh2gdKo9cZ
	 64mTXpqGifd901W2NsgjDJgZnEXS5/Rac6eWadp1g6hPCHARu8g6Du9z3e3eSdkORA
	 1uIV1abZczOtbyelI5z+3RZqpsS4zJSJHRWY9Np6k7YfvoJBZb/7PzK2FdHD/AixBh
	 cx+mOvNi+iO4Ig10WXU/gY6p6lvb0po/F/4RJXckRAry8eDnYCvvWdznSEMfUlYuuM
	 gN8kozFI+cNs7Rtaa369NzzWMIEwZeFHun7jm4g47G38Y9B1XHI5CrntMEgRmJ3A0F
	 TRT+rzEemgaPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A3EC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279431368.8742.10917066778376258846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed405fb9faca88859dfdff8285cb531adf0e4a3a4e4bd8a7f0c35308e8eb7ff
Date: Tue, 30 Jun 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782794313
