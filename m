Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D1D3081CA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761609593; cv=none; b=ERD+Cq+j/lluHCV3Dud1IqrVhxDZm9Znls2FSm1J0eVwFVT30COq9uKHHSgNEPh1zVy+CUUmD5lbgS+wAYLObyJ5f+w5AMe4EUpW/5+/MOLKOYHTQA3o539sIRl8SKqkn3C/EHPYQ2dokUzrPEODyjiNnyeZY1XyfJ8Sp1kA+4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761609593; c=relaxed/simple;
	bh=Rt5LLBPS0+IxaKD5m9/jjrkaF/y3/+DaWLW30kwIi1o=;
	h=To:Subject:From:Message-Id:Date; b=DMy2qWRmlSjOFE9R4Qnl8+xKMxycQSDtD6H2nl+dJbnZHHBfdVugBF+GfBR73AYNtzQT4rxhleCo0YTXawXRVyT7nCenn255AO+TrEGoKKOfmGHkUm87aMHQcdWSWN6zQhEluMxSkoTsZAKvA8CL81HcD4nPxotHii0Aqw4vQPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYghEIXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYghEIXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC26C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761609593;
	bh=Rt5LLBPS0+IxaKD5m9/jjrkaF/y3/+DaWLW30kwIi1o=;
	h=To:Subject:From:Date:From;
	b=sYghEIXVj+LCedf7xJRg/0QYnUu3SQD4CFf6f3O+Nxt8csU+sIBVdk5jhsXppGJXF
	 uvCqYawtDFSW7PQoJ4cckII6H6VP0uV37kwaLTRp6fzmRKPzM67fmeAMpnEfs0swE5
	 Fyvjo5rFMIW2QKVutWHj7wCkNJyXwn/FdnuN2r7l8x3rfFaqVtIHT06hRorMsykfzc
	 cW1W+d3wl3K4s4s2tz/eomLbXG4ER3pjpcy4IIAWFUP81cGMVqbe2rA37yhEgK9GSY
	 5GNpZZHKxeCcC1mSI1jkDUj1YbHbukiN1GZt9P7E1vt/7ePV5DFBiCHI4Z66KQpEDF
	 UHSHyluCg2NQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E8CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160959357.29562.17335132993113889861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527beaecb9d7543474cac66e196b8fc03b2433c51f76204a7e6c800dbf57c194
Date: Mon, 27 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761609593
