Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7491DE3BE
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754716194; cv=none; b=P/9PeLIBQ/keOYpTI9JGDaaz0/94z9PrEgc1O9GTr/nSyTSy7dxiUnHOqK6RMkGichNV+BPBctYALLj7Ypp+dwKsO+4QUhJr1LmNb3EcHKvg8eBFJKSIvqVqWHXBj9+RMf+btjOzGkE6XTWAnCga5yb+Dma0YWBdMbhuq7CqnT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754716194; c=relaxed/simple;
	bh=BSgazKyUsjIoFuTt2l6QYSjrhUGAnUiIKoPtcHGPZOM=;
	h=To:Subject:From:Message-Id:Date; b=s6UfW8oehw25tTcpnAwOEwicIzQfj5Y4UgC2RFwCDzucd8Rkv2rxJSMBebX/ZdoHfTu/qZp8cSWj++J3h/C6ENQya12HROR8+JGSqFYxMWFy+Jvt5FvMIXeP8Ibz6hG7Atvf8nNlvSAFoYTBmNCJlDyLE5FAlSHnCmDrlFZ0IxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAx5Sw1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAx5Sw1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3608C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754716193;
	bh=BSgazKyUsjIoFuTt2l6QYSjrhUGAnUiIKoPtcHGPZOM=;
	h=To:Subject:From:Date:From;
	b=FAx5Sw1vGRwXWWkcGsif2uKEaupLa5MOiXAX3hlsTfWrzs56aedb8iSqvdGOFfX0v
	 LMEI7h4hqZilzuPTuACcm9uQvQ96eRPE0flIUhQx7LAU60SUKWvBkWSaJVVuAgpLmD
	 U3RG+K2kHCvi9fBgX3ScYw/V2x7Tq2ArCtLY4Hurd3Te38O6m0XeSYU+FmXdVuzlr7
	 NPwLsTmUA7QEZfrXpbySzrtrx8AAJ8g1+NHHAhRxHMe/LleAlEYskKWHV3FdcdgMPa
	 4gzZd4MTKYGxGC6so29dBOb6udNpfNS6hNDg7EaerkizRBrU+UpvkxwbEUz54tibur
	 i9H322IoJKM8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB4C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471619357.28987.8704448166339668336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241ec8cd3bdfd44b44ac85c8651a16e3513d922dda27c2f02c51281886260d4a
Date: Sat, 09 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754716193
