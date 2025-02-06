Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F40226539
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738836354; cv=none; b=i89AyrYh3cZur9OkFYsQwpIU+xa+Rw9HN1e5deq009iXhEhG8gmZsUAn51uytXb1EXIRV/EV1ugTiv6m17SJrs/4YACqfueP/e+ecea5zO2h13OwkPGe9LarxrUAiijYg3bMTizF2jSwZZ7hK8SxXbeXzZWIv4GHSt4C3qFpIPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738836354; c=relaxed/simple;
	bh=b/WuURBaGHGigV8HJdWVsPzQl4laWlncGYuvpR28Xxw=;
	h=To:Subject:From:Message-Id:Date; b=ijENKnh8gGiPYIXziXDUV9ii4q9Bc4D4ub0sopN2b4qQs33RMOGvTTW2lC2Mpq9sSVbasyq243E113FekzmuGnYGnpMVJgC9AkXJgjzML5Plxt9SyFz6IiRqfUI9N+N2/WwpBUfHatvYjGq+/KpI7JCk/ZMWfYTJF+wbmeiwL14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4nyu5n6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4nyu5n6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A1C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738836353;
	bh=b/WuURBaGHGigV8HJdWVsPzQl4laWlncGYuvpR28Xxw=;
	h=To:Subject:From:Date:From;
	b=Y4nyu5n6LLn6OHGRx9ZNJ0DPSGJM3nQrJS6Namksm1X0bt14oQDYmSUttByD/SHX6
	 K0KUe0DP9u4iOZomQ3AFSgKga7OPxJASo1UhlYzr1o19yvPQQ+qzTBMx/CAuvl3QDz
	 R3VwEc3bdbRLMiFgTqKP/CSeZHpwQH9PT0B0ajWdcDTkW+8f5kD0AQ/opk7lH0YKPE
	 UtsqUjiZ92Zqv0ds1f8Ry8YsDGhv4wo3TvbSvA1pGkMFoR/Gq8c5XcTBLteNDVIxYT
	 7YeoIx2m62St5H421aM+3xgvorBvc1cc5rQ9lcqeWoMDzeEK3CMBrDQFDesFMXO+FC
	 Exa7rgGNdRNIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92994C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173883635359.24941.15640992325237240993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac80570622f686e98adeb671e663e4e6542be1141efbc3e7196ffc1d259ef208
Date: Thu, 06 Feb 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738836353
