Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1774E3597B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767392034; cv=none; b=Q8Rv2Bc/N/+k+/RQXcvpF0fLyQ1WKFwPJ3DIP4k9i1vxfmcjSqns045sNwCUzA1EpeWHVG7BKE+LtX+TPXyFT4GeX/mlvH7aVVm7SLoMJpMi0ncj0v2Ua6dKyqCwFzk1KrYjfMIiI41ZjEB2XFtAdgyh6el4TjLXYE1mKG8JrRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767392034; c=relaxed/simple;
	bh=h4jeQYDSKDS5pT/FJWG5yhGm+NbE2ml9FHposbQgQNo=;
	h=To:Subject:From:Message-Id:Date; b=JMjRhtHablNkEb02uc6qh3RZTiS3Tc0Pj61TEyM77mpPwusrIbWMVMEilVrP/q/9qQ2evfedmaDxF/M7yRS9a/pk2mxzEijxjcQHXltSXSEHe4E4pGKo/ZIpR0l4CsbUdlo9OuzUdlUsJpMiPQOHDFgoGH+B0xeSgoLRwbMoASs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwMDatvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwMDatvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B1CC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767392033;
	bh=h4jeQYDSKDS5pT/FJWG5yhGm+NbE2ml9FHposbQgQNo=;
	h=To:Subject:From:Date:From;
	b=jwMDatvc110+PEUMqJWnyilMq5Vy38xBM3KPJjK6dcznMH/knRqjM7I/wk+2Wnz3k
	 vEdOttx4Nw2gmeEA79mUXIDCA2xfXyuP3nnEAdH9CSd5v+XsKjCtojO75sh34rjkAu
	 PdBWGmXOzrEpkk0bf7OyEe6Zus/wjKO8TOUsrf+x4xq7/SDIKt3ZZSJUW7dMsGLhz1
	 bG0dstuX6wac6+AuGmqSj3ISx3SAcsEr/eqwLBpKAL2RNj2JZfsOrv2tRdgu92OaEx
	 z/pLRbElezXrfd5Fsjr0qr4No+lNStzrPwpw7fAM5MA5mm3lRf8JYq1kIbPSZbbXd/
	 QR/5oelxrBuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954FBFA3750
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739203357.8077.1307909135847446598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243a52d1dcbdde409b2c1508d5c78355363a9ebbae125c94ea2d84b48bfdb80a
Date: Fri, 02 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767392033
