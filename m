Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD4BB672
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747039193; cv=none; b=Xm2iIUsk/Du7ujuTOthj8GwMcLRZi45t7cta07qKr0IvsWBw4YWj/Gd5/71i6J8trZxe7/gj+WU5mGDw2ZCn2p9KxO/5rXlGupOH8+74L7kFmFq3j33ysYum+6lzrAlSOBtds3qMf1ZqcJ3otemiMOmtgWk1DewvCZtuherPtQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747039193; c=relaxed/simple;
	bh=a9/fD5ulOwdIYnY+bgbPZkTLxrFx5Z9MYdzMCQHvsNc=;
	h=To:Subject:From:Message-Id:Date; b=cExP67H85OrziAAMzdfNH8idPETqrQH/+VH7wQge4eNzyVMEKZ2hurAGUD1l8WVp4HY9BK0CL4sj1nYVmqcsmqAM7utjtNaDliqTvEmua22bJeq0KXxq59T3HK7+DX7WK9ngbwu+jDPbsT6kQ9ReZzDx4vnlBm5Aai0FaqMTWY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpJqDDTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpJqDDTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A303BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747039193;
	bh=a9/fD5ulOwdIYnY+bgbPZkTLxrFx5Z9MYdzMCQHvsNc=;
	h=To:Subject:From:Date:From;
	b=FpJqDDTCfTY2V5H2lKgZ56sJoPBzDnW52KP+FABHJ1zykKkpA1ysTQlFXLe0BP2Wr
	 Ln2Z7PJdoYx3ug5l0m9bv+PxXNDrt3zND6ztxbzx3TAu15NLGRStq+7GUqBQTB+EE3
	 kzCDI23PpDMJjvVVHHYlZax3krh739ELd8OGFp8lObAImvqw2Qk7zmG1Ch+hhTSUmr
	 AGNSiMfj+UrT0jrXz8waGsewHOlQpJZOgBoVPJp/SfobOPF5iNTXJc2mkjHodk7O4E
	 4sTRkifF2onFbDjfxHvPu6r8/hpj5oZxNjedUgJ46V1nP56pbEup+JGUZH9bUdhZOT
	 dCt7ZlXmlAtlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D7C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703919357.16397.3036302186461884822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27b9e90756ceb57c104be3b3ace0d1d11b3ef826b6e37ac640070032b393a46
Date: Mon, 12 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747039193
