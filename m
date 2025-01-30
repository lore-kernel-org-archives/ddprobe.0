Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DCF1F12F7
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738272954; cv=none; b=rlCGMBw0yE38G0L2x44pCm56K7awgD+VXLxuaD5ySZhg+kkGvT96mwUjf1N7Dl5xv04YeAHvaz4P8GKCw13BDizF/aClmTGOsHFdJ1zIoR6xKbXKiYE6MoVMC+Gz9eQ9PxnSG2/S9DlApmEcQ4kOQOp7PbKHUQMzQ1osLObucyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738272954; c=relaxed/simple;
	bh=9yGYQ/uGo4FtxMggtC57TQnuYG67EdeH4HKDmbVhnjk=;
	h=To:Subject:From:Message-Id:Date; b=WPKPqNT5re+XS0usKG1qBTF6PNcqzw1uX9d+d5McD3xKz4wC42alnocM0QZBP/dApB6ejU+WW1oLeOx8fdy2s8KBilBc9T/UvrN23mqejPUh87EKJm/F8uI4ihbLJhiVcP5fZ5JLBdHmYZnx7hXCrDH3goHZ/eylVZAYY15pnu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=px95PE6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="px95PE6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CEAC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738272953;
	bh=9yGYQ/uGo4FtxMggtC57TQnuYG67EdeH4HKDmbVhnjk=;
	h=To:Subject:From:Date:From;
	b=px95PE6H/G/ZUZC/FcKERSCPwVmN8BKD3xZYscSxZo3T42h01dle8bkZxBfobgapt
	 4L5WOqMrSCrd47rfib9qHs0hcH1Ic+YEL/0Bk7YM813mCCvPzgDjptrRFtn8ELuavq
	 vxM7ygno9tg8X4eq4oiP7d9gdSMD+QkAxJpiNl6QGcv/Qe8fkQK8FgYw0j+73WDHrY
	 bWM1ae1BKAgyIbL5S9gw01hNzeLd+jpDhvkkguvt++3Gj8BbiguzjDeGCqDBgHvHXN
	 Xr9g+WPQT9qjVV6ptmaMXbGVq5+m5m+B9Fe9yYvs9DChoztbGVMMMalPWKiVq95tfp
	 oE6f7bcUXXm0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACFC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173827295358.8983.2200621824291099077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d8c5c66fe5514d44b5fc80ba858164d535bb5fdfd733a8e0019f6d1aa590ba
Date: Thu, 30 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738272953
