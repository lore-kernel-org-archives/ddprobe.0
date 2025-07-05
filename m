Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F97424B26
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751683794; cv=none; b=Qrx0jgGb3DU9yHTkvDibtHOEIEarrp8jXCtcbZ6+tUJgJij4neoDDIHaI5Zzhe88m1PAMlyuDRK1cqEo7H2YrbNyZJTQwk6YtRh+R9CizqlYpFArdMsAX1X1OhjBolfxJGArtr9f6G9kaV4Ns6JDAGg1UrFDbYiAuNspMR4+IAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751683794; c=relaxed/simple;
	bh=GZTgptoJOxWPyawAQRcQPpPyE8XGE9RDXPxCZZSc8T8=;
	h=To:Subject:From:Message-Id:Date; b=dlkQEFzouf5ev9RZ0Y+chtc2v8x8l29dGscLARhaf8hQr3oT/R1kK6PwbGkliMDmGqHB6fZu85UMzsLBkMMfHMThMZ4RWaQwYm6rNDf17w6TtBEKolbAtWhXOx49fsSCmRypkLScrZXTDPpINyCSEPkMHE6wugPAymQk8Au6Nqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dH8gPsht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dH8gPsht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB75C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751683793;
	bh=GZTgptoJOxWPyawAQRcQPpPyE8XGE9RDXPxCZZSc8T8=;
	h=To:Subject:From:Date:From;
	b=dH8gPshtGcF2L1VUss9QQ8DUF6L3o7Pa9rtpxvEJ7paW31dgtr/YwTBs1sr4Q021Y
	 9eyEvbDhvlQIT3LosxtFYFDo9bQn+0BuP/UWdKMn6zMh13c0cGU2kBZUI+R9QVz5Y3
	 ieUJ6ABDUP/ofl3VnbIt12z8SxnwlhuUKwVjHL5a83KSl86zduDYPL+Z1ooHPKRl8J
	 hSRtdy+1Q1NNmYzhVOvCVkD8VufqC5CdB/Uei9yZRDabEdqRcTSAopv4k0wAu9AsmQ
	 hAPyaBErWflMDJPsoukzMh2CGRyeLj6o8HAgVj5u2Yw9lI7CGy5T5OX1qniinqqV70
	 GsqDlRypwI+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65DC83F03
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168379357.30330.3522153319866249950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f21b5bae4c136485b87b1ba42bb7d9a14d2c35cb8a0705c49f68701dd46d5f8
Date: Sat, 05 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751683793
