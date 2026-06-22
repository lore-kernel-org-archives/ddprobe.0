Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318602D63F8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782171394; cv=none; b=kzmpWaVLhGAXvSZEOUEKxLpflOWnGxPSUEuDcEv2HXA+QZppJFF899TcOeoR1VBlHn2O1AWuLGPx4Vo741GQCpxLKYxQrI0i2EZO6/+ru6QNZK/XGiehf87lWxWsowbCdqOEO2PpNF7tZQhum6fZpsvSclH4QDrKiDdNkeBtIz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782171394; c=relaxed/simple;
	bh=FBRbTisxD5+HsKL6tZwnM+dqL72GjerGauRjQJZJ7c4=;
	h=To:Subject:From:Message-Id:Date; b=VmKRbMq+ATsGcqlaboxFHurHw+k4OOamu1PIxOpngCn0Sf6b+uNhdhdy2OBp6IKyXBiALY91bfnCUq3nu10BtHyulXnT9qTbOT4GgWrNiKBXDmW/p6vG7Eo5Vo0CyZLr6nstQC/BMddPhxYwADX8cX19i9AHq7SvNrCTKCXXGZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJgvrnWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJgvrnWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAC7C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782171393;
	bh=FBRbTisxD5+HsKL6tZwnM+dqL72GjerGauRjQJZJ7c4=;
	h=To:Subject:From:Date:From;
	b=AJgvrnWxq0yIPR4ynwQM2nxM24yvKHoXAKkil/btwBr/mUcU7UKcJlYhjtsfTi9/q
	 VVvCmLtJwX39Xci9nMrN0p6YJefpmPG/KeiBsK1ohgp4mOYUc6XGRtH6erDKzRdwS+
	 30PvYM0itcX5McuwE7IZxkRHlKkgHLrgO8Pn1+bsHCjR8Lku+kemv7B/RinKl9Npo1
	 mpX3QC3lfRCDXnd7Tk+FJgyluGGqdPN/MAofBQnFQ7srQiNiMNnnBh0bZuDcF4mGtA
	 k+kmqALk6ToKlWgZJHp1pD//owWrZIDG81t9KJ9kxi3jxeGMtNjBPb1wFhIm8XotuG
	 Kr0r2Ds2e3PZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B616CCDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217139371.24598.14580453430959159001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc26e195869f013477a3a13bc13b57fd4560f597373d8a937f30c231f355ca89
Date: Mon, 22 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782171393
