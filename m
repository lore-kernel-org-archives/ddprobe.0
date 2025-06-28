Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E88323BD13
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751110195; cv=none; b=T7j1pweI8RRLFHapjcmdK1JaUr0vbc1Z8ihxWIAY3vdjkxSdC+P+HzqYKTbndE1JeP6TDC2eCiICFKwxlh/Fq9AajU+aGAzVZ95Ht3oHzX1hMd5dcmFFjfzLJI5rBV85Ce2nX0A86BNWoiaGdgoG9wXXJA4jjQHGWgP17hJ+PP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751110195; c=relaxed/simple;
	bh=aCCcdjc4ZSJWKv1ov9aNwzY1qsYw30dRqHJ/TMpSyB0=;
	h=To:Subject:From:Message-Id:Date; b=aUkFtDekziI3JCup4MlROBqxTvjfrmEWXFSy/Ya9PvVZ4lq3G4Qedu4hDKb6IVxojTrbx718k7NMv2jcIKw8YbvbZJ1K4m/YeIDQ9WFIUGYi2LFmKrys4GnLza4s1FvFWmV025hEFoGwxd+GVzedugRCa13aS6kaiPMI1e6XoCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0cMP9TV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0cMP9TV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5005C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751110193;
	bh=aCCcdjc4ZSJWKv1ov9aNwzY1qsYw30dRqHJ/TMpSyB0=;
	h=To:Subject:From:Date:From;
	b=U0cMP9TVKsEqv2N4IpxFuoS2HbEzpW7a5f6Ls2a0D28SNhCGwLrd2HjSl8EpiQOGL
	 zwBDsYabiG9G6XRWg6IRlbPgpPe/xJwoLD/tU7aD5u6LQ/zkSNGpPHfUcYKlgjr8NU
	 9hLHiFb5ugyj09ITFL8nuKATi9XnkwCe9rWOzQJb+cUgxsVv5NYn55aHHOTryjsQhs
	 t+ESXqyskhOoGjAdakkL7Acre9PbD0RYrL/e1PpOTeM8gy5s+pSq9kXwJ+ItOYmetY
	 56y+SSxHvZzxPY4ymAdFJna8MrbN6PKFADIOzDlxNQc4QI4AcxQNm5Xd0DHDeRVGY/
	 hYAvpKPF+mqvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91991C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111019357.7575.4808620104686343389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3037e97b7eb5a10a90e07b3ffc938adaf8c37edf154e013667479ae7aa00d9a
Date: Sat, 28 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751110193
