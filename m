Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD7E2BE7C3
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765489974; cv=none; b=oMp8vekMTQjN19xEjhr4/8n4tvVxv/G2qIP9uIC1tVMtkphsnn3bejkz5oegDhGTB25Aqs59JkEfFp9S710X0JDXsIMvTN23NWB68qc+ip6GRyvBckHXglyPhIpN3jjEVrz/TOuE67GzQHIoVbchh5/n95Ow7fAWDBgLVxsCm6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765489974; c=relaxed/simple;
	bh=mK1IcxzBF3YWQObLY5PoYhc5KJu5TyqIplKUzXtyXBk=;
	h=To:Subject:From:Message-Id:Date; b=dUeLvk4W+dSKTADOw/KN3iIXDUYm9cdx7Lef/CsYugRHTkZsHnnceM0OfUprDHVzFI3mqPFFTChwBofoh+N5+PnJWazdCi97PpGFORtSyvsroSgnt/38sK2PmQhZv5cFHRTDaPL+yE8DDtjjSX7hJPWfG2qkci+HrTA+8BeD0Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTtcr++A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTtcr++A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B92C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765489973;
	bh=mK1IcxzBF3YWQObLY5PoYhc5KJu5TyqIplKUzXtyXBk=;
	h=To:Subject:From:Date:From;
	b=NTtcr++A17v5gwGJDK4Z3udGrzUlbCntrC02UNDi7IQpCnLAg3D+Ccz8UvrIxVOz5
	 HyTE1IAGi4XoYR68i9EwhjKKoUvEoWVOHqEBt43GxoQXZZa9v6EPa0IfHKI7Gv9e1+
	 +/Igsnsace53kW5xtuVgsXLJ9p9/NdyHC3csW9zXL4R1wVF7O4wPEcG8e4axV2zzLf
	 ojMOwUztJJdTI81NzDiu/T9vfBQMTMcHiAzeZNipvnr3PQZ142+5Y/KlvF9qgeDLGY
	 5sxILBm5ExBFnVRvL6E0iz68xq6TI9+ltzTQxk5dyF7QW/v8vv4QPtMpCrBv1gj0gG
	 9mi1+s5DRn34A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EF8D43357
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548997358.19703.3465409970140078387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a1b365280026a876fbb9a0ad258f14dc0102eecc6b63dc2273a9506e6c555d
Date: Thu, 11 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765489973
