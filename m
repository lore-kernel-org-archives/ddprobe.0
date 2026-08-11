Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4700B3502A8
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786489834; cv=none; b=ZpPdCuUS9jmzpSinJMZ+jRsSx9dPTte0sqFH3+8XePdnfNr81OyHQnh35Rbuv5ikZoM30WmS8q1r4STyu6FPAY5/fRSxbcDVdp/5wk/zwdqhBKepBaQ+bIq8BIEgnJHYPa0zOFRT2nH9l4xdshAhKiOrij/jlyYkWxkXGWzUtTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786489834; c=relaxed/simple;
	bh=dy2ttE414YdjXwiGR8I9wogHImbOY7MZrGz0W+f3vSo=;
	h=To:Subject:From:Message-Id:Date; b=fFjHNa2nDspqX9i+rygNQnLchzS69eIIS2Hpe5FsEBXkkF2jFYDKCMDttvDcwufUiqIzLI9ivniQy4nNWnt7qH4IJ/S3t/V8pc8LcLLwFqQ0pD9Xi2oSQTLfpESaC2jaaqLStjJq211opmnl0C22fvZvS/NiA3/bLHZLmq7bLVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qi5+3NJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qi5+3NJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCD8C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786489833;
	bh=dy2ttE414YdjXwiGR8I9wogHImbOY7MZrGz0W+f3vSo=;
	h=To:Subject:From:Date:From;
	b=qi5+3NJo8WI97T2HQXsqhAtWj1QnfuC5BdoRbZA9GboCpHseKFCvGAf9SM3WA1a65
	 iEH5a5WHOT6q6fOVcGhRoXkToc2xcNjaXk7VH7ZPxG3/3A7zG6Y1tCVSgWmfD2QPV2
	 0r44DF1lceaAnKvBMThqZ6/Khhmlr96IzJGlw9jQAswhPWihr/2WVn7jw8WiUfBR1E
	 9wYGikz/3Sj8w2WvM6IlN7Ph3nhk2PG9XrJ5++QxiRTMG4iLp47DdbxF6nI/olIKzG
	 o3u+uHaDBq1WFT9/nmRKD1j2eqTnAmROB6HU7opvs8vWGRNs2dipcSjWzUvQF9n7IT
	 QL9W+7mQFsRBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE90AC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648983368.8464.17980045612570013036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a7a10fb7491e2cc87860f99da238f8dd41c700c3ce2a79966ff3025532b0d6
Date: Tue, 11 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786489833
