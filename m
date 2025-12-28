Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CAB1C5D59
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766912634; cv=none; b=uJUvRw93IYs124rzF3v10lZmmavE+ACgn2bqotZDTU3lXii/sfcSwGqFK3QpIJR0De/ujgtp3FGAvxZUlTVurh2ximB4jhQrNZeKfd1e5HtodVwYo2ZzxaX3SxwiLuGzRx+Y+MXN9DSJCMz6dIfJo7v9FnysHt7vsEVnT4xnfBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766912634; c=relaxed/simple;
	bh=Iev7IZj10mr7JgAyMnaok9YsJ0fV6XMfadNBsZiiSYs=;
	h=To:Subject:From:Message-Id:Date; b=SDfK8AKlWJtxFD50PuSyhRvs5qHR22ZGTbp4jPVnnHZGBNcFsz2cpLA+vi8mXvBwthX+YEwoF8E6FkoupDmUbKvAwGpWacPLUMT2Y4/U4LK5Qc7u7Fc/D20OiTUFo5C8C1G+oEmYBMJWOB8vve1LWYSPHGpnMKyjbbePlaOECEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTDwGi6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTDwGi6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB15DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766912633;
	bh=Iev7IZj10mr7JgAyMnaok9YsJ0fV6XMfadNBsZiiSYs=;
	h=To:Subject:From:Date:From;
	b=CTDwGi6FRj2bmW8f17nKNxb+vR/0caQxJznyroL8P4p7f70JTJy6CSCZhp7Phj5XG
	 vuy+emA3TjwjfWAJ+pkgnuNMu1Io3b6X6sR8Gg7XS4swG7kE/aR/NUVKNg7xoVd5Hz
	 ORL7GU0W/RM8pnwUsvStbA4YqBQnt+8bda2lH34a52DwKiE412KyPKLl8j7mu6t0eA
	 z11YCbzC1fXcY7vWYSk46AVD0UThrGQY+xRw6R3Niffep+IAsYlak4cxdhoR67QFgT
	 lm/xaEbldrAKiJZY4Q6RGbZYp7+uxwIgk0PBg0RHaDG3ooiA5NcfIiiq8m/owsyjx/
	 Q9tPsnxX071eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984BCE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691263358.19025.8317753515229671971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc349ef3c36c903df89d168895da57b679fad21463e539ffc25ab9d33181644
Date: Sun, 28 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766912633
