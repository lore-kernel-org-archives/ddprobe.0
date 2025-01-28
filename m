Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1FB1DE3A9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738082154; cv=none; b=j3UGQuN+t7/A9YRKjSpi0luvtfvZLlyakSwyYml9eKR34gR0cmt5y4V62ZempdfibfaqR4+iFQNr+BBQdtF/+AzZxOaReqG7UiUf9Q4VfXzC6dWZC/FefcbWMH11lHbdFrl5kSU/K/vhEv4FT3u4yMOsEEOku+VShCBo526aOgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738082154; c=relaxed/simple;
	bh=VpqKivYNQsCcnhufN0lYL2ViviqaWcs18pn7FxYY8EM=;
	h=To:Subject:From:Message-Id:Date; b=bVJXVqvd2IFPtH1Um0KSwDdGDXFdAut/KK/f67808OKU6/onX5tdvkwbGF8jXq1rCj26r31Ej4ll4OBlRS4MJLyvnESpcQv3KSPL6qOz9R7IZyKLKMP6PEg74kml4oM6tSCn2DEZveTqdG4uXtT0atSK0til46/+sT6KqWCEX6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QU8J6vi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QU8J6vi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DBAC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738082153;
	bh=VpqKivYNQsCcnhufN0lYL2ViviqaWcs18pn7FxYY8EM=;
	h=To:Subject:From:Date:From;
	b=QU8J6vi7XzEF7QUDMqk2QMppBWEJwEkx50qWIIucEzfnd7aJWA5q/Tq6Mbn2f9slb
	 0wsGgVSHXTlJTkd2NWpSKjBDH9BM/KgyWHEpJ25rVkDq1E8BgpZkK+HkakKMtYZ6ww
	 9h++2pYTMV3f8KL5t3HOLOhqs9GQcODrZZ3I4Qp2UjqFh4sw/7r343aMWp7Z3OrhwT
	 zctam/Owr80q2jb/0MIsk0XBNeSU4doLuFHrCTpl7j0U0Y0SnbWqPPODFD/NPSee5H
	 1VF1fSAa3VgqLTeRF8Bz2sKx09aT30K/oKyTLpHoA6g824g05BiK5rLbm27kWVGVBJ
	 nff18JOQbGeSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F829C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173808215364.25028.3536081993387046001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4f0a83415521aad2a78d5d6a18e6a7d17f631dd75966bf2650f8d7f917bdce
Date: Tue, 28 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738082153
