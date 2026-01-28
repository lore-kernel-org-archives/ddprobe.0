Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D2A32D0C2
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769636034; cv=none; b=cMIhD+qZ5XV0y5yKhggvWRbozLtCKz/4cjkq0nWX9qhxiqKKR0AExFPt1NghE2P+0gutDjlGMEbGAs8/ogRynLYLpv/GCLSQgZheAc3Z49jUbeASJuvVUnMDPJkXcODahi7fhQLX9F8Xn+G14NkjQYSOwRgBOQ/H7amWXW0qvLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769636034; c=relaxed/simple;
	bh=nN1zkbTnER7Qsz7ta0nwPVIlUQPISo63mGqMemaViWw=;
	h=To:Subject:From:Message-Id:Date; b=JBWS0XLhi8fKh1E8je2606ESpVfPSD0Zx/fRCa+0/ljxfguqHtPIP7Hc01Ay9bHTBBYTjn3BCpOXGnX+Wz1h92xCu4t9cyXvPBXXePWEqiRm9Z3E3W6zfiV5C/RZ5ibmACZNrUdTpcM/mKWzKQqAv4ZG+P+vCR2kdC7IdKckwvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Loa2ljBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Loa2ljBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5F6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769636033;
	bh=nN1zkbTnER7Qsz7ta0nwPVIlUQPISo63mGqMemaViWw=;
	h=To:Subject:From:Date:From;
	b=Loa2ljBF+u1BLa84YXAgSJSQS5s4fKI7UbT6Vq19VA2J1gmAsyTyX7WzxGKxGyJ/p
	 gQLXnkQi5o0pXyFnVmyhb+tBnpSvNWdzLv9K/M7rPUBlOLb/tieIhR2bNfTQrkM2tH
	 brQA4x2kYkL19Hh8NRV4bYs44llOIDP8qCz/KEweiYArRYYPTEZvr9CiBxU2QwIeHo
	 j63LYbZ3MRuZYgyNb5f+nw+GUvMVOmTTHjK1P+3tWdtRUllQd/VNwHFWT8esNyHzaE
	 u8fZy1Z1tw44thNlT6zQfuIT1+iHOXR0UriYV6Q78J2zeFBdcHssXIlfgriajy7ukM
	 dWNwEAPl1WlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99465D46C06
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963603359.19827.6161690379462220033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95dc03874bd43b227baa70a95dd65ad51c85c92d2b729c0a7253b0ce0eb6eb46
Date: Wed, 28 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769636033
