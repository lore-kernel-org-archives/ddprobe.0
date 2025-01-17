Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380581AA1C9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737150354; cv=none; b=TGi94giuNCnhn5VcAs9ldYkQj09coa2CV15JmrDnKC/k4HDRopXuujyjYaqGCc57t74YfslPopF5U5ZrRPKKN1GeiqqoKVEQx9uPaFfxGjYcNClSCLuuBguLkRhOduB7iMk31NFPKL+r147oxCDEbLNP0D0/Z1ajVH9/ohDT484=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737150354; c=relaxed/simple;
	bh=+l4MH8Y5wiTkSE1GAZXx1qW2Vh5TTI7qC5i6ao4kSic=;
	h=To:Subject:From:Message-Id:Date; b=JwNqr9pZ/XhRQK11fRb6zsgWkL50rboLltM4B5debA12b555Ozx31d9tFjIBW4hjcD6XFfvVA4cvC9VMSMjq5BG4cTKVBGAk3JKbtDoBpoNm5swdOYd1EVmpnIfY2su3zV1UkrYYXOjB0BWmOywoAkpAa7A6Qs6Kd59bZ2vvg+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiFEDe/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiFEDe/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DD4C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737150353;
	bh=+l4MH8Y5wiTkSE1GAZXx1qW2Vh5TTI7qC5i6ao4kSic=;
	h=To:Subject:From:Date:From;
	b=TiFEDe/tm/IIWM1goKyH4iK/35mIo/JG8hu+POc4KfsV8aIim+DLnGcC5AwbFonxb
	 nKDn0uslxVCT1vwa5a4iqMU5PiOLLeEdcyRQIMnE4Ov86WugnqytYFykXtT8PFjJpS
	 SlH1a7MT3Hk7DPK3vh0QLQx4Y1nJkFPujxvosfTrDsKVnVIlulNUxgzN9it6eylqeY
	 oTq+uNNMNBx3iw7PgOhKFOL3JgJgjpfqeRUKGB+ITezuSPJELWTJbHNoYKzml3Y93V
	 Le5DTFvLFzGXbwmoTIgB2AxvZ1T5gCNSNKpFicY4VR3GpOAl9aW82fKe91fMyhBLUd
	 xfVlngCrrpLzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BB9C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173715035360.6078.659389517506889049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf71e868b30514ff8f938b905cc712f817caa885ff9e9212cba95a4ba989731e
Date: Fri, 17 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737150353
