Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3F5376F1
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747798794; cv=none; b=J2VAGPfPkXOnuMQtkSPdot3y0zvZ5f1HOrIZDguJKupXUiJl9QPvNYhFwo6Dpp4AfzYvQgehRska/wxWJkCg7SKBDuV1mqGNbSmr4tGVftrXBXdc7Sr1f38XzQKHEPjePoGPGomEXkEsv/2A+H8pl6LeSXhd/VaQitGmEZi+SiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747798794; c=relaxed/simple;
	bh=tKjGoMP/fm5xENba79ewDoXrp0XGfe1flnliGpRrmCo=;
	h=To:Subject:From:Message-Id:Date; b=tlwgFxNDBBTu6UK62iLVEZZko49jGS3hCCAhMWRfyCwsv3STS+Yv1/DwD+xI9ncYDMSTb5EqWGT/xZFHMwB+/6M41jBcnnxIk/0cz67YWorqYU4fAKE7Nntz5bLzyLQs4BsiQiVHZF+zY73OuhEv40hOx/05R5xQuIVS9VhaRPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxUhKOqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxUhKOqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A036CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747798793;
	bh=tKjGoMP/fm5xENba79ewDoXrp0XGfe1flnliGpRrmCo=;
	h=To:Subject:From:Date:From;
	b=nxUhKOqhoWKo0Kge5jV9/67JFcnYcO45UegPcboOobqzOTYTj83RRzhthnJvKYIIT
	 E8hy4Ae7ZzwdNw6kU/oBVnrhk21ZmDUs3te9SP2V9OjPd/AeyIWilSbvvjZmeoBafe
	 C4NAt0g408H3/mvMMSPkFbS4FKXzOpmefovbjc+tOqMDGuudKpoWs7sBQSivNeBoKh
	 APeZDm80YqwkBTasnWdXUGPQUEIbC5VwI60yxFPRNZyV6vCfDpLg3kuKB5t6Ib3034
	 /6jko0rvSwSPRIfe36d9doPmmmzJkr2HrNcU0jrw41E0VoHd94rNz94lJCwBiAi9bF
	 yLLyxDJKIJdFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E585C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779879357.20425.2734651036360956158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8e9a29b5869ac29f01058d63dc1f441bbfc8277d04a59712c0142557a95f50
Date: Wed, 21 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747798793
