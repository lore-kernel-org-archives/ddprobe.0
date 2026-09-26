Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5374E14F70
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790463634; cv=none; b=KE/cVGzRpO4uC2ywS7nD3j6/s3/jOmpaILSn6MWHh3nyujVjel0eJyNCJLvZf5p0WfgzlkoW3JCYvHlaXx1HeVHPbE6pUTTxNSmblHIY3/eX5zkIuj2HE/+OGaluadPw+863z+ikaT4+ZYVqQp8Kymk4jW4mh3dPdF6NUB4yRAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790463634; c=relaxed/simple;
	bh=f30514o0IWCmtdHhtdugN56T94s5PnEET63tJkH89Ko=;
	h=To:Subject:From:Message-Id:Date; b=XUke2Kfsw7z4H5zUUMy01SBt/ZsdyWtFM+A3hCoQ2nb63lOl4AEpdsw1suI6SEYR7q22mxlcq4DDk9UgGSHURQJY1PKqq+vh7Y7bnlwd6X9+Vgc4Vi/LALEUckkFtAG9Tsm7GIQ+zd2oB6xNDWH58tfj88OYvUV7vrUBhqHPM7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLzkpzCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLzkpzCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8869C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790463633;
	bh=f30514o0IWCmtdHhtdugN56T94s5PnEET63tJkH89Ko=;
	h=To:Subject:From:Date:From;
	b=JLzkpzCPVptrBwLxtS15d9kDp9k8ni9deRxHwsipmy2D/B7zp/Tuv1jvcs2xqTzdh
	 JnNHtML6Bdl6i59Pe91JfzLz3n5Hf7vydeLsxCkW1aZDb/hJFhaGazOiDgQX32NF/r
	 kWu949e49LHfJ/+Tv78HBxaNX9opRRrJkxMShpZcuh7g271QqM6nADEeGbUy8QSGFH
	 2kHxQuQxU4fCbtv23gZFWNpXlstHDkStS8k6hf12ikxvh4mTSo2ktDngxzLN2Mis+i
	 mUu6Vn0UUgl9buSih82KceKvjRGfu+440ISsTxp05hbJa2Pi25JRQzPC2pUDMYl7uj
	 OOaGTmrhDmSEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EF4C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046363369.31586.12012082903902600766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5167d2cb7d81ad8bd0cb3c32104581c3acebc6a9a640ceafe6b32c1021537615
Date: Sat, 26 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790463633
