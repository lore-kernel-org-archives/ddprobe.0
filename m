Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4372F3C3C
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743361794; cv=none; b=B5OvEjAuT7Xfph5X0/Hwhg/wJe7aIU8H4BjdF/Hj7rnLAuEqCN8PSQblNKAVBrH4/UFSMEbRKF1kY2Uu5K7A2pl9Wn+1fLwu/O96rgzzPyF1yujN6yxyvqHKg+a9SdRKnBZDcL2k5DLkNMJyFFg2Ry1m5z1b5B4B6vfLQoDd6jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743361794; c=relaxed/simple;
	bh=E8WZG79OG2rpfGUnocEBYmsAERPnw88brsWxNU/rr/M=;
	h=To:Subject:From:Message-Id:Date; b=Ghbg2RfNDbi9iaH7+Tayte7ZbV8aTyAf3ohIXoucSr9OxmrZzI0G+hikADzdRiW79bdEuhatUORMbQ9zvrpngsEkC4ZnOPL/g0LooI5m6XWhvsstijiK9TZhHQRJdMWPwF3pEOB5cIRbzmdzs60yw5/Y4hXMCS9MCeK+RKc+9zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhEJ9r3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhEJ9r3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6C9C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743361793;
	bh=E8WZG79OG2rpfGUnocEBYmsAERPnw88brsWxNU/rr/M=;
	h=To:Subject:From:Date:From;
	b=VhEJ9r3KB5vxjczzR0JueWG72gKYN8oW9u0IU6lsHxO3rXFLCWxwVp7GCh1Fr+m7d
	 CiuSl06yc8rfucJPLry/iqrts4bMKVdXE3f/ev31sQJ9Ks/DY+t5rmTqdxVczzss4A
	 nr+yDSy72USj8a3SXMi9aGBPLemIP3VwJ6fjt0TOKkRC49D2g47x4ZPSsieeFpml9I
	 3v6uy+zu5AlpRfgaeezjv5e4jXElBxpu079xfKIMiNaRkXFnGgMPoONOZNsbsIUtUZ
	 gfCg1z74XFE7xndunZU61t9p/7ECie1DaSYnjWbSass3e1+QrLBe79ksM9ZshZrrJ2
	 Jqwev1uNLtnKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95803C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336179359.14325.1172370328287842130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27641ae1a8e2c42ecbd73afe1f68f3b9a36a7100c424abf98123970505523ff3
Date: Sun, 30 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743361793
