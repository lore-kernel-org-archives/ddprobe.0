Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF7F2BEFF6
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792143634; cv=none; b=pnygDofakq8YHeZir7U8cUeJc2Wjyr21Eina82wyywE+TGmcmFokgmGnGd+iFAicdBBgVEVnS7LdMxr+tu/M11MFTMeQ+0TJLf+ho15xed9Lleo824kcyKRW2sQpOrLDabDhQrQXujsmetC59wZsTvmkP2K2c9zm4du1IAZV91A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792143634; c=relaxed/simple;
	bh=n6NSkmF6M4XJaa8N2Y0D6T5uB50ZGBBZqkbzOqy1Lig=;
	h=To:Subject:From:Message-Id:Date; b=cbjF+NDKtIJ9NpA54QLs2MWuf3RNv4gPMZ7sKnxJuK8WTM8lyOG6Q832DgmrCB/bbLASMWsiOT9kDxC4WlsL7u8RDV51bFR7srM+zXEB4B6LMAOPwXwirRzjzjn/ccO6ii49ulw6Knxpjn9mgXwnLXvq1gmNNi3LBhmOvzyvFaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQ2eLA5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQ2eLA5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D94C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792143633;
	bh=n6NSkmF6M4XJaa8N2Y0D6T5uB50ZGBBZqkbzOqy1Lig=;
	h=To:Subject:From:Date:From;
	b=kQ2eLA5IzJpu/drIE00TIWcGGtx9+geM3o91UmhHtIKfwf9mAkuzDcr17mOsh8ZLI
	 XXLrnX3XaYld/pDNvhSpW5XD0KWWsFXi3D7QDN8w51KpOJ2nxnCoENumqOnX6t4765
	 YRcxdgz564SwsjTFi3OtkJ+dyMYKai6r5ggl100YXzonpkTB6t50H6+mbrN3XUaAGx
	 81rRbU8KardDm0dLTi1XgPugm9mv5e6jPtnRitzELJAhYhoJFkM1B37jUFi1iCZexQ
	 sS/IdkuMiigppV1c8MxNcAc04vMhnxJk3gsHptxncIYlgzJELaU9QMatMChXMV8Fx5
	 0LXZkJQhS3HIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBD3CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214363373.19414.17945082683629006145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa2a540e8b9b359ffb278717c6ca422311aabef80a9f201238c496414ae1e84
Date: Fri, 16 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792143633
