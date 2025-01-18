Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E040189528
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737210354; cv=none; b=MeA+1foFlKDUfXR9zXUI9I++3sCmk5eiihTUmtWDtoW6IFY07Jo9uQdZRuOEu4LN2XzcyIY6mx87UXeKWWz1rIJs7wbPfSZ8Tt2SkxQhIcKosjca0CDxNYSyOtth60CqzdF2MoirIZh2ya1ii1bDWdv3Zd2pNXKnYnha26ahmAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737210354; c=relaxed/simple;
	bh=YQxYnP/RL5j22KdEMoyq1HAnkFgbUZdZ6I3Q1VrooHM=;
	h=To:Subject:From:Message-Id:Date; b=pbprxlIvBDrLILahZ+slysc7xk+1RAMv3u1WbuBv3C6eeMNFk84nC4KLpsSNMyBOZ1eKoinH8VvEVTozzXm0LBcGqHUKqk4ggKbbLEZXe6II+YEaEZNRVz97QojSKcdi+IQgGLw35ViG4HlT8ZTY8rGt/z61AQg2xG+TPlK0YC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFxCewk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFxCewk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50EDC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737210353;
	bh=YQxYnP/RL5j22KdEMoyq1HAnkFgbUZdZ6I3Q1VrooHM=;
	h=To:Subject:From:Date:From;
	b=uFxCewk2XTPfYwiRi4fvMT9Prs2UPC6t2wzj1jnEz5Odzdh+WUR4kH/nlzBsTwsFU
	 3LKy4g7ZHfBjBc2ZZrBSQDvSaTY9jQDmi54yalHD7F+W/+PBEOaZaM0w+wYJv7xwHo
	 oAnOneu6j/SBT/R1htgtYsC/hxgRppXFhlMD4+tLLlAY4nvYiV/HrLNw9AzIYeHxL5
	 2wIsIsR4o1boLL51GKiOjwsEqVjVm9RhHvSgFeZsjmZ+OA7xxbIJnFTLZ2k5NIPEJ4
	 9f9Ndut0o+IhBr9X7QO7BxU9l5mGuwGONKrMilYgIgNr+UlxT7erADxED4T/HGZqNk
	 Yh/NgHj5BppqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF8C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721035359.23859.14166598191262986770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c2ca950e673f2e0e6396c69808ad0e5530db71ddd7b564c2cc22c64aa277ac
Date: Sat, 18 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737210353
