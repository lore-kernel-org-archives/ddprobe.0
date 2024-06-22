Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA3F79DF
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719045743; cv=none; b=BmJMj9kPvL+kC8mSfxz6aoWxzN4WA7xVSzQ0S+JH6BZGYU4FkqX3v7BwsLcU1Ghd3zXS2z7NZyS7B3GeA3PysNO+ugmkh1KW6L5tmtuhcYUSQf5chTgnbF111FAZDmuHxI3VSHPaMJDeyA/2LzdoWS80ZHcFpLXvUzk2fypCsJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719045743; c=relaxed/simple;
	bh=Vll8IZqcg9N9t0pQizn84CxWwIcneqszDDyoB/cQn40=;
	h=To:Subject:From:Message-Id:Date; b=f8lbWzYBeHkCuy1I1fy2zHhoLthoI+iBXh3R91WkL/kP5V4Fyhh79OfJX69RT/832EHwGUdG9jwudfZzI7apoGeI5HTM2BjVv7OM6kgnPL6mudssQ9dRsGZxtZBR4Za6SJdg0TCRSlzHRC8S8hEXP1cFY3bpStcpxNojHZuA2N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALa4ARvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALa4ARvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 066E8C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719045743;
	bh=Vll8IZqcg9N9t0pQizn84CxWwIcneqszDDyoB/cQn40=;
	h=To:Subject:From:Date:From;
	b=ALa4ARvVWVtq1MM2NkjLHo/OTOBHE8slFwYOjBt+qkizJyPIKkiVK801nerB8/Ysj
	 /oIlpVg7pP3QapGQP30kBlDUmawNVhjO89RFv/zvn0jnu+vUNwUbDoGUsCPhwaxhBt
	 HX7d/UpqPd8/Vr3ZY14LbUk1O4kO2bSyH5TEThwrHrRj4Zj8OZ6oBO01+y4LxXet3O
	 lRJMIO3qtG/foXaEsPcGyVVCJHr+g8sYT86dNpxT0nOEpajy2zwlCAnNCHp/rB3L++
	 09YsWShMS/Ic4/p7DIp7M2ImWc2LNW2yf7S9KvnS3fgAAEc1p8KdXQnadnmWeYvOyu
	 w82oXBGhGlN3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D05E6C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904574283.23474.6065690066977775389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd600bb91ae6fb95cd93148fc1f366073937aa31f07bfef358b156e77c6f3472
Date: Sat, 22 Jun 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719045742
