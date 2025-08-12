Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299DA1F37D3
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754983194; cv=none; b=b11OtG1diyINbxp3IG54Jpw+hmZzaDNgYSgQkpdoGtAJ8B7rj7XyWFbRZoVCtKRtZQFvJQAXuw8MbtKrTnHG8QGj3bL8+hinJKtVLFnQ3j599hCTV+E4+02To4F1vqA8jU/2Pn+BUMLbUpAT9Sty5Hgs/+bugkww1A1dJZMyIcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754983194; c=relaxed/simple;
	bh=yw7FRYOfgniXkbDwgZ3n2WVeS9DCoU/SYel58Jsl7S0=;
	h=To:Subject:From:Message-Id:Date; b=QvKRngTHOGVgp7ySZasMpQMptqerzMTb54UuFwbhrNh9uiBauNwrJY4LipIzEfM0dartmxYI4LSE6lLZ8FdHTrcOp1ksfWCAnNR2AP/z2a7AbPCVcx1tkOVe3p5mn3MsbgNiLdu1WPhSY0PEcu/O1A28eHALYamZ9mY8kG5tTeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciYFGZ10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciYFGZ10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E56C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754983193;
	bh=yw7FRYOfgniXkbDwgZ3n2WVeS9DCoU/SYel58Jsl7S0=;
	h=To:Subject:From:Date:From;
	b=ciYFGZ10pTeDvE0ADIQEwcAEOAcQSteg+oykinqaXY4ZKeVdCegzUpluBckMjdtcE
	 4YbpwuKDzCIvB0HBXXG76o73mq+5jAy6+jiYy5I76f0hauMJE3MsNDTnRiftL2uJ4v
	 QjFYTub9lvlZpjhQQr+MsNXfcDixzWUM/hASwIR4X3ygotCbAcT+Sls7jCUJvbY5Zq
	 CtGy1o9s6XgGRT7lfOn8cd8OrI9BGCqUj8qi8/oivYBtgO1Ef1LsaewsfXLcyyLF4H
	 +ZeNOTQ9lvbFdIKNdWCJWg2kVfqSSo4VNNT3cVtAQzCm3mCQllHRgi5CMqW8PwXAFk
	 xO3COF5DxR48A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66ECA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498319357.18660.16700354672184028215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b5390157545bcb5a32cda5b62f1f98949bcd774784037ed0aebad65d903e02
Date: Tue, 12 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754983193
