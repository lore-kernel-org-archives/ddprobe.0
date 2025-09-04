Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD6B2505A5
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757011794; cv=none; b=WjVW2z/QcOHDXvvyaNCvmuj7xPd3WvSlv7JSVmjpGzVD0KQe4BbaLAdd6I6VWnCyf2jMmQ84adf07RzpnUYwYaOnGMmILD5DOYHgwrKEv8QipR5Gk4IdGNC9u5Wb4O6LIEoNii9Fax8VfBPvRbMk932X5U95PknObEWaR8L5kXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757011794; c=relaxed/simple;
	bh=+etJJI9SjkaHbxMf4G7hKwjajRPNYyWfTvrhcH3ZBoY=;
	h=To:Subject:From:Message-Id:Date; b=RBc15arelE81SlRPy9hm89xNFQE0zLld37XEY964rIvB6QzdIHn72cvHumucv91WYzpgIDQUvTK9TaSIfsfdamw5WBCkGAue+RAw3pZspjaiPwEjdcOSQVjdfR9sU16byPVOu/9hKlDHVBTfxm9M6J5EZOVGN03JfpBIwC+Fxzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9Xl4Tw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9Xl4Tw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A835DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757011793;
	bh=+etJJI9SjkaHbxMf4G7hKwjajRPNYyWfTvrhcH3ZBoY=;
	h=To:Subject:From:Date:From;
	b=e9Xl4Tw5Sw0Fe/g8uBHdq/KhAMMdSDPBLNw8Zf4JYgKRbT9CTgnKz44xFrAuD+qes
	 jSz+zlqOgU0J5Nozd1kWVy/yWkkivcGcHSGmDQkQhQQaxKI6RBl9FFp9490sQapfeH
	 Cy5cMsETb0cIqlNwcAz3deYgxJUsovGGPVZfhp1cd4mSXlZTD3i9tv9azYZy2SZ3+l
	 9YmfO6UZdKux3LUlpAaU7n1kGAtf2WbS6HDYyjXGBe4AAbl8DljHnpzWZMO3puyHPX
	 O4o+6h7IjgS05Hyih3tiRc2psRRn6XBWDm1NHCuB/VUBEyN+nYkCFaJnXSrRRsbIpi
	 aQx5P2B5PaqBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BBCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701179360.8198.3623972788404025717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5343cb448cf525bfb9b6c44f8f89825ec1be5cd045f7ab045f82cdaafc524f4e
Date: Thu, 04 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757011793
