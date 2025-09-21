Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FCD23815D
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758443994; cv=none; b=erzQsACZpnAxKx2meadizSj56zO/4MaaFlyqtlBrSQgcSoOb+A6tl4B6ZnoEc/WFoWfX1ebw3ny5z7ueqm4io6dcgPUmIxhF+Z7NzzCEKlESq6xKuRTZGMNvxzDHY9/dIrEk+W7fSDvO6Swkt9UjZsZktp3DEHRShdxiZwN8Svw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758443994; c=relaxed/simple;
	bh=jfd9XLjsSDKueqLnuOqffZrD+Xll4YaTDlX6iZSuB0M=;
	h=To:Subject:From:Message-Id:Date; b=DMUfXazE0LHiVcblH/XP+4uBBnTXkvQyYjfzTVxVNM0VT1ARbZdDnpUViqlZ5UpbiFULwjkq+BYBI1itdj03g2sgCvWH8tGYdI4Ypvo0/3dfFbxz0ttNxZKw1DRjK6gmmIGazcE4yB2OH46qiwMoT+a/KLxkwOEvHrdKA7Ii2Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9Wf7ANu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9Wf7ANu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A911BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758443993;
	bh=jfd9XLjsSDKueqLnuOqffZrD+Xll4YaTDlX6iZSuB0M=;
	h=To:Subject:From:Date:From;
	b=j9Wf7ANu4yziX1MpF8Gw5T4AnXOHRMy+cYDSCRU2LY7BjbC1d66De6gPPzE4Y1hjy
	 Xk2M0Xon52sCSh9V0GPDij9EiAg1+r6DcgXqtf3rQ3V/94BmMXEtJ10XA0IKLyeCnv
	 7ZwobByDs3E5cIROSgx8QFidghIqnn5v/oOzQK5ABAY35qPW1egyqOZymmzSrEvGIx
	 8MLQuUkL4SWXhEBV256xVnbw7A+ijoBKtdnrMWqMJ7VOG9QT6MjLCpmTJPKy4pYPMG
	 ZlwxsiTEI8NGtButVSAxUIai953IIoCtMs9mNsWkzoEaqftcopuAkgySBeM5qHscuE
	 L/hQ2f6LhIZqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9655DCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844399358.25375.11553086701799691249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e445db9d3359d76df98c120e3f41628b0af1b86df935f2fe7305edcd2f1931bc
Date: Sun, 21 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758443993
