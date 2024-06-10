Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D2A47A58
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718010443; cv=none; b=eXXq8Nrtpxmc47EWdptjMDjpDPxtKVWHq8GEOaK1z0GviqFWonEy5IJR8dSqach5ACBocJBYHGQ+hTSTCRqenwUGBd8E11HxcDp7z0vJPxrzUGIbaPntmtD7uYN/qTysK8MfMzLlAffg8aP0cCmEl6y6qbATiNpb1vGdcnwQLqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718010443; c=relaxed/simple;
	bh=xx4WrDWkAH9UZC1vpPqkvS+ZcRK66ZkVbnnflN5T3DY=;
	h=To:Subject:From:Message-Id:Date; b=Mh/ZycDov7uKPbGxcU5AE4+6KZrrhhmVchm2FIkcqdrpRacO3x0B+xczOlwWwhuUWvT+DzGHQUSI4oDAEc723obGjUEO16JTG+pvszQojuoMa0adcsym7nC8kvyPfh7A/jO4pYFbkweLKh38sBeER63zko04y1y/LuMhVuECcEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0MvRWTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0MvRWTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E63C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718010442;
	bh=xx4WrDWkAH9UZC1vpPqkvS+ZcRK66ZkVbnnflN5T3DY=;
	h=To:Subject:From:Date:From;
	b=k0MvRWTVDFCR0Fulq70wPerq4S+pCDJaJpAe4V17JhimRYC3lHAT3bol087Mjll4+
	 AH403cA09nbI4Yhc/ZlQy4xfWCLx4ezcGeQW914Yt/a00WdRHfCTx6NN9/P/F4a5cb
	 UeZfj4TmFv/Pwv5l6gAkh4cDRMvJ12STAqPc0zHNjhNFg0fuI6uPq8+z1KPtLBTDVu
	 BoKG8IhjLvHrfviF244ijUT8/tUggFfdvhxffgalwwfL8RyuXx5S05fmPsFru8VRkA
	 7gYHj/AXHDUb0ecipZCm4nn87PqQVrBsHUJfCtN7O3ossfdrv1n6faRZHJF7jkrvX6
	 LB/iNKzAmzEeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE070C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 09:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801044276.7841.13730074559738479501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452659e8f4435fafb55347be5e889f496a385ce2866c46742d229386fab53abc
Date: Mon, 10 Jun 2024 09:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718010442
