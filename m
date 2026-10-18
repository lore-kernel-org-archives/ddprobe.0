Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3782D0C8F
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792318834; cv=none; b=EfLIhYD3990yNOthjyoNrGPeCDm/O3cXR4+5sJjUYEP6OxI4SqgK58D6mN3ZkmL3YI/Uv5J8eT/6gHtV8dpmcAJ0/xCUtC0z4Kh4n92Ch0MOFfYbaYd97oisQPG+S41CS4orgzWMlqdfUHp0cPWgEtTNh0dktAV5MHZHd4IEGGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792318834; c=relaxed/simple;
	bh=M9Ncg4n4I98pwGujy2O44Zvhlkabc61o4MPsY9uxrj8=;
	h=To:Subject:From:Message-Id:Date; b=qCRCzLgxsVUl8+JNJzsgqJmR2yYITccoFjtgQnPutIa61sHA8tmosJ4odHkyELCXhongYJt2Vg3g3WOoW5kN6wMeHZR+Z/8EeyZHRLB9kYhCfPT9Im45g+dFRMHhyA4FHOfeNE4GiDXh/t/nBSEYWY54ZmlnU6tR7WxNNrcALB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcAd1jD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcAd1jD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD64CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792318833;
	bh=M9Ncg4n4I98pwGujy2O44Zvhlkabc61o4MPsY9uxrj8=;
	h=To:Subject:From:Date:From;
	b=YcAd1jD5hUfENdxLEdEOJ40oWyLtcpX4HrE3j/oY92gxDzSOVzwFiIx7DZFAYl3s1
	 qJpSUjqQKIyGvVtDv8MKaRfYj4EknnGM0Jsw3loCiV8Eh1AlbUFM/ojEvcL1iUlQe5
	 O4ztPZCBB0b8XtyPpUiorZ8Rjv24Jwii4csVCeFion2VmTbuDe70/BascN4zaHBwT/
	 MENJWCG4Z8JPSaS3QsLo4QmWhBEfFcqGA39iysrSOVT6Sbe5+euFeVCgwGgATnbXe9
	 M+YtklouyUfTK1gGIXOtpBBOjZbluQbqeb/XjrsM/REsv0gvW3nch4bBiVVTBUNLL7
	 2yBcaEBuVcLiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA722CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231883369.12798.5402469567421261201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967b028ef17ece58a8e63f0755bd0d12223f0037ed778fd4a2a9da59023940de
Date: Sun, 18 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792318833
