Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6312378F2B
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785085834; cv=none; b=YH6KNxGwjY9JSAFwrJfPcCXNSUDZfT56aZnuvTCrOPzGMLK0NIPezVQdGsPqQ9CfPxEc2fN0wTK0+OND8n5KqZIkZEBqQJ9arc9UPF84vmBR/JA3bcy3K/Btp64n8/xlw2fEwncDky94jzQ0d0mSiaOgjdK8HdNHJKf6erjLRCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785085834; c=relaxed/simple;
	bh=QBYlv3iK94xFoVOkymIkkHlPb81dyfWSHaI7yK3ilVc=;
	h=To:Subject:From:Message-Id:Date; b=jse5X2in+dceBVYoR/oAVacahFOIx1L8KOLzfatVgYxm1dtIvzOOLrWOB5EpPN6K0HkMmiVX64Nm+Kx/9CEPsT59voc/80fIknVvYFwi4cSQv30K59BU4/Be1mlGDdhhjRdI1ZbwnlyHTezh82J6cXbDNN1hkkcbtbtPpuKkTbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvLJWDCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvLJWDCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBD3C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785085833;
	bh=QBYlv3iK94xFoVOkymIkkHlPb81dyfWSHaI7yK3ilVc=;
	h=To:Subject:From:Date:From;
	b=RvLJWDCoNyV+68KHa0GXtMvRQdGa9qvx/vQyJTnbpHDPvBDrzTxPxpa/s6JZyt6E6
	 a6JjTBuf3JF8k2ezmxFm/WyBp+/hX6jlbflYGDcuag3D90pqjyR5GFZjcBkGJ15fRr
	 L5U8Zi57sdXi7xML8qLIOowwQOFxGJ9HbK6tcXPe+fmt4JAJO7oJtI+dMnx6ENJn1Q
	 PZAZDR5JacN0zw851TWMRfUDWXL2jwt+VUeWRsH2daQGFRDEwD/sJ9fiGI+Mui0MwI
	 ZqtnhRfSNGZujdlbeZjXwdttz5l1OkpHxCVQSNFLyguiHxbCdvOA4BMJUYmx7NKLgA
	 0XNVJLQtZ3KwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A855CC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508583368.8925.14259191711767957435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefcbed14d3d231c79b238ccbde7fbd83943fa770f0b57e49c6527bf03bb488a
Date: Sun, 26 Jul 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785085833
