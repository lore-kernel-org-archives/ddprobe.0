Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52307BA53
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742615994; cv=none; b=poeXqRXbWdp7QuZcv4mD7FP/koREc7aQvS+xgUtmCuyJR1vQtrHCRTdr5tjjNYClLmz7MarB/ybD1KMf/ewvF6SWKck350YEsFq80WyzqznH4NFVxOEzV7NKUzPNL1up1uIW404nSvybF/X3GCFyMhiWd8/dcjC8YlEQDqSas9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742615994; c=relaxed/simple;
	bh=ZQqVgPBX6XbDlfC4XsY7eEnzAkUBnZ4mKFcUiRyu5wU=;
	h=To:Subject:From:Message-Id:Date; b=fYVwS/w6NMZ2+FWm6a8aIMqIzIEu8YfsZJx0UE3WIjxSNBMHs813rxKRHm1iAu/7BXxLqZwY9r0JPtD4iI7s8RiCgChoZEPpUSNbbHfrZgjFUdP1Jsgo7xxGPXIljEpWprHLBaM+FGwXW7+FAtOV1Sk037Xsz1s/RTap643tiPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SowrPXWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SowrPXWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5708C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742615993;
	bh=ZQqVgPBX6XbDlfC4XsY7eEnzAkUBnZ4mKFcUiRyu5wU=;
	h=To:Subject:From:Date:From;
	b=SowrPXWdiADUO041MOSjGVzxtWUcRRr/7xP1M9XoA0HQNV6yICjlpSaE6+uA1JtvM
	 9U/yJqbEmLzWus+YA6FNh1Wpk50lCJIQV6Rr7cEP887M57DUxBXYX0unj0YhBB1Cp8
	 xJDf9p2UmelFTXaZmrkIAEd5Emc2HV92Q27iIClU/2Sme7H9R36OBrRhv70UDudMln
	 ubami/Ei4+64JwnMLDGQKR4v6k2xAlx547Eudo52TnyzrA1TjEM5HFKHnydn6hKLtp
	 Y5B7JQkDuljmKRsofaAwxMAj9rapghJf79XUsUSBUQxx+sVGGuwxGNZqeHKaXCboMh
	 DJ7wpg6RNsgkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F225C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261599362.13804.6695579191055563921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5037c8e9dd007c2e8030bc6152ae647b46823a53dc7c0e2147e5823214b271
Date: Sat, 22 Mar 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742615993
