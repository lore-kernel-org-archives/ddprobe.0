Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717B91D559
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715643743; cv=none; b=M31003VnN5Qbs0n9AbtaYCHcSgbykFW6I/yiwjBhJXFaHmUw/m2I950zkk/8b/T01AaRd4gyVOvBNi8/KgDdINV6odv/elFHvuwNC9Zg9jJzKkmuz2JzqumCVCaZGuQo5aoSHPiTVjJt8vDj88ObgYWFPyecEmblKtz9lTrWyAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715643743; c=relaxed/simple;
	bh=AzFGsta+tXARQ7vdhyp5X4xhsdIcGeFgNigM6z2U09U=;
	h=To:Subject:From:Message-Id:Date; b=bEFxnfrCaFLoCtgeesInMR5Krdh+hyAcY4XSUDkYfGhPuPi5TCks1AlaLt6iKFZvYlyAW63mhTju7uOqKyN66YHswdIz4Gjffhr5YCmvQcXaXcbsyPp1jIwuNxpy/lJ3dyjXP/KROSVc2ztM+iqhiY1JpbxukoNzyEJPSJpLWY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1onSOpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1onSOpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BE69C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715643743;
	bh=AzFGsta+tXARQ7vdhyp5X4xhsdIcGeFgNigM6z2U09U=;
	h=To:Subject:From:Date:From;
	b=p1onSOpJErqi2piEaVwmMXMxZZGwIAsXYhGKhXE5+KqZVmbIgICMACklYBWG+ulP5
	 tZnWES66z/UdyStejrDmDSAg3+i3nqShz49vGYmvhK5rmVACbsoQBv3ssOta5TCypS
	 2K2ZpuFYxTSdtNZJgiE1qnq8Xjqhv8PmQZdqrt/gwxp30D1k0A+8gtT+y1b4W+6YT/
	 3aHYl1Fp7qIK4vIy+T9M1fv1HjVFx/1jqh+6v78XCcmawjv7cn0G9fYlZWd8ni16Zc
	 gLDqV+6aDT/VJ+fBUoD83Lxu5CJPpzFa5PEC4wzK9sKfqZSnAgCo+p5A/5E5b5Hz2S
	 1JM7rlQgeXKCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA138C25B78
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171564374285.18186.15815729373781680158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8484a0c8a6a58f811319a2b90cad3e06b6205d5b81c3ad06f873fbd0354d590
Date: Mon, 13 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715643742
