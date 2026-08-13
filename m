Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6E939A07B
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786642834; cv=none; b=KWz3dP19SEVHxU1rt3va/errVwTforM5L1MGxBn00qPPCmAHQIOzdK4fw/+WDfURaD6wIAinut2F/fbsKidulLfasnuh7ou7NfPZTtwxaRuGRp3ZJdBb7HVr3RyYBEIyepslSvdxmF5L31n1ns5ENFiBtSxbSsFCkvfkgCz8sOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786642834; c=relaxed/simple;
	bh=YSPxvt9+3EDsNdleCCOWzEnnhpdURCcqZVSRj9EPVKQ=;
	h=To:Subject:From:Message-Id:Date; b=BHX+8ltUYeONgEnOYaC6skK8P0N7W3+IRsEVZWDZVc3/AQDsRG6DQ6Lcao3EapEpnOO5ae74gTtWv9Erobcaj2BfD3Xf9NeyHVRP84wjQpiXHsku/598j2sFCae8gir07pvEZPQ9mv/Xe+NeMkX6Jtacph86EWMNfw1bAaCdQyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGr587r/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGr587r/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7A5C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786642833;
	bh=YSPxvt9+3EDsNdleCCOWzEnnhpdURCcqZVSRj9EPVKQ=;
	h=To:Subject:From:Date:From;
	b=vGr587r/PfmDRgsKdQV4WJnVXUk8oZ4DhdA4LboNd5oVA++c+0scn41cdYxOpTW7C
	 7Wabsb3GFx91dozRsaAM7fLA1+aJ+4rafxEFzMJEO/kkoQ0iqNok6Dbc502HAFoY1X
	 APfBTgftr+NIVzXDm40RIro2pMJrEOZrvSlQR7RyMprOZSPcNZtKL7NbwssUyuyFs4
	 R1pATgRpsniTtncRqCbjwC/LnTvTFO+33yhCUFKC7euAMEKPt5SdIQX3S+2QhXv3/X
	 Q0C2TKFguvdB8XM66iqze8HIPPGc2wtBx6E2RyrzSgZMRZ89Dgq4KkoWaGRgm9uo4X
	 ken2fQl5sig1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8695C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664283368.24159.14199722723169679977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd6e9518efbef253bda8d7df8edd83ce060e10a5a156762331b2a976a12a759
Date: Thu, 13 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786642833
