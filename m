Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170912F0690
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758524994; cv=none; b=Z6Bvvg88ulvafURj4pxfVcEKKSokTBzUHGUp3urRiPBEObd3w/p5XC5nDwrCj1fecudPlD+lEzIwwEsR0bFOFMUrdOcgLR5heMyX5dT+LQADDKQx+MYrg7aWmBv7nV7GNQTCiL3c+zKTCcC/bhXMNZ0ut0fnnbmrfr5kn9YdA3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758524994; c=relaxed/simple;
	bh=0Sj98n5PILg7/9aKsVPQtdCCt4zMQlv3IcxJ3hoOjnA=;
	h=To:Subject:From:Message-Id:Date; b=ayyBQqnbRZJG38F8Z2sTwUaCYQgq7w3nqrdQS/AC0g2xit+9Nvfb6Vpxe8OL7264Maxh+tHIWCZAFOxBD3aC6sgqHhWgwkgh3ihN7nJHEFOXpt0aeSCf1DwKnnwibPsV5ACjSrUw18FF5w9pa4x2Up0+dJQ8sogRMl8b/WwpYLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbonGIKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbonGIKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4DBC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758524993;
	bh=0Sj98n5PILg7/9aKsVPQtdCCt4zMQlv3IcxJ3hoOjnA=;
	h=To:Subject:From:Date:From;
	b=MbonGIKUNm6cV2hwSD7oZXhU8jnq3XP5dHe4VdceuVPcCZXzjurd+Y7FatX13+McC
	 8dejNs/6NJF5hyzVOVDoCzFgvr1G/lOBUlTn/qSw6gVH8WeFJSJtS3MQIoj0JeLhTP
	 BzYAGl3f5fIhR7cpLC587qiuVdk4rKF8IxWnuOBBDGMWLwCIFHFHAH8ztFEPzbk6FF
	 kQW9tM5k5fFrH3IZyId9dZs1/bYoqav8U0CsGG4VQnqJc0vpaMfIdGyKo6vxLzLZsC
	 fol1PEmO45yYUF2MBiRreXQXjfdJkLs9hoSXIWPsmvpGu5aqvNC5Cr07oQTqDDKCB7
	 iudD/xOoYgGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F328CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852499357.27070.15752098342270001656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03df2e8bfe5d48614e1876424edb9d3c89125ab4f44fff4002715144bc3b18c
Date: Mon, 22 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758524993
