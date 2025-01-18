Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE4E2913
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737242754; cv=none; b=He80sSP713Ny2plmshpFhr90iRSGsIDsErz4Oy7WMWsEMX1BCRxYGF8liuj9PL0aEe+LkASFacliOCuwOFPxIP/p1g07pRJoIyS2HGzfgyGaW6pOWwto+puBOn4AHc+dxOQMnnrPysw5hPyHukwfoYNLblDk7xfXiZGbv+hM97o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737242754; c=relaxed/simple;
	bh=BeMqXypWOkq4qVo4CxlaYJUs8f/XrY825m+ZkRibbD4=;
	h=To:Subject:From:Message-Id:Date; b=HjcmX7dsvHCFWzBVqQQkrJcHb3TKumtbsoFfRvl0AhzH/SFLeO2A5LmoDGqwUioafHJSVbm0zPqWJeiKRE+6S8X9f0EtojLTVfrCOCvRadtykZPwRKgnzE3ZXqmZB6s2kloUnlh3OyTUrNaz2O1NCqgvvUq6Jhme65DSZq39kTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBbMNxAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBbMNxAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB304C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737242753;
	bh=BeMqXypWOkq4qVo4CxlaYJUs8f/XrY825m+ZkRibbD4=;
	h=To:Subject:From:Date:From;
	b=lBbMNxAvEDhGYoarZccE7B9GyXLhq3iTBTsmYz99I9kvahqx15R5oZ6mRzPkWeJXa
	 LDxCMRDosGAf85KdO3xUDS6PHclaxQTuwtMs1DWDtKrKbremWeLK59Nt6DL6diUI6B
	 zqR+1XS7baG4RfaFXai1pItkmHy0CnKsK4t3BK1LtT8FApMC1skuuweVBOS1YZfNO2
	 fTcTi1xLOgXgFodS5eS9ZI/8+KVGbwoyI+bz/hjCh/9MKizTXEwvhCZLZ6nHjY2uWN
	 gNCsb0gao2moCCCW1GcJqEhheFDLtiolz5EEp6UzwVY2l+lsZceZYDrEbGqxlsbm2O
	 IeGClab7ZBhKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C37C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173724275361.405.10147787155850481568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c7ebab9eab6dc638d4110e156704235c6bdc26d4544f5ea27eaecd4309d192
Date: Sat, 18 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737242753
