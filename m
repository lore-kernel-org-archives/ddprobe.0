Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A56E1A8413
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737146154; cv=none; b=IDvJLCM26VyPmPIQs4ho/RYSPXp8omoT9kene5NmptJtd3+fgllK0YqHySiiFZsiy2fle9SHcQ+EhBAC+bX/jIj1wk6+0fSeqMN3qLU6pNeXHLyi2B2+BOtkpoHqMiIcBhVegKahjkxFlOvbb9T9N72onQF0fK1nDruH49fS5cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737146154; c=relaxed/simple;
	bh=zitNc13KCy1IDHjPKvoNjp04Iswfk5a1LJojKK3+DaM=;
	h=To:Subject:From:Message-Id:Date; b=uk57+vYALvrDAPFQ74/wQGuZpGIrl9Zp3WAVXDRcmiGyV5Souc1HvoV/a/kPn6pyngAYqxi27a9kmmc61nC5B3YwGHMlRCyI99fkpPeKLzEH1xtx56cjS5oGa4xUNS/cEX0nm5tdc2Mf9kiG9HaDASCVdUEV67+2GnEB/8Kaa+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei5Vyt4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei5Vyt4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CD4C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737146153;
	bh=zitNc13KCy1IDHjPKvoNjp04Iswfk5a1LJojKK3+DaM=;
	h=To:Subject:From:Date:From;
	b=Ei5Vyt4Crpr3Vn0ak/31pQijrpgaDbZxN4qmbsa8D7mxX5d4pR6/+k9rQ8Si8j1fy
	 XOpe6GpzyqsBGhbhZeehagHQzDMLe1CwyoUX35ilJir7mTNLXYgw9dNO/EkWWdxPIb
	 wgAtNKmJnpUvcqYF/3lifx0Bt6TUPACSZjbUK0/FM3HLzugHA4T+Fgl3xz5fcw8D7n
	 QkU1XRLjqCdVtNngZX4Uvq/J6xc/5GXL1ciRMyF46G2ObPG+nRnlMPu/ZOak+hEDla
	 KwuwHy30+OkymGLsPQivO76zWokrySv5TnFcCIPmoWM1TLpbRPDd+0M/BaR/T/RUoI
	 q/Ef9seYaBXUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995FFC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714615361.24504.14711116420426520871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b03587af55d18f17c54649144b541e2abe9aad7cf5d61098d4cac877f7d94b7
Date: Fri, 17 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737146153
