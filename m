Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D57F230D15
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737046554; cv=none; b=pBNlabUxMGgP9C87sLGYR3IAgLS6mAV8A3kexHZCB2qKK9Fxkc0Npf7btqVS445nr0Qaa4et6TtgIDVRRpxeYmlEGDuNyZpou1SsIi2KKj3qndi7zLYRROHm6P4Sq/nTIoOtagKu5KGbXAUGYz1UKbL4yDcCrS+Q6toWBdCwaow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737046554; c=relaxed/simple;
	bh=iA21rf/9Kwg6oFZ9R8PTkJm42LQ5twp+Lj91YW/SFJU=;
	h=To:Subject:From:Message-Id:Date; b=bm1tQ9yaolLNzNAsflsi0yO1VSmX9v+xAxdSb484DbrWlqFj/YiIhXu9AjtdroqyIKyEqItZ+8LuH4uptul6/WzDYzzhsDzdXg3N7MDDtbXri7TRt9llMylnsZm6m2zeksqmAONlD/bWboIXexNjVQXm5I8k4WANNDGzUODt544=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+S9XR/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+S9XR/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFD8C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737046553;
	bh=iA21rf/9Kwg6oFZ9R8PTkJm42LQ5twp+Lj91YW/SFJU=;
	h=To:Subject:From:Date:From;
	b=t+S9XR/SKcFKSmUohKLx2RwmttlklJlFkd6FzxpAf17yARMs88aC2Vc7b5+unMGDM
	 Ulr6GqHM0879C+o1wkEhd7cLzoVjjpfLbT6FeRmdzYUpHrN0NLRntCbH9Dj515v7ia
	 BGNCrVoKBISWQH7kMLW5tquNULWErokANbshN379XSeGoHrhdsIOjcBIXiDNQgIBFd
	 SXnMcdRa5M36L2uTOnr/o0bH8O+IILtZRrZh8f/2WppLFdorbJaDXy6rfz5OqY97db
	 0mgxatJFfvInLBkbBio8wBNQddsyC2iwkD4k3p1XRMlNWL7hFnYSva8yAucFEKqr7C
	 Q2kj5IDYSZ+Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D5C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704655357.371.2690040683262571446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa803d2ddf4f50ad255008b26e82903acf24214f0552cf948f83c69b8a224e0
Date: Thu, 16 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737046553
