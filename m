Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A09C2773E5
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782028594; cv=none; b=jgjlwcdX0KQdQcCLXU8aMlYpz/d0E7wvXMUP0Blgv/2LPH+diZivK4qZyR7QdSQPtzXykU76IbRDyO+PHDs/3Wl1NMDFWdUZLVYBc+2ltgB1cfvWhP32mt3BihvNaOBoYUGIH5zoVPcXR1EWyD0iEbDXLjyxUJru78weNjL+pXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782028594; c=relaxed/simple;
	bh=zR/u41vaKUQqVH9Y2XveKtQUh2oKMqGx+R5pfP8Tugc=;
	h=To:Subject:From:Message-Id:Date; b=tN6TolTR5iAUB8383llC5OozJWq+WdBusDbmv9Au63Zjt0cqSlUdO/Pby1SCBwHpV0O7wJeIcKuLU/7ac47pQQolBDEfp4Sy/7JhsE39uQMw3mFDKWPfi3PLQG0kNjj/2Ec34pB0GO7UHOsOKA2pfMjE1gFTk04cxPccuy6I0aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbnnaCDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbnnaCDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE72C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782028593;
	bh=zR/u41vaKUQqVH9Y2XveKtQUh2oKMqGx+R5pfP8Tugc=;
	h=To:Subject:From:Date:From;
	b=gbnnaCDd/OV7pCe4a/khU6iewGci//wVzUiCYMzXam4xJvexLTuiEnC3yzrsMrmVB
	 CYTmw93lsu1R8JUTi42teehv2DLvu0JzmbtxMvn8bZYgOkylhIp3j5yOURzXim+UQ+
	 j2Z2dzE+vZGSTZZZ8Vnfk+sDytGnwzutuYu4tHmBGQqYi3Rls2BgXKJzCiUdQI8N/R
	 +dtKbXxQW8BkQEGwXaJm77yFqRAllLgJboT/f7CvKBucPWy4Q5xqxrDNW6DgyIWTvw
	 9tqwPS34NytHnKoG/E4/kGSyboUze8q+jyAumfYeAKzBwy9HawLJTO3wjvwdXGj9FN
	 AHmSm7Yr/pPQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B364DCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202859372.14082.12952206125815681540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98385f5755f8db297ef909b4e7698cbd4f054f334ad1779fefc99fd28598db4
Date: Sun, 21 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782028593
