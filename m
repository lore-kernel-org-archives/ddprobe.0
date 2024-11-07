Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEC41E25ED
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730973954; cv=none; b=KxTBXgS2WeTqF7L3mM+srzsIIYmRP+5q6qdXPToLpDxE1BnzTVPNKLcUQ4pVeOCx5+gDwTt+MaQUOQBECSceUH0YfbNhrpmmiRCspEIfz1HY4b/7H7EDamnl4IaLnbcrBMrgQwPKnS9uJ0EGVwATu8U7nye3hT5xefLNUZp37Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730973954; c=relaxed/simple;
	bh=VY0Nxp2lCclqbzhv9Q+ngoyoPco7EB+MDWBUHwojU2Q=;
	h=To:Subject:From:Message-Id:Date; b=Cvb+c3bPdw7cdIfhTV4d+XQAiX/lmeaNqgFDeEhyhfZVux4Sf5IGAOiREsA2dv262MTQuWJq5znLUpV0MFeLDTdKWIIgtAQ/Kv3wXFBYzB1jluq3yPrE7mL7Hxm/qqMM/Cx85jdIJ1WDzcsYmbzTcp7uoJtKs4jds1hl299iQJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/k6S/nB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/k6S/nB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E1FC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730973953;
	bh=VY0Nxp2lCclqbzhv9Q+ngoyoPco7EB+MDWBUHwojU2Q=;
	h=To:Subject:From:Date:From;
	b=U/k6S/nBsZkqOjv+GTYyolRfQCN/dyz7SvX4304zPdKy0i83bhZn5zCygS2rvNm6Y
	 wpdcLMnl331h9x183Gnso+HEM1fs+SuEW/n1xhbMnBvL37wIp4voe8euGTYlLHMhmu
	 M/rczhxeA14nqa5ZkoXbdGUXb2mnWFtNR5z6122wE6s+P4x3jCib1/4e4COfc1jFJG
	 Xk4+r6+4F3y5OGztfsuCQgH+5HrijO8QXBaJp2fYUVkzT5vv/P9QsdYuQSPi9wSJjB
	 2uYbODNBsMx/+9gWcBzqJh9ARRddQiL5/DHe/LxyTEvrEG/MQzwxy1uHNI928O3YlY
	 S21Lyi3qx4cWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E2AD5AE7C
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173097395358.27571.7518921528148674744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6668c04b0e97df09b97846040d2627d571bac6d0ccd445acd1c189588a8b9a
Date: Thu, 07 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730973953
