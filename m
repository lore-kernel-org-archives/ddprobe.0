Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1171C2848AF
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756778395; cv=none; b=JQF4AB2k7JkJbRonln2cggCOygOBd+wVFFsrBJPNdNkbv6Dde+DnKt/+gIOkCisqcz368OYTK0INT/Q86K1p/D9xLEKxQmsgMshPXFXs8zxdIB+inzLUHGOepvAXTFI+gu4UJXB4EfwpX+oJA0lAA2jD8QugDXU8kena3oYDXH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756778395; c=relaxed/simple;
	bh=Hp32DtcsiidDkEBBqDVQJkGunaI0eAQDAult+ITz2mI=;
	h=To:Subject:From:Message-Id:Date; b=X4X68q1RFmK6hJjTzCOqL35E2ucWGIWHaS8EkVhb1kEBnFbtZ5yQ9ungjuTwF21CdNNQVo/iFebgOdZE9uT+IbfDiKb5lD/p/PCPTW34qpiY2tUFTteulrDlUOu+5J5sAkMoX8YTLyOZPtVrJTsofsVXAob8ah7v6HhGvRlKw38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRFF7DT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRFF7DT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A385EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756778393;
	bh=Hp32DtcsiidDkEBBqDVQJkGunaI0eAQDAult+ITz2mI=;
	h=To:Subject:From:Date:From;
	b=JRFF7DT+ZewWFtD+QQ+kQtT+ESsi6LkkArpKF7LcBEHv9OZl3729AmEEbiFGxMV1O
	 JpB+T+2KFqdf1TOkNBkHpFia5Dy+Ly4BSZpujMtFPXU3XMhWJ0tIlkewJKyIONFYDs
	 emzBfSc+sf97cV6vCGFgyh7zX+m6M5Bh7YTJKwX/5+3vjgN1U83S2FA+UyM+wJZPpO
	 5UZO+hb+Uz+b0oHjppku5KDMgjLMOaBgBc20ZJ1UjQHdLVyz98VC+BPouGKBdooBBH
	 dBSDFKBGt9uDkyHNfmDPj7vlz0l48PscrFf3S+1j+c9nitqXmxTf+QZVDIIm2n9NwI
	 W/RTzjS45cokA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E673CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677839357.10456.14069738344179013795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2ced25361f30238916004cb1047016f84a9bb21a6df27ca3ad63f6943f52ae
Date: Tue, 02 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756778393
