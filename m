Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4563115C9
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715049743; cv=none; b=MtyG6iz266Ja7CggZfffpGU1MBXAd1AIC1SEyJHSbkXeu9v2qyRm69E3BQ9jLwpE1o6DG+CMyq59VAcebPaQskgc4417DJ6lrX0MDBeoSQz8E5HYFPaskFBhdl8A2Syv33coTcPaV5HIhUv0Dv27mLFXbOmKtpnth7hNEYKTk7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715049743; c=relaxed/simple;
	bh=sXMDRnXjEyWbN4kbrw4E2xGP9/1ywgx/Smglf+ZwvTc=;
	h=To:Subject:From:Message-Id:Date; b=j6ims8W2GMxCRMF6L+vuRm+HwOga+3S/+xQC3j9DjSUYL1ZaxSQPkcrTD+16gGMjl+v+LMj72hYSIWwB4rnb8mq8OF5awHCNHOXiezYp9vcHcDOD5rfNZQlsxgJeCCGD0fMovYBkpwAlmj8Mm2+daeYbsTcNVkAvQefqcSC6sTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSNrCU5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSNrCU5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C38C116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715049742;
	bh=sXMDRnXjEyWbN4kbrw4E2xGP9/1ywgx/Smglf+ZwvTc=;
	h=To:Subject:From:Date:From;
	b=XSNrCU5NbR/jebVmg5AedFfONTRQyvoSzPCBiwy/I6OnfRJXb5GYtzs+TtgLnu4Rf
	 aSpxhjxCjaQK/C5jExX3wLPtUDxF77ui7syNrNdRNrbdFA9W2sOEJReN0pIHXAQIXe
	 x8zqJj0+k7EHgKFaoMAiKvFp+qHlUgibUId8EjFeB1LlwTQVQrR4pN7aeBDy0H01lv
	 aG0N6H/klbHJUd3L3ZB0DiRw2HSvCTETr/pycjJ/LRrh2dQHS+9lLK9oxfk6yhotG/
	 w2OuFI8oDzZSs7BTL8pWGcsQ0djnuHsfzHILJuzszitjizueaaKz1rHlt9wJNcmvzm
	 7uPHTa8uxEIHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF427C25B5C
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504974277.16339.10431834653220072055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4920e4d4776da495cf7e6b350c9f34d8b0dcdeba0d06aac919539a7df9bc5ad0
Date: Tue, 07 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715049742
