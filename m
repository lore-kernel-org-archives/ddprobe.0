Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2846A33FE30
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768047234; cv=none; b=PZx1cGuLq3a3CdgtFVofvJvAsFASL0xs5Yzz6Gp2s6EFu1e1HPkj/WGdn6uGp6B5hzSPolBzj4PV+3jPuJ0h6Lv1pKHfiC3mhz57Uam7negRjBaLXziX2WfSePHETCWRk+K3lVhOy3GzRN/8lg1xJuvLy6X8EqdZzCaoZzpjHQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768047234; c=relaxed/simple;
	bh=sUv9jyPZadK63R8YmRwhrVvDbH55ApR/613qo6XAGnM=;
	h=To:Subject:From:Message-Id:Date; b=c/oBvsEY0b0ekhZraE6iAirjiQiCmzSf3rlte70AGfJAx/itjdVeMPpq0wQ6P2qTjM5cZ29r/z/1PCUjZylG+9DosopKzRvRVQAmjHcJTj+C48Y4rER34vinnmInOoFJvEFbMOkxM85CF3yLFmEOVw9Qx1wbOLuGaOuvdote648=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvxdUxAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvxdUxAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E91C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768047233;
	bh=sUv9jyPZadK63R8YmRwhrVvDbH55ApR/613qo6XAGnM=;
	h=To:Subject:From:Date:From;
	b=MvxdUxAxx5YVXR+6T2cAXJllFYonJiP0D2v0PcFxy/8NZrYqFd0tMRDxRGzbJ6Ub0
	 4dIiL2DqMlSOisoL0x2Hwq3mUHXm4TTj/pGCW5PGd7456ge2MdG+ZXvEB5Yjz6+oJH
	 tftnNdPvvoBrghwGeDeIODAJrYah2lc98clbthd74GH1R1cLLAYHwXpmgqzPN2GOOU
	 ho46p+O7xXavzgqQPlF/PqfmZ3g2b1cCselQmFguTVW6EYrHiXhjuq1G2PBcg3kgWb
	 EROufmdrbrvTR9Sqgxg8EopiNm1p7n+7OElt4+cJQiR5wD20+dCe7Wtqb858TLEVmM
	 6riLxcKROveYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95531D277D9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804723358.5873.18243800736743662837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bc9b32cf8e637fc8eee3b41973e5083e19c5015b1243bbc2e9e1f2a993fbfa
Date: Sat, 10 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768047233
