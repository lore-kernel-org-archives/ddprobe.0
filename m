Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A915A331EBA
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784401715; cv=none; b=IasUffTnDbWdfYKkOHMSVZRWCgcHsdKKTvDQpNu4BW4i86HcGkpQgEL80BRJ0NEsQmw05/i/U6f7ESXd7AwaT0Iga/Ilg3zWvtJn9i8SWHIzbmnPoDvql63S//4EbCjOyh6cY/K+DI8Xfax5gNBKG2yIXbvKVnkwxW9p+eWG/wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784401715; c=relaxed/simple;
	bh=tWZ4p0K/1vewIwGljSs85+MZiyclMwB3OT3TwEcWcgc=;
	h=To:Subject:From:Message-Id:Date; b=TKsvk6NOkBWZ4HcdAVFWDG/6tHLhFXB4jlE2887c+vn9OnCL3kDpP4ovDAR/WoFO4mhBr1TLaUeHqJCLDIeXzi0RVqr5UxTbGPz0+LIaV45vrx03SMRw/29HWmi/txZbCL+09oaCmYZernrp0YS56c+UsjQkKJSObFlKh0LdZUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQNB0J0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQNB0J0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CA8C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784401713;
	bh=tWZ4p0K/1vewIwGljSs85+MZiyclMwB3OT3TwEcWcgc=;
	h=To:Subject:From:Date:From;
	b=IQNB0J0G4MuEeecLlftT05Rb1v88r45S81xC96yy6yZrb3AGPSDBIJlY5sibV3oEU
	 +BQzM6/jOr2rtww+7HhfS/xgpHeeGoyJ4AeQhiGzhz8W17EtGkgvOi5WPgjWVrUqEF
	 oIczH3IXXMvCIqmNUnJtdUqkda6eTL0ng10ZNLS+/KyPBpfNIqmslmbVyRvSzJ3+bS
	 uZkNdezW07zGK2LsKsLPgWNG83f/zwY3FlRLDp6ewnL5CI23tYLbj3S+HrjJZIeJwG
	 VapfsotkAXZJ+OvBK8VW9e9s2bsTnjiOjxlvfZqzSdOOY5UPWUjhl4YtSdd0xJvXzP
	 p51gwOumL8ppg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF686C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440171368.6841.16596403600733707422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f277cc01c51de6b514e321a9b80be8179119a17e0e109879ad7110ed20cff5a6
Date: Sat, 18 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784401713
