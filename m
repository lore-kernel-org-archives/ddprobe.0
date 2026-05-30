Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C06B3D3B3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780100014; cv=none; b=I0AH+TxocomosJFAIQk7AhFnwKUa8Eb56H4jZAkq2lv1aM1yfL+P/WhBFTW4Ki1TrGNJ7REe6lnpBdLXh3gr4nAQb/Ms+FCSG3J/0f8lAw4ZbNFDPmIE9cxUNtFMIj/1eZ06UfiRQEO4ujUGjR8O5Q9VjWM+m38nApn6QBaOFL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780100014; c=relaxed/simple;
	bh=jkPArfIm+09C8XcfD5fwATSBzVX3q+kWyDznsY3ehDw=;
	h=To:Subject:From:Message-Id:Date; b=R04PDkXQEGiriyZGY2aQHndWBkWEjUk0zR8YG1Fv8+JyE6lVjrWDRTrGzsDb/3KCvzbKeXf33GU6hyBKuz4r8Zez/vs4blYiOP2hc2+5FqzjJo7LzOdorzLwRYMq/DmcAdr4DrOTBo2fywMMvzpJyKKvgPiaNwK8li2QhaQAz34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHu6MAZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHu6MAZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA121C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780100013;
	bh=jkPArfIm+09C8XcfD5fwATSBzVX3q+kWyDznsY3ehDw=;
	h=To:Subject:From:Date:From;
	b=hHu6MAZUh4sl9QGtfKrxIcr58nofnR1STn1EGp4DYW4qXmdWR9c7VjOxH3Ah4HhSA
	 xaz28bTEWgEsv2nr/Xs5/R4v+pvp8St8OYR+EyhyxR1JAigZSV/ZDUPj7ut9kNz13X
	 ETMgtKQRZ7XWdIiyEg2z/sEmwNI7U4ysrvYHpEwmXo/9/meiRQk/JL/qmgvRfOkECd
	 uUCOp8VLlueEHUHH5Ocop4RXm7lqGAo0Jt9WVXH3yphhcj+zXjfrpfv3V0zVqsiPHa
	 ARWxiGFmgyqvRN8p3wdKU1vCUT1zj3xVseUh+e8xfvndelFgS33sbmcnGX9rweIPBk
	 1tRoXYB0JrSig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED24CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 00:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010001369.27228.17929094813100223842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ba29959d0342383cb99b084277e54443eb41d477f2266c1426148f660e77b8
Date: Sat, 30 May 2026 00:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780100013
