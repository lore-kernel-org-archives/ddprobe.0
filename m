Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AC327F732
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770083634; cv=none; b=aBRfCIla1NIL4luXjR1N1AHoeIM/EKnbgOKCpt/a5RCk78snOCYIMREmzhmdQnluwZsxR0+xzBuaAjGTSH3XaN4S2XG1rMiGGjJWJ0xCQr/rC4ybVAsm7bwWirCaz3ZwBkZTAvm+pWxGwVITWR7xj3rjgv8xiIl/Irw/oOk/6MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770083634; c=relaxed/simple;
	bh=FcCaYbL5QQdPSvcP4Jcz89gBuMqZ9HWjqvRUnAEQ/WY=;
	h=To:Subject:From:Message-Id:Date; b=mCtt3LV68R4OyCG6HHV9vdfsLp9h4eO34FYxBg7keQcVLC5ma3CX2SoQEtZveR/tdKXR17gvxVGd18Kl8myx6XC8Cg+cTEP1xwO9UIl/veXKT/icD/jKodpsMsfZp0/qTSgL6VbLIYl+NolBMOnb9y8a3c42Gnz/dOV7mBdpbHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLAVpuAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLAVpuAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AB6C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770083633;
	bh=FcCaYbL5QQdPSvcP4Jcz89gBuMqZ9HWjqvRUnAEQ/WY=;
	h=To:Subject:From:Date:From;
	b=XLAVpuAE9SvD9pLLOTpRfvBFJpE4FPt5v977M9f25dugXQAslUAKfwmBdzDlWwZnr
	 GO1QUh0kwNaXKt7vtQDEB/tlNyf5vWIiJJwGHZAH/mr5snloelJo4MNWlEKBXQJw+h
	 tkWv5CNxR6nNsKPAEfOnVjmd741JYTWgmjcvLzYERIrkTv0RNoq1enX8tbjibR3wiS
	 5DGBMiF+bMn0JJLMi7B0593KsFgCEwCbKu9vxFrt1wHgJ0LYg6mlaSbAJ1ryO/sh7l
	 EjC2yHpzACYj3Qt+YE4JmzWecgkihp1h/TLq1qSBDr8/74I4Oz1MdglXY+GrGCeN42
	 ms48bDJco8KTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2559E7317E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008363363.10200.13738934056672168066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7230e3e09b63087075b64da6482c9533d4e3ca7779c622e627518ebc5e095b3
Date: Tue, 03 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770083633
