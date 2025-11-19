Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2921A9F84
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763514114; cv=none; b=UTNnRa0EcONwlXL3O0chZsujfsbw376JHQgorHk2IS2xErenSRqvbv8NXPm1Q8zocKvcf26tyg9+oLGpc6GInS5z127+TTTNAoz2WoXUe6PK5PVvb8bQ0d0xsACYFaXvXj7kevMuVRgGzZsk79pxct+qk53f+a6x6oELU0qEU9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763514114; c=relaxed/simple;
	bh=15ODV74HjVng9ykv/laz39VDv3Gg2T7NHQvoSXcAmdM=;
	h=To:Subject:From:Message-Id:Date; b=WmQOymH0u4NlxE4XrsZWxUKKIfpQbnAzy1Tw6F0t1yvJt+xmheitVPfCij7PQRzY3fTisDTBwcepMJl11LhYzvOKWnk6+0EUoB51ifLO4eZXK1Yv8SLTIzEgz8sOXaamUwvoSx8t+qRZoQC6DJNO11gZb6QZ5z6kMnr+Xc0myfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhVGKcPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhVGKcPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB707C116D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763514114;
	bh=15ODV74HjVng9ykv/laz39VDv3Gg2T7NHQvoSXcAmdM=;
	h=To:Subject:From:Date:From;
	b=rhVGKcPZudyI8MnxqlICUQKxV67/3/wD2iuHlBhy8VC+9yKrXu1lDs4hcemECgHfL
	 tqHunMh9aeC0g8DKhLZmOztR/Waa+H/HtV8py3i0433ahdvJTrU/GrQvJ1hEYev7J+
	 fiO/dMkr8mSBkgGC2WWqDxrY+39ZwLWPqfMGvK//dxtQ1VvHypHOhXuCpdadTVEc4j
	 FHAfhtlhJvC8p+g3iJ0lj+sIxvE3JtBv2EHN5ksRTFRyNDFyjtU16gXP3cED5JAKL1
	 JJ7RdsxhyYKqAD+uEPT86u0SGZxP/jREwIxopGakaSYHu3MvswKQp67mAEc1URL4Bx
	 w4U1NSDvqTfrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904FECF2564
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351411358.31139.5797200771453616409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f9584516d56b1649525d6a2c298e2d0beb2b626a5df6914825b30710170840
Date: Wed, 19 Nov 2025 01:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763514113
