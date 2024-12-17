Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128901F03D8
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734462954; cv=none; b=el0DcLHYOZuwe89B6tGEXhkf0oYQWDkukh2bIUW+rseHRoOlPBoPhrl+VL5gojBBvq5iHVTMtDHNd9SS3i4b20+XvIzHSZpuBM9II/7ir+ai9+mMvG+eqXqmJ6NMTskefVrkfE3WM05XXx8oKxVTBdXLFdvwo+f5MdP3DnmGTVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734462954; c=relaxed/simple;
	bh=BSd7wLH63v5jAn/jqvn3nAqHLN9sR0oiVC4Y94MhyCA=;
	h=To:Subject:From:Message-Id:Date; b=Rdc23fFbtV2X76HzUPAylNbh5tTbeYlZ+BtEsn7HQGpuInwYoqDOCJIkFmHsvCyOUB9fJJ2RYLUrOU3LQCbSDSpYewZpoloWiIybGlv6ngDedKnglLQFoJgsBhh3WeauDeCiksMgvbmW6THCW+jovi29laeTWUw8sNQnrVLrwnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CInRY0ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CInRY0ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2780C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734462953;
	bh=BSd7wLH63v5jAn/jqvn3nAqHLN9sR0oiVC4Y94MhyCA=;
	h=To:Subject:From:Date:From;
	b=CInRY0eiPDuRo4yC2z2vWP6MHC4+OXF/VB0EswgSmOjJHCsP+LlH6ECuPma+g63xB
	 ORvqrQ1ZpFlwPdw605wVedlY1gFqf85LCt1qh+QtsLOSs0i5l6GRmWUfu7wG6nfPyw
	 38nNsNqoXtXT+rR2yDkls5Kk8FTeC6O502A1xXiyzPW6Jn8dkNxM8aKNhmSPIKqlgw
	 HJ8bCQDQwoQZ/CozLjFfFq99vlQ6DfVYxOmkf5jV2VJQKn8PMNZQJNw2KQ5UTtRhAl
	 zRieRCKusyqADrqkiyg2z4+UDF6dpbqSbn+s8wW79J0CYJyZEwbs74YvH76GjhRcL1
	 7lUeTkNDbRuHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930F5E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173446295359.7277.8102159596715497796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d539c80f26d709b788ebd1c9387416482958a204134dc0c7ebda11f6fc08ce
Date: Tue, 17 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734462953
