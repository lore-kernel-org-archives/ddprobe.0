Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DA12E424A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750163994; cv=none; b=CrRGkiOwrgcDsR1/zpvE3TC1HyEt/P74PsYnkYGeOs/hXHFPSPDclYKGHrIRjwrmZv3+EopeGIUwXVbJT9yExuAVPNm4hv9/9lAueZfLA8tV5dSJOt1k8skbhFaGWRHQ70oYW4WA+RVOD0LxWkKS9yU4M22e7W6roY+wm6ljYdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750163994; c=relaxed/simple;
	bh=SyIltLVtZBA88jCQjKr4a0zp8goE/hngw3mdFKazYqI=;
	h=To:Subject:From:Message-Id:Date; b=C/mJ0ie5Aqic/6wUy+l4UeLrd+mqVPtdTx7+6Qr+zB9TP8bFayhLFnxogb+a7GnweHwr7IXg2o0WN1dIskni4uRIcgcGuJaVTHjPsZwEfbFs5+OzkaPnCpNuodsGOM6H+d7qQ+atk3RM1wNJQGlUlIGn6xHEEgnr64GEKyUVYHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo7PZfFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo7PZfFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DAAC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750163993;
	bh=SyIltLVtZBA88jCQjKr4a0zp8goE/hngw3mdFKazYqI=;
	h=To:Subject:From:Date:From;
	b=qo7PZfFm846UnIBrfcbuj5T9OxzbuYUmMePuqh6zTskfd+15ZbWp0guJYqsijutAU
	 Q2pg4UXjZr/RjUPAiK1y8lSJefpwE8r5SZkW5SQRk/rZtOAo/wxAREyMjPGQ1nlhbk
	 7uaOfdcuzZm/c1u8em/hcSeCCXBiduxiU2gg6H82et6Iyt+s13vcrlFFRFuNxm+VVw
	 EHAYdgMbmvmMZnqsNX+6B2LyyNSpSnV8uLFsNsWQuapReFm/XbGu6mKCNfwv6ACCNT
	 l8wsPxbPCX/7fG1a6NmkJvzcMfvRgb9gU6Y8KxIaMMi3ATNgkZ6wDg1kvSSgPckoM0
	 ZOeGcRxGrb0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE6FC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016399357.3937.1797930797167327466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9571457737eef8945640d474e367efa5762389eacb435353d06f72ce94187379
Date: Tue, 17 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750163993
