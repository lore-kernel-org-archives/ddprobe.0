Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787537464
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716004943; cv=none; b=LTNKdSfcbHRRpHoRGVUukvSjFwGmBfvc/RSyBQAjAc3PHbA2+0WofoZIkUR+no7c7QYKK37IwFS9z4jl9N/eanZqHqn529eN8QtRZP1z5Ax1BvSXCSoIRhFznYwrRwFyW188ZBRw/k5qTri0uVAgZBdZvZaoa4WXi1h9Ld5l+QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716004943; c=relaxed/simple;
	bh=69OxSU/gA+XzJw8MghD1qBCdDim3mSw3/Mfa0MC0LoI=;
	h=To:Subject:From:Message-Id:Date; b=NT8NQkWBH9J+yeJT36LhLXFMS2wIKGDJeurJBL6OFs7Go5lzb2JCJ3k9bAbe3ycw3vua5oHfPGqYs4TU/fN8r8fbzZyMMW+0rMOt1pL33NLRvMtTJzxM8+7AGsTOs2aB0VxiEfCwQbH/mAcrJUL7gav8EpTlC5svHk+7D3XcXoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRJMX8CE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRJMX8CE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D55C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716004942;
	bh=69OxSU/gA+XzJw8MghD1qBCdDim3mSw3/Mfa0MC0LoI=;
	h=To:Subject:From:Date:From;
	b=gRJMX8CEGGFtmGdt7jqxcdi9Uz4dMJNgLsbMPGC9aWpZohqd2GrYyOH1glKP/twgt
	 lGjpd+7UkE5jUsqPcF/NQvVjL66SyOOc/bPQ17ctxiujQa6cNxfsN3CXmK239P8QQZ
	 WDNdhU+Ccyi1zpmh9tmPYFNZO106Lf2ZvS2Yqa1Y64fqSlPWEunXA1BHC4wpHkmYwj
	 09Xka6B13Hx7k8S/i46B7B0FQllzRXxksE7EI5ocJFjXEUrtTAwVTZduL0p42RVRaT
	 wpcRsILdVQmcYgw/5Lg+ppUF/avlTKCXs1HTreG54ceZrzvivqxN+FOsssWMUz8Gkz
	 4TzAbcmYV8/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98B5C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171600494277.8004.10692488791132302497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d645f3be454f24259297ee4ec284591684d0a6acbef7e8efa25b1186062ddcb9
Date: Sat, 18 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716004942
