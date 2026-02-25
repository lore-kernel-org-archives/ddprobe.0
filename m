Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04F1221DB3
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771992294; cv=none; b=SOQpaX4rbeirm/vORmST4U1quh9mEwDZw/JCnubRnaincfUXr34ZZepYNfSArpg4CLVj9wj1l75qHc/mZKt6o/0zwxV39pHDuZXxqpTwdQuHyjnCt+0PP50cQppN96zUCfguiW0PtIxfXihshnl6O/BGSKl1GvIgRlVuzK7t/pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771992294; c=relaxed/simple;
	bh=p6hAh9JIndxXFIM1o3CnpRc6/fM19H3A+qLuOQ03uJM=;
	h=To:Subject:From:Message-Id:Date; b=QvTzUzhkRax6zpStAKvart1SE5DrcxtghvTBY49rqf4gV6prkqn0YB3uOT+ezns+c8lT6i61mqAuD8iObWly2C8zSSLnL2y9kAn4Ss23WM25/HQIcoqudCkTFHfeuvl1Dv/ncgwzVUkOr1paa/ozz/IXyXgiTzGPMevQKMBfAGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MF+4uVNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MF+4uVNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A56C19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771992293;
	bh=p6hAh9JIndxXFIM1o3CnpRc6/fM19H3A+qLuOQ03uJM=;
	h=To:Subject:From:Date:From;
	b=MF+4uVNEh/cHj7YQRKyNSeam2u1ml9ZlKVSDbGSlxn36UYaPkt/KrwjLfISz+fmwy
	 lGUQ+0mxgXsS0yDWm5rM1Q+LcHiY9EvTszNSFezCWtgFVod8oyYS/E2K+0ZDkqWhx6
	 olVAbIkPiaRgAC4irNyaB4tUwMOW05zkbmheRcd/T+LSejvn+wMbAOCAVdQTmDMErM
	 AFdUeOYFwphNq2Uo7KaxvpAqxDwSEMs6MZ2lGR7xKqQiG1HjLEibC7t+EYP7WvIX88
	 qgqj/DQgQQ4eiJRB3U9ca9MOVKMVeYqPqpkz6POxrKh7V2GInrO6qDh41TM2rQhA+6
	 5i58rJN+QInAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90608F55452
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199229358.16400.8633896489792648684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b7fec4fc8d2687a59992305738b9a016fd6b86b62fc75de5b943aba7c11d90
Date: Wed, 25 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771992293
