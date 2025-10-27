Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ADB296BC5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761542994; cv=none; b=W+ei5SJf3ssTjvM/M1Qti+PUGhD7AYOOfgOy560LhLYB8RG26MdPMwLsVrq56uOvesspj5jlg8Vh9nsQC7sA+Zpfv7oZzb0GagXnHhkf1obra47BwdoPCm7IcOjpmL4lZr+zu9FFboyC9/tAmcx1kC39gwN6b+gWULeC2rYC2/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761542994; c=relaxed/simple;
	bh=2QhlPiMNekwDePmCay9cQS4WRvHBZTvJN0BHMpr4mj0=;
	h=To:Subject:From:Message-Id:Date; b=TIupLRF1V3dekD6j2pJE8j7gxQCO1D0ohHE2+4i5JIuIx5qSVs3TwdWnFHSDDRRwi7twvSDIkc8BRBp0j/e+RFNTjFSfMtnQW/2VjYcaePwZaAhyAxijZpr5BhFeAMxgY2r9gsNz5v2FpQg49CNlUXj/YGa083fUXbHbXI54vhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJX1Hlsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJX1Hlsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE46DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761542993;
	bh=2QhlPiMNekwDePmCay9cQS4WRvHBZTvJN0BHMpr4mj0=;
	h=To:Subject:From:Date:From;
	b=lJX1Hlsa06+AwQFjYNLHBbSu8REuzo/iugtlA/wVq3INr/V2Z2fNqxGpRIMy4hUff
	 Yz8BP3WQFZNn6ampHUGkH5U1Prh2Kzg9N6Fl1BWA2xJQBzrurGuj4g8lbBgTJmIzdC
	 gv1C3OO68ydmAusfB0kXyt5pD9xSS3U4rhQ2Af/2LvLn+eUGRy4XvERTufwbkjJ8j7
	 QrXV5iZEVfXMfaGO94bgCVDKVP2WjMfGpuqsx31uPZcv9uxHoeCNy5HO4hnWVVkFa7
	 ay5Dot8Bn/5lDpUy7KDO7tjH3pfXMbbbh7o0X4ukEUr3muXNk5u+iNt+8bUK38eutD
	 JLUc0yQ8yeYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D34CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154299359.28213.1770506330688986114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b253e8b9919a12ab9af68de865f82807ec4c2164d8cb94cd7c9acf9e00577fb
Date: Mon, 27 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761542993
