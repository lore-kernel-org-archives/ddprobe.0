Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260201D5151
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772562294; cv=none; b=TS3WvzGhP4sc1E1z7vYdqI4B5B3HJ2BVmz13pkkDN/gMSA+jHID1E2Cd+4TuPED1fs/zPybtibGPSKI2890Q27lT0Jbgt8lWtj3VesJ1XSDp3mJp/BzrX7PSM/3fv/ukb47qTegdgNx6XcyWjWoJ9Rd2e698ugegUq6TLNZHyxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772562294; c=relaxed/simple;
	bh=UtD90OtDkyQmE/pf0aZv0QjOQuqcb3Pg+GYS1wO84Tg=;
	h=To:Subject:From:Message-Id:Date; b=RJRN+cRnY6HugCSVjuPS+ne+6UCZSvesjGgu3qbEfoGcPC7tJ/RFpsyFpmAz74CtIMBBSOeFV/9tayBfx8bDwlTKaszuQnEXT+/U/B9ScDyH8cIvmOZAaPQIipDk7q3hFTZTWM47VvXKVYxYDxpbFcPOFQaDse8sh/vT3aar2eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddueoIu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddueoIu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7218C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772562293;
	bh=UtD90OtDkyQmE/pf0aZv0QjOQuqcb3Pg+GYS1wO84Tg=;
	h=To:Subject:From:Date:From;
	b=ddueoIu9OcgtHgKhoHRFrMetEZol+lGeX30MaFxgD/0qprCXHvHlROgJ78tkvqP/A
	 zT81/+CYFYmLAcsoVgRM3ffhFw6E56WgjlaRa+X2WFDiZS2WoJEXj+nDDYLXSEjH1g
	 19FAHdvNTNmM+F9HFdB0O02kNQxWltRsyihfufv1XqKJ+IWkgojr+Q+L+dICMqm0JF
	 S8kgwFgqrtVg80TXwdUVBrq1SiKt9Yv9vEtJpNiWs/bFktap6niRLuZyfULdmut0TG
	 QdFtGAA2vlFZ7wOmeDATz9+VXBhk/54/bSPal0MMpGBO9hETGXxxhUQL61bY6TvRC3
	 UJEubqYdGbGZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94597EDEBE3
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256229359.27576.4117863227124326147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5223bdcfd543265009b96e341934623f6c9707672b5b97b0fde97f1c6418c9d1
Date: Tue, 03 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772562293
