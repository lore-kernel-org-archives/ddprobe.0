Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C89822A7ED
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745963994; cv=none; b=OXA7SbN297pX4orpWEPXx/SyfpAf5bvtwupGEM2GqhZNdusQH6YIRMNDqWDSfKDP79KCBYhnoFb7Rv1jymOqRApafch/GqU8iSyCKwU6qFrF2CJA+e5zHjBl7/ncMC6njNzvx7baVniUXW+j/CqquT6r2gXzPsBQjxA+0Y7Di9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745963994; c=relaxed/simple;
	bh=AdkVACfndTvgJHQihDbL7wFx89/c34y2QTOdb7gyEUo=;
	h=To:Subject:From:Message-Id:Date; b=AQlf79vFE1tSAZkXhfTGCS/e3vjkg+BfMtUIUEry1QwR5GoZ3GqSuxUzQKeqPB2y0Xh3aQ17dFOtVI9d9vvPYSsq8eVWohK7CX5jrTSZMHMoi/un9GWsz9dEbhEYnxXtIEu/nHVHe1i9koLhLiVEXxsivdzjaudEbQw2zNoDGnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZC2SNFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZC2SNFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A255AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745963993;
	bh=AdkVACfndTvgJHQihDbL7wFx89/c34y2QTOdb7gyEUo=;
	h=To:Subject:From:Date:From;
	b=fZC2SNFlCwvIwpy8oCBTIcXdjKkX9sT5eYx4mQHrHrJ7F+gaGXJXIHyOtL5B7Sbqd
	 ISxhdyVAjyElDZLlV2Vj34F4CdeHoJTJ9bgKIeqPvH2rojmudART6PkCcsImYRQpVH
	 ZOIOWkJVVsptlIGAXQMEFSsE8pjHKO4BIkBG99wXg7r+Iqxbai9gzc63u66aO8LG1i
	 lHSUsl6BtZPpiVyl8hUhchrHG0i7L0+Haxh27rHFRoEFkR/vJYSJ0t4y1MgY0eHLt4
	 huPlDCB+K0tQiVNgJ2WNHAGnMTnuSZvnOEWeK4UB1t0z1/5QUHO3AaBua03wQPBFMF
	 hgzrvX9klDF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116BC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596399358.12926.3078534534168694825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d651b1039f9868c560d480920a960d99604d7e35638afe51b7e73fd7d41235
Date: Tue, 29 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745963993
