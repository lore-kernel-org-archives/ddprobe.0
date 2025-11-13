Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A733302CDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763050194; cv=none; b=KvJGmeDpZvvNKNiCV84Lt+/F6F4mGRiaZGbUZ0kZ6sBpHnKAlQBjjNCOnLQHn1BiBOmpnVD6svBud5KA25tpxB97zgfl5hWkojLBYy0GZiecN8zKlUWDcboxtSYJCtd0/zG8N7ON5tWVkmfcmfPaBGmxYBBnH+MGTwgllE9PZYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763050194; c=relaxed/simple;
	bh=KdjdfB2sbkgXqWYuWCAJxaLnxmei5F6QA4xw8BzAUEk=;
	h=To:Subject:From:Message-Id:Date; b=TawSGV+SseFO3Y0fnm0ND+n4XBbTX/z7e4prYcrxRuBrCNCTaX28Iv5mREcch6nf/mjahzKTaaPtzZylrJzV11gqjSdomCG7Unmu0PZWvY9JJDqTWtp/dzjeBDXoUIkaXbcTdkHNl3Uup6nNBC6DEh1ChtyLufuQG0WrPOD5WtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+WT0AxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+WT0AxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A8BBC113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763050193;
	bh=KdjdfB2sbkgXqWYuWCAJxaLnxmei5F6QA4xw8BzAUEk=;
	h=To:Subject:From:Date:From;
	b=o+WT0AxT86eLO/yarhdlR4rQGORMrV1l56EFj1r3t+7lQ3rSUL42qXq6E6aW5WNOM
	 jniSzSLDaNEbzoKYc1o8VTu63VzKwtuWcf2D9p8PFgMDu/tXM3Z1C0Sb8QfvAoyKl3
	 5MMo7xVsahgG/RRKgJ5SaTV1+ipgvmCHoC5xwTqPw9EBcyyc9k5teR4wdlZ+CBK2hJ
	 by3B8SbwaxmQKgN1p0HI3uGFRD1pWktDciLr20+MoiamTdoE5YzFx5FPgpo1CmZV0f
	 9aacWmJG7uCiUneSyPXrDRHrMkbS7w/MGn3k5gK/0GOWfoP4X2FO2rM84sHzPDMIfX
	 dz6SX7qccDS0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC9CD6E7A
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305019359.10416.15342213264602934264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a059f622ded9aa8eb7ddd01f1f993770a167ebf1b5add882a2f9b725cd38bc
Date: Thu, 13 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763050193
