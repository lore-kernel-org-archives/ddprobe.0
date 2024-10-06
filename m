Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4533019A
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728174354; cv=none; b=RD7CKaPudOlooyVUDen1aXHquu58OO8/lLHAOhA45Ll5rK9IOIuYzPSY+HwzV27LRKJptUTXuQPMzbpWuJ2QrdR9K93QN4/M154GYM3HWUxAET1ch2KB8WLgOHjJ1Euzziso6797Le++rxuTBFq+HcLvTOVDvbYNP/xD87G+1pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728174354; c=relaxed/simple;
	bh=9GHQanbTpjvgtB8SQXvqRq08YYeym6MXtm9kbu3VQP0=;
	h=To:Subject:From:Message-Id:Date; b=RdnYa83oKcWH4tDct1H062TBwUBXYMIAO2HlGp5iHfaW7sQFtRUj1U3MmBm80HEcHrKtbVWHnJgPS9P/Cwpm3TkfjDbeq+Gg1iAr4zKG4anhTbLvlwvAEOtu5ZhpGUkOxtBhL/X7YzmRPAb4ocXOh4NDd1vrGfvYaextD/tR4qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjGX3m/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjGX3m/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE68C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728174353;
	bh=9GHQanbTpjvgtB8SQXvqRq08YYeym6MXtm9kbu3VQP0=;
	h=To:Subject:From:Date:From;
	b=cjGX3m/URx9hXJ6/hzknMakMMLX3y4cCCjoeJNuRKpNCL/zSLFt5Eyx8MrDkzrdEM
	 KGsrmQYpatnXZCNNaGpMLMcHdPwsRtbVDIf0e2IHhey+wbqVgsi/4eujmOgk7LkyqQ
	 dffxhOA2XJWtiMtJeXeA5ay51v1l8ewlVy7tkhcqWbLOTWP/Deno8p7GQQsttkjbjK
	 WeHC+XdKqojeb7958f7tNB+hn4clmOGT5HEkZPpk2b49cTyGiTKiX8mM3EA0VGspIK
	 ICyOM2IJ3BkB0cvyJjabhm4k1ODpP+Du1Fk4wIFdS8ZWYzfaGgo1SvOGBI/BIlQ8ZI
	 rVEcsKq7gHsrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0635CFB421
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172817435363.11774.14238092280969442163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2834ba2b3748b0a1bcc489415c0a0271177d1446ae9ab9e853bcc4c801fb7c
Date: Sun, 06 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728174353
