Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8110131BB7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711565297; cv=none; b=mUBb9PWEEQErx592qEu3mH36UJMmvHGn65s9g8/xRqxFYAmjTm7eNZ9FYvqdwSOPruKBrnan3AQHQ0/6jmSMnEM2BklxQgDGsbyHkNd30BUbgjE3MImFNKCvJojrUnC+U/P18Wf+z77iRirIwNsG/uZL0bv1YrqhEHxc0AaUF9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711565297; c=relaxed/simple;
	bh=TN3kvqioXyhia6RrxlIZrjzIQ0iqHThL811Kfs1wvuI=;
	h=To:Subject:From:Message-Id:Date; b=dKHz18J4b7mjs4BYIuBPDlAaWGziuZvw/AMGHVCtIauEYShqaezyyATJD2T9MoBgc3x/pl1OPn63cqXg12PEXTjXOAfrEvIFdiCLnmvHF9VD8af/wCbgGY/hxF0D3Z3dGJS3MkNRqcLXVTKj7H6g7ak+zvScLPlCSvuU1Hx+WVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhJJ38nM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhJJ38nM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87915C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711565296;
	bh=TN3kvqioXyhia6RrxlIZrjzIQ0iqHThL811Kfs1wvuI=;
	h=To:Subject:From:Date:From;
	b=GhJJ38nMesN7AGsoO8xkwrWKAs9QZMgjx5EDFuzGYuv/wfrwxmJ+5Ag6tKf1bBvnv
	 Toa94taj+gCv8rhOwb1Ukneetdmxrywz2VUBkaO3FSZIjlq8RDyA9QUca4wb2XtxCs
	 YEfPNa4RAE2Zrwhs/zF/sfwu8OPsvMw4jgtJmfWb7+6s4iU7oVw8uUlUrGK9jmdNrQ
	 xDRcN99n+g1YneprY1M3bMm7YaVI4XPnseCxm/h3cTlLB/QsuBhIYR1FBNqqbkY3BY
	 bRbtABJloIhQEirCrx2MGJXo0GSfbRyhJtdU9z1h+/TTzAGo8I64Qp2qziIVEccnQ+
	 HqtocHNwREIrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68971C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171156529642.29985.10362673231279830067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6661ac67a9c660f41f4068094cadf0e84b0da1d8367f3dec8e8ed7168623ce
Date: Wed, 27 Mar 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711565296
