Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636EF2BDC1C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788918034; cv=none; b=D7J3+s52Eecd7mWkkmsNVRodwpCR5NSYHcU6ePA/icNwkL+5OpQ2Wm1t3RUZTGSO/oTY9ThT9HUSvwdtNttqsqHso8cmlYxzboaCAPzTMk1ozN6t3SdV8BktlreKb0Fnuh0A5oGmKz2iO8L1+ieifktmH67LtA3ijeBBVN6xhM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788918034; c=relaxed/simple;
	bh=kFkrsOfwIXiWnySLgm/KHG4ywF5Z5X24cmNFYBoIByE=;
	h=To:Subject:From:Message-Id:Date; b=DuDDYWZ4pCkMMNZC2AwQMqG0VB8V5HxydBq6CdP0xp9pTGoMCmHAIZK8WfEzrMnmFz/BpV0Ep11mlpYI00vOInTbKdfh0nGgIpGpcrlUYIJThAEpxDkMImfd4G9/x+DyS1+URwBiOIrZfa5uIEcg5sNlpIw3wiRtU/EQx468QG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKzKYMFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKzKYMFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB287C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788918033;
	bh=kFkrsOfwIXiWnySLgm/KHG4ywF5Z5X24cmNFYBoIByE=;
	h=To:Subject:From:Date:From;
	b=gKzKYMFaN+KOwrg4pZKy6Kuw84GA4OcxRZhnwaB/b/u0IpOT24/m8gSpWzDSJGkpe
	 DAr9VRPHJlU9FkXBgC3LLmDX9hRq1jMYpTan4+uPLAxmm+1gCxQ/22BMax7xaXEil6
	 SMBRJyF4FtCe0Hi97Nal2G8uO2YFOGS1ipVdcXPk1VOaJ0bPK6P8RuiRX7vbpiG7fD
	 +m1nMxDKHpfVuiDmX+4ejGp4kK5M6RgqNVL2VUClWmfo72NmannLa55reVtEVwMrdm
	 aIhGbP42G0kfWNsfpWKdhate0fuLA70BHX9tp+pJMzFtP5l5HI42gqWCUmyxMEjhfD
	 hkS6rurVg/cdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A961FC79FA1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891803368.10071.13248304861305191165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d55bfa79c0c9a7b009636bb64f4dd1367548a4e03d544d7f72bf90529276d30
Date: Wed, 09 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788918033
