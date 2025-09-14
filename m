Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E862228C9D
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757845194; cv=none; b=R2qHZDcO12a6swvIoXkbFeVyLmtf/emLpUg3SbuPm74NxdAc9hjpnM/44OtrCaILd9kz5UOCZ/4+HSF3PFWQ87i/NCNBhXRfnyF3/qZWCOb+gsfGF94Yuun13KlAICNYDs1gah/fsJb5NuT9To77HyU0S+DNIVT4LGHRuSktV2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757845194; c=relaxed/simple;
	bh=hB2m+wR0pAShbq+5vofZUlon5vn1eiUxlPszILtTstg=;
	h=To:Subject:From:Message-Id:Date; b=VoHQIREy6UgQHeI8v2GoJIw4eNJ5c9H+tMglpHL4Ts40aKb7iGbOY5z3hAZUpGznPUzsPo8x8AZyNfFokRiYqMzg6EmqiMn3ZUET1XaTsngddW6mmk81Ti+vrEjQwXj71vWIaE8FHHT7etLt9AGQMdpVr2tEy2ir8S7ltdzKLj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhucV9iU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhucV9iU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D9C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757845193;
	bh=hB2m+wR0pAShbq+5vofZUlon5vn1eiUxlPszILtTstg=;
	h=To:Subject:From:Date:From;
	b=mhucV9iUaLHqVrmlwb4y/bVPCAFSl5CKbc+Uy6+wa1QcM7g6v6dOWrw6fQy/V90Pr
	 p8qhC2oMgTiknGo8GxhhyNMX4nwt4rLG11lk84CSehX8pz/2xWpvmI1lNr3zBk6vxU
	 SP1kJM/dCPxkY5pckuXy+/iwH6zsrIamhBy4v+KAAxyP8F0EWwNuoys011Ua7Y8JFW
	 ZW7mB/pFffVVx8SqCdrPNpk9cxvtSK6tqOaUUKKlzKk5ik8kex6qli+p/hGu/3KimF
	 AtCJclMGxhzJtyXh1YuLlLAbEwrmh+g/DfNoSu16gWXGij/ZZgKpgfoVIZVpfgGs4Z
	 soSpYzZP6vvvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A3CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784519358.7815.14285779086336722084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda270b51c383f051335c9cc074fedcde7037e9cb333a1ea8892eb3d1a671523
Date: Sun, 14 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757845193
