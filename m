Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D45BB66E
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747064994; cv=none; b=gzd21J4iWKw22o7hnHrMHHIOPOTfrpb7iCJeO00CtjvhYnwl49JWb1tWnqkPGiBq0sXmoSuMi5pz1Vc6/8/UFEuHoxWUi9SwfLAK2tcOytQ5bXDI/x4FcFeoLOm8YCL2LL3nfV9hrpRqiB799Aengx/Plxx442HyclDJL1GSba8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747064994; c=relaxed/simple;
	bh=R0TXiZCXlHO4Dx+aw53YyQ+KiuCc1Jw3djunGoVHdRs=;
	h=To:Subject:From:Message-Id:Date; b=FtFNQCZW+9J2aA3MQvITzo8n6Y5lZdpzWS2ChlBdEEXHd8mMWrBa4QCc69Vh67CXp3xlbMsKa9/wcFIUdOSlnqgGA2f4mdDjz2qxSRn7FGqVet+oLj2mnA6WMGeOuHUMzmiK3OKI7QqDeDpeH3DBD3vl9p88R3zpXbPFSu/Du0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hm2tWAOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hm2tWAOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747064993;
	bh=R0TXiZCXlHO4Dx+aw53YyQ+KiuCc1Jw3djunGoVHdRs=;
	h=To:Subject:From:Date:From;
	b=Hm2tWAOBaRJ+MqqApahJmSfuXQ6pmwswTuKLHi6vkuiJjOjKS+rWpX3y8zO3POo8D
	 SBSvO1BEG3AMq0ufcm8UIMscAzebdNa0n5Ilo7N6AEHBgkLijWSqUtfutVj/BfoL8d
	 8/HVgqb9RJ32fNKlJhBVd9qyjJchX4e38GvHLVdKEhNkRnCRamo9+3qw9pcHh/JS98
	 Uj7ED2Dm3T3gHvj7fjSzGy5bwyS0gXfXmGAQKPQveMIhRuQsGRfjUaHbpzRTopBFSD
	 jovQJBBNhPjAhXh/a37L6jr1S7ibDp9sXZlYDhXyPIRuLQ4oaABq90PnBUVNhs0imH
	 Vn51F5REdNWiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91063C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706499358.18732.11481042134221585343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc7386fbbbe3fcd3dce445b2ae69e8cca826e8a5c7295bbfcebabd246da6137
Date: Mon, 12 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747064993
