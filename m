Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6999711C94
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715139143; cv=none; b=Tth4+/jnRNkCjC83VUv8IIHVtCtnJJ9YbUTbAx8AI87woMEQaCgfCowDm5uSsLiqUMAhlyZikqK210dshbTY8k14sChvjJkUMZqCJqykK+yFPSEBsipRDyooF6zcM6WErA2VjlQVNcLe7mx4YV5uCbDYbNvGNbL1iEUzVVJzJNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715139143; c=relaxed/simple;
	bh=EznTr6GzkKKV8JWHIvgKCY1qnMIlknjR+kRvFHOGcvI=;
	h=To:Subject:From:Message-Id:Date; b=AQqIXe0EHNFZ2XQkBgke2vg4A64FrTM6WKDc5mMABAaRuyL92VZkA89Xwxy/oGQRVNGAYQzUO/gV9I0kD3/CeXuu+ij14wvW7/gSp7CJ2sggDmMV8Z0mwOfQJX39A8KNLs0juVv9sYsdqmlNnaZ+vwWHCYbaoPHHWnwQ9sfDYsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zw651tfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zw651tfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E66C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715139142;
	bh=EznTr6GzkKKV8JWHIvgKCY1qnMIlknjR+kRvFHOGcvI=;
	h=To:Subject:From:Date:From;
	b=Zw651tfN2xTg86eLZU8ML0/cyQJ+RgD/lRSPcxDrSok2Pj78kE4cdXoztRMVrLfUY
	 5bzNkKSOekFX3h8oyA25F/rzKrpT48/WuTSJrWLZiu+5AbbxnOXJFouL5+mjI9FdSQ
	 9UCFmv9yfJs0KisfmrZ4x8oIKLjJiuKDimOaLrz0hBmRR9EBUr/g6Moe898sYOZ8zj
	 PkwmxwonF3hHSZBO9QAoQ8PH869zAb5GRnXOWPMkA4yak2E6Hn6EgatzEMbM5c8ab6
	 mzqTastBa4yRnbnwyJVD3y4w2ydMoiYsboVjYsJh4bD77fv8Aj7fGkBlkMq3hJN71B
	 ncm028UTAX4jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF0C1C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171513914280.19555.16744339777328926956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14331b1577c41c45888040242b0d3c641ab44d6a860acd57d0ace1c54a327851
Date: Wed, 08 May 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715139142
