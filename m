Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601251DD0D5
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742341796; cv=none; b=W361FGo/PweXXNwAG6qJegdwnmNmPWUxv4HcBvjtatuEYADMsq8iaTzFHp4PHJhRvwp9kTCEzN/h+XI7OP6WM960e7uB+GaxUZ46csnKwlYNswhsAm05XXqtVwArpOWUlgjoHDHozLi7xAm1k7NAI9Bi4/iEBW6rO2cehlPUR+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742341796; c=relaxed/simple;
	bh=q2v1vHac2gID+Kms8Z/tXVFOOpeXt3gWOTyHvGr2XHw=;
	h=To:Subject:From:Message-Id:Date; b=RWd+MOO8uPJt45PWJs50kFh4ND8HSgj3oayNfA7o9OKPUkkIB9zaWTIEVNinXOyficN+wvkK2DjklWSU4wd83iDQBr6ErCtednJSGR837X6bNk6a6Pvl0AqLb25PQrLDqWqcHVDYXVCIcf/dddgFBZuqPeVM75/xGIsoK4w+Oo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ro675ghs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ro675ghs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC567C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742341793;
	bh=q2v1vHac2gID+Kms8Z/tXVFOOpeXt3gWOTyHvGr2XHw=;
	h=To:Subject:From:Date:From;
	b=Ro675ghs7Prukm6tKpT0kTmXvIiFMnpA21SXfmiRDRWRuCF0swuCDniyRr+FMAwEb
	 fQAa2CG/CmFnQk7ke+r92PkTltwKSSSi3VZjcwPuQg/GsBKAU7efegsLvnSO7sZoqm
	 r2bolroKjbWI9he7tE8yhEFy61OGvDIhpzXe/7c6oa2dUwjC+s0uZyXSoVfQeZNB/7
	 sErrcx8HLgeEYX7+oBlrRDWV6ElFwO1yfypHSbLXzce17mtPYQThivkKpkPQVGCUTu
	 fYMJBw/UFHEEOL4LBUH7lapnAAmVCWcBvafv/ERiWpqLTm6B7yw1qAzpHx1v9AoOCU
	 bBE76mFAN5BZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3509C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234179365.19657.2438654098261576044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8241dad708885c72d0eedc841c165d5e550b082916f2a14244ce9a8be5e9aa
Date: Tue, 18 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742341793
