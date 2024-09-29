Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2967D13B580
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727594154; cv=none; b=GnSmIBos6nqbTlNWjyxkTjBciLwq2FP7Q1MUdepdHDw7XD/OGEYMVl2ce+Ch2Dh0QmRYt7h2amJzt2oYFKLnbh8XbEwwDWDOqldV/1HMULDVTSlAUljkCl+B6RrjkTxTBF2suQuH+uvv4rQt+gmn0sDNv9YHaFgNn4wMJ+uFfxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727594154; c=relaxed/simple;
	bh=2FY3gO17dOn4Q+YlngdOMiosYKKJ0egjTpmWbHLS/Bc=;
	h=To:Subject:From:Message-Id:Date; b=P1acWlHYbhHHYwizLVmIRPOc+eppIf4rjxrrKMHOTazGzDzrsY/waM0rcb6Tb7XG12A8um5Zb4aX45rmWKlwHuUKa9fSLAVXikyqxzkrci3VwAXNU4ZCoYV5W+GcwpT2j//UaDn5+CKVN8jsFQQe37DfQDWrrTfG6OnNP+quduA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JstDLL4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JstDLL4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B37C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727594153;
	bh=2FY3gO17dOn4Q+YlngdOMiosYKKJ0egjTpmWbHLS/Bc=;
	h=To:Subject:From:Date:From;
	b=JstDLL4ANcVFnSweIts+2RzSOmZA4t0PA9CNlRDho5JpS4uvWhPfHq421ZFSOUVsU
	 paCv2skHoGdfXTstsN0smKDGvu87KtCNnI+JLh9j9lkQg9jBkyIraP4PSbf6+/u+YU
	 AXTxoawXNmOO9VODs1VxszHMnXlRJIbIOKHAkhaMSh3nWHWFmPyctu7RbiO6xaGNKu
	 ITpwPCaIxyXNM7U2S07CnTHeD4MYEIccIsOedJp0CBCmEQOXAn48REarDO7tJhv2/S
	 vNc3DD54uAoo5jKCrP65mZusqfLYnLfCVXQ5LNx29HPyla1FY5fLvPh7pVkyXdOd37
	 iif3EoRFYY0sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D0CCF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759415362.28669.12483503383079382452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6afa0f61895cdf8d40996504e0ab92175dbe34901901b9ecf5d3a280edb5c2
Date: Sun, 29 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727594153
