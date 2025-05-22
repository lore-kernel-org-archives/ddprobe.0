Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4493B188713
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747946394; cv=none; b=LfhsyW3Uj6cSRZ9ku8+WKQmC1afwjvE/p5KV05T2RHp39fR8HE8TgehdH1UJzgqOA6giRY8YbMsgMyOcdStNSKlx8eOLOstEixjdFb/Yvof/j7csPevBZETZYFZwueVhOexVc4BhERBS7uQeBQNhZPgjUfBY2hMxQvsUZlRkXPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747946394; c=relaxed/simple;
	bh=YNJRAEOM9vpsYz70QUilF6m/9Yd5bJkRc1kZKLDN3g0=;
	h=To:Subject:From:Message-Id:Date; b=Kf8iiTGZAXiEzUPHj5S5qUjNIfVmTrLD01Zx2mAn5ek9ADgDKdy42Bjlkf1M4tD16Lfw87vKz4hhHMgjjwySUL2uw8HUhJJ9BKz8XCC2ZSyUtnwtYxmieLSaxKzIZs4t/yA61aS0YBywVxGYSTmQz57PDWrAoubWrBqCnmpcWdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ioib8ykF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ioib8ykF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9B3C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747946393;
	bh=YNJRAEOM9vpsYz70QUilF6m/9Yd5bJkRc1kZKLDN3g0=;
	h=To:Subject:From:Date:From;
	b=Ioib8ykFxvs8AXBZN2w6x9QM8XLT/Qbs9OWRTDfgMR9m+XEtgVtfFP9Cysm/BGQhm
	 qH83ORfk/QX7CytRA1DYfj4l7Opu5BRzP+Hc3+PkVl7dxwk1c4T9lARDYbTxJO+ak9
	 g00mn03FkEb1j04CR6xXCiQrpJKZ5bT6ySDFS7hXjBAsjN2OQGgJ7Pf2vY4Beza2bV
	 Mg1iwr4hTMz/bvMkj/T4rg8Gv7+vxT9a+OUkp2GHUblfTMtYHnNWch06CmsG+9/QC7
	 X8MbmSyj5f5vu2GjN6+IvvL3JKRgcgDgIfqRUQwhZEEMFr/if7/PHIiZqiC3ChY73E
	 AUjyJ8hz2Tesw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C309C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794639361.19900.7150542016105909475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9013ed27f59c695e547783a9d9be2f80d364c32f7ef9b72808f039b18db915b0
Date: Thu, 22 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747946393
