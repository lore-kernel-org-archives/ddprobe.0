Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084932690F9
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777741054; cv=none; b=OZADQLfNMV5bViUOPfgcPWRMH6BspX48drZZ7NvzSB1QAySlFN/EhPShoEKgWaAZXNSw/iFP2ZH/oFYBl+3h67BDNMfpQ1kZnb1Lvib0Pe3GoVSDSjfPvOPwudBJ8/snfwbPcu+0d+/MiZQSfFzvpKRxgx+Bm23qlv6I23JvEfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777741054; c=relaxed/simple;
	bh=nvRlZP7EXY30jpKX1bWRc+E6RQwJfoyds/8FkKG2Ixc=;
	h=To:Subject:From:Message-Id:Date; b=eGmrhNTG1tzr5tz1GDKoeraQ6nzgIQb377bh1pwaN4EKO5QOLLVXXm49EA08xUaMrwqh3jpTSyTuFi5cdK1D4eSr8Zs36UcCCZQ8Fg6smJZNd/qtzzyp2dZ+hrjNQJPUUNoD66L3Ywcodh3Zdrf16S17MQPZryBhWC+rP5Hr6Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmdjTTP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmdjTTP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8073C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777741053;
	bh=nvRlZP7EXY30jpKX1bWRc+E6RQwJfoyds/8FkKG2Ixc=;
	h=To:Subject:From:Date:From;
	b=MmdjTTP5CB8KJhIcPogXnRzqN2SPGELUobUsRHpTM0jiiZkfcts9XzWtW7HdZwt8w
	 dfMBhI5HlAkLprquCpzWOVv+G+AN0WMxRVL3ZyQEYd/ikIoPJC3vA2/zGeGw2NDO2G
	 g2EKJq3WhP3wnOyObzEqaYUs9Lmkcp2hwyAFNsHwM5pvXd7NfOOZmIVZJnmb5706jt
	 lCkKvLWz0q12hOCTy3B5cRzp9Z61Jg5bU6jBbHa/+39++csUCyF5lio/txpWCz3HGl
	 MjvkXFZq2lT+u+j3KuP4actmaZ5eaBTilKh0/psfKBz2WUCgT2gTgGVl0o6EWYKavO
	 ltY0EmudnRRzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A952ECD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774105368.18851.9859204440402170419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecb814ccd7e8f40b4bf2ca854085e7f7ea7eb2339715284d509e735dcaa7ad3
Date: Sat, 02 May 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777741053
