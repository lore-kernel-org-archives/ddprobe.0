Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CF73AA4E5
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773939293; cv=none; b=aYYt3nbUPomXc4j4DnXza0XIbU4x6bv37ULL/5PPyJcpIiQfLdV9uA41v5sfD//uZYCFcq++qmOecDbXlXq+rSRfEh7gZX/L3OCNFLWwOGEbXh/Q+8B7HrpAfH3t90hDcDv58hIJYabVr4fePTZRKG3m2COdvj+ZmmZE2lXEIrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773939293; c=relaxed/simple;
	bh=quq1QXADShH+cy2KxrBw1NIx+8AOKK9SC1trZNpEGMY=;
	h=To:Subject:From:Message-Id:Date; b=scW7elIuy+a0M9arGgEbAVVNVOVRir9OtQRGuYPKJMpT07dEn4X0PxHnMNSUJNluVsqkLJkZoGX6/ZiV+mjOKunN4rn60QV5qvQfoShSh9CVE7VL45xSt7oUsU0HNeow+QpD8pXBzYMkoXmadBNGp1BwaoMLYWKccZL9hKCToSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdCLXXgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdCLXXgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C752C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773939293;
	bh=quq1QXADShH+cy2KxrBw1NIx+8AOKK9SC1trZNpEGMY=;
	h=To:Subject:From:Date:From;
	b=rdCLXXgMV8m/TyxHFm5q25GRt6Xb1odKz8Wdxc4grjaCnADZBkjfD78TWWcSO/1Op
	 UI1MTUuMsMEKwELLSmVNgtMXri83ZjGlQdegIDCk0LteKOqfCa3FEFFWBxme4+lubs
	 RSciZGuyu7qO0NPATFvDobPIdI/BU3KgTHop6frB4xS/kQZW2uiDaEh/GfTvfpE1B3
	 yh0vfxwhxUMPtTuC5FD4sA86HakRFwer0uHT29VXvcxyyd2VVYWKFHksc61GrsVw7T
	 qpZIp/l499OJAzZRPNs3XLB6/1Y2p9u8Vr5dulGqpI7H0+idpznFQg5oyOcIjwJRJ+
	 xUPpBMheKLPvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4451090253
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393929357.9047.8655228986912053501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99dcc9e52e1b41f306bdc6838ec8afdc87ba9341d2333a2a0c0cbe493a56615
Date: Thu, 19 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773939293
