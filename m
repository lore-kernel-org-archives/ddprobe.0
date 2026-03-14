Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280341DA62E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773471894; cv=none; b=PLMlodf0RFtJ6kbX8wLp172QFz8RX+FWFgWrBcXVELZJC+cyGzoqD/TgHOuwLyk9libOD6TlyJ+hLL1JKE4Q1AlN4knS/l6VgkUmshZmVodM8w2Q3FMOpcYg9hU2Ud7m4QX1gWCx92VQidvTrlfTAy5DHn530wjbtsEvD/rGgnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773471894; c=relaxed/simple;
	bh=SNriqGg8bPjjqw/tcYltdxqPsmxKgvTuCgPo/R9L9ds=;
	h=To:Subject:From:Message-Id:Date; b=smSfCuwff+O2PgQ4E3rsYhK9QOwaua86ft7KLu0SeylibKQjVz5PDwxT1iHiYU9/YFSTNWrxNILmGySSwzXKmav8w5ScknluFKaubXEOzr+drxPCxzn0mm9ZmJdD7RH56tYFxL8WXctyxXwmH1L3UK7rvfbobLo3KquiAT35R1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jswMF77R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jswMF77R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A2EC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773471893;
	bh=SNriqGg8bPjjqw/tcYltdxqPsmxKgvTuCgPo/R9L9ds=;
	h=To:Subject:From:Date:From;
	b=jswMF77RdYEl4MSL0DlcMVLEAiadJQNVxZ3LSoAQ2JTXOYCw+jJcHnlXJQXWx1pCv
	 5b0niUXzxOCLspUrehStNxHQmScG0upbY64AkkocmOzzn+81NUgudxTflkr/rYDWoZ
	 QbAXiFCyvgeiJLrK4ei0QE6s2bwMIr/0hsRs8uEmnMIPAe3rRVGNxxtRgL/XUWNx47
	 Rb3HGDkqXbJicch6BaQYmc/GsnXr2a1UdOGE4+34KQI82syFfmUL7tgnVStM3+AYnX
	 RlfKVOKhEk8tYOyqXGoaspeC9O4LNPTxN0tyDcWrdVnuGcMTIkZ37stoQsDexqGOWy
	 ERi2rv8BDgYYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955FA107BCF8
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347189358.3614.6522233813778523163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2198b335edc6eb7468e83ddec1399eb8a2bae62d41d84e3ba04e4f2db631abff
Date: Sat, 14 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773471893
