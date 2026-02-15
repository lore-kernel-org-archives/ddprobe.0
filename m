Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396FD199E94
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771130694; cv=none; b=jG09fQOU9AkuiqimgTIDSQVJ7sOAhQW6RIuwASssr/7xSXcUTf03p42RGw4g9zR0uDW6BJyQvqM0S5zMu/nyShF9BCvRTOohXGtt78miPoc7xIWUbZ1zMwE/t+t9ndYWFhbfbg5xuduAcEI2PjiEaxIbsHrivdLqOIzZ4fXlasA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771130694; c=relaxed/simple;
	bh=AKLKJguIcm42Hd+xNW40QIupOiN0gmE6mRSKlxv1HBA=;
	h=To:Subject:From:Message-Id:Date; b=sMh71f7BIR58lm2kVef0lvmWrPqYtZU4zXzP2OVZr+bXt00+m1LI19Up2ZOqw9ksXI1h4J0dVLFCBYNGQXsoalIFx3KytM6X9I49VTcoCifVMrOH6XuOmyaPdne9ArL8ckTPv6jZvUzVdKtEeM/Lp9SyD9a0e67jJcHchiyedK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMZrHEAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMZrHEAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5820C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771130693;
	bh=AKLKJguIcm42Hd+xNW40QIupOiN0gmE6mRSKlxv1HBA=;
	h=To:Subject:From:Date:From;
	b=kMZrHEACRxMQgivwI72CV7/mLig5LND+c64PVd/pb3JN8SIIvfEAGQIIPdluZqQHP
	 koRmDkEsRmfcXpFFmShQnP7NyWVFnaHTRHGjViaKLUCFjROPvCKUcfK1G9vynL/ctZ
	 AKA67/ieXmtHdlbPBLLwUOMSqB1CT2ZBNsIpVNdPSAC+PYfpr5EozwBsMNq5RA/NmL
	 3JT+fBvT+n+WNEWtBJP4SakpioVba2cDHB5cwLZXn+C35dHmmmS2xAJqnE6++74cib
	 GPUmteoG7RrrLB/9Z0SPbhf+kYuy6xz+U5jvBN0Jx9a4sjxd1TNWPW8rE4a7SWzSYU
	 tQGucdyYjN1hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC6CEF5859
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113069360.13774.17422546598997756055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8073f016b966151bd91576c74db6f29d88ea7d83365f1a6541c0657360cad76
Date: Sun, 15 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771130693
