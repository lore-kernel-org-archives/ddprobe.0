Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BC91847
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717743443; cv=none; b=GDGeZYfGY0uk2E/JdaDl0QW7iSiPB8zrz5dYXv3YIuSJeeoJj96t59N5WhgIbEQgAJuKyfB1TsoBLzkBLSZ6qxQB93YjxS1UyJ65PQzPxN4zy+kMS+d965mM3KD3aBaxWmz3iVFf2bhRgApXjUIZzCSSotHS6Lgt18VtOC0cAjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717743443; c=relaxed/simple;
	bh=V/lIt5jyUhVmoXAnqghlJobELvSzE9+Ilo3bigKPu0U=;
	h=To:Subject:From:Message-Id:Date; b=t/q7S3ZR6tHVvYWP4SD4piVDsx9aMKR0SJhUCkf3l6LbOTao+chzKMFe2/YWJc9zuqgg7m4lS0KrUgFjRd0vB3tZpdv5ijSXgLh38vKAZc8eHhZxQrf5YwNo3KBA0iGESJLDeNpcV074oMXTiNTbSTN1xEVAcgmdaAxZqCUENUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phHUsfiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phHUsfiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01A35C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717743443;
	bh=V/lIt5jyUhVmoXAnqghlJobELvSzE9+Ilo3bigKPu0U=;
	h=To:Subject:From:Date:From;
	b=phHUsfiKigx3QoCV14PArwlRFfIobZn5MdAAcDxD4xIqBwxjUE390HFST4aayLxQH
	 IgwcSDvG3Htwd6do/GELarLes3gOemmKg2p0UmeLVJ/CvGTvu+pKziG4S99uqzVw0M
	 2MThwnorLArYJusHqdEWjd9RO7cNED1OQJ8me8zzjxqsnl2Z4VdHqDEBh32LAYVhmS
	 Q3YIoTpJqG5FxXVQM+iemlc+ge+P8SV5Vzxj2yaDqCLpNegAje79yiPIl895t5r++Q
	 hS164ZqXB5bvBDtG7dbOBc9VERMPPLZH05eM5du7hYmyF7twdvwUKjEnQ92kZ02/fP
	 tZY4Xs8N5P29g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE0E8C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774344287.31798.10050066352461754874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34df23d7787ceebf5c9202f1b3c9ec93377979cf8768aff569bd3a8b79afa9e8
Date: Fri, 07 Jun 2024 06:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717743442
