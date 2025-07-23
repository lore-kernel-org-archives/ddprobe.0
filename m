Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2C7944F
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753229394; cv=none; b=gIiLXiccbBC3CrRO8uyMPMUvY6nMBZisIJ6nTwZ5XoVALr+QHWDLEgXuRDPC/sM0Le/sOzGGMqbs6oaIKfLgzUc3ShGZkCNrr0wqK8ilqsxGxFUW76vD27qViUT8c00CoFDAu4wBbH3zQGjkeBrggQajIzORWFYsQj+XyxnwpkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753229394; c=relaxed/simple;
	bh=3eCVidS3hCtbxFNXwTvGUvlkIwst3/h23NKy7TWAwoA=;
	h=To:Subject:From:Message-Id:Date; b=o8pOxKkW2AvlBNZD4Eol18V79D+UHRdFysV2zLXKE9MjyyOJMe/8MK41QsCl6S5V3357NEuuUKlGsJEAQooXbdFPraayjBDBjOId11o+GhfYXo0xOZrjdqmaSV8Rsq9BEZSGS9F/rfpRHWv9HyCT5ATeoiaAlWpjwHXY7stFX2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDwNxVKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDwNxVKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A076EC4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753229393;
	bh=3eCVidS3hCtbxFNXwTvGUvlkIwst3/h23NKy7TWAwoA=;
	h=To:Subject:From:Date:From;
	b=uDwNxVKKo9LSy6byH9pHsHuSI+3h41WdDsNQCCvEs75nVBVVdzCHnESUvBpehRTXI
	 qJn3EbLDBw6hpQYzEPjWFtlKBogW/MYrsx1UGc2sj9tS8acZch2lo4xHGx1f24pvqy
	 +TyGLl0iQIdOlL0Rco64mU5/5bBm52W4TR7EGq9UBXz311+wLe3HDY85y/VtwGb1Li
	 AcGdCaIXMZ+kCTMHtGY/B+i/r9Tvd9pM72U1pwiI84NVwMJl1LUXOrQt3CMDFEXXMm
	 uLfm8EVzmu/g5YWz2+QL8LTpLZe+nY9n76R8FjlDTThAz6PStjUSVG25MTuenhY8z4
	 sjF6Cna6wLpyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C4C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322939357.22601.12153523070665042526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04e94b751df41242b83f15a7e06daeadd38d4eb04290949a91080b613ab46fc
Date: Wed, 23 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753229393
