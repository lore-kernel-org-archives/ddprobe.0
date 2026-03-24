Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FE2359A66
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774349694; cv=none; b=CTqt3GO9PMqocKH94KSZsNBJKos2YRU2C1zS3Fd5GUrVQBNrq1YoiwK3WUoyzrpG2R+eDX428CCXCmtjcnWkcW6V9PGVR3VGnBcDpbrTItaxvdbcGdp4wXtkcslV0l1DUtlEpDSrYRaAKEPEqbHleen706zpq0mPVzUYU2rFxkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774349694; c=relaxed/simple;
	bh=bb73HrKKj9ScC945iWsTSIK1EBVlBITZF4h39bmMOXQ=;
	h=To:Subject:From:Message-Id:Date; b=SqJGvv4gFH8Pdmooj6vd+1mezrG0MVGtDLwGGZNpHN27CUa11YexqAbfRzPkoA35aimx5YMlD1XxKVPxS57c4LooBeAHD917rDj1z0BUsGtHlDtLInDPGSQEZpcvsBBOA4hFCj3HRR50eesYS53kvQLEWzYOR/AkYvOhegNbD9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5JGOEX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5JGOEX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14FEC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774349693;
	bh=bb73HrKKj9ScC945iWsTSIK1EBVlBITZF4h39bmMOXQ=;
	h=To:Subject:From:Date:From;
	b=R5JGOEX9tz0asMH3y5MAicniH0HiZ5GDZC2+tvpkc8qnp0NzIK7I2I3pcQ84n0phQ
	 NqFx3cbfzk9YeW+5w4rAMhUVLZS/L3K/iNW3MY/6UIfc46Rp5/KPO1Rmcua74j2w19
	 xc4SFE50lv5D0U5/cVPhhoTuffJHXIUSWpNNecU9EiCwbPVCW6KPTupIG9NOxLZxWa
	 bK+rzAhXMhWRqG7qD8K7b/ULQzpfOM/kgasW2lPT6OWTsmElXUjij9jH1ExjqxuhEN
	 ftpkGGJVUDNr1XfLpsVI0EFFsliIAbZr83/U/rZAutwUkb2R14oc0+Wrt/cAoSmiD8
	 VVzgtvODnSoyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B00E9A768
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434969358.17334.15946750307452519544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c2b30b05501d08a9269e81393c65525c8e9365d1626be001a62fe12837f9d2
Date: Tue, 24 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774349693
