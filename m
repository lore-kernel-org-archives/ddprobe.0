Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4EF3D4127
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772649894; cv=none; b=egAlR/C2LXc4DxrKdXIpcoxiJhe+f/7n2J4UidKE2oXFGxR9rjf3PKjxBAAgDXBw/6WY4x+auIYQHOmIbwQ3Ev/d+4MZVRcs4wyEpI3t/xUu+qMirpsU2lwL2htG8q7N5HcBoDmCwY3jpeR82iwexw33c7LMX6fHpidf+WIcuoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772649894; c=relaxed/simple;
	bh=8fHF6y9m/BrEEuaQP6P/wOvV2sXclYyXM+yOQkUpRfA=;
	h=To:Subject:From:Message-Id:Date; b=P6m5rfWy1U6exVIntD2pwgHyjsCgyeSIzAxOBpOUfwV8BCU0ZXq6k/kG1oP07Qtq2ig99gqSwx8u3HRcy9mGUfa1ENfXBSaTXSdlZNBbL2c4CWATelAD2YZKqS+NZOZrXgcIKUyKT4U/R1tFsxNReGwE7fSxnCWLBscPHZf97nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dp9ktvyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dp9ktvyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60F1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772649893;
	bh=8fHF6y9m/BrEEuaQP6P/wOvV2sXclYyXM+yOQkUpRfA=;
	h=To:Subject:From:Date:From;
	b=Dp9ktvyjrmEx2rI1c/bOcVgcy2S4ZQJnnYFWhCjGr/LOMU/kwnY1UDST4dX1q1dlu
	 p9IuJiXcviOVSKh1Rr/lpVbGWRuC8qWglI9BDu547VNhbfUpCw24BptJQEClR+9sur
	 1aSbJGid1Eg20oWHClW5IIJJ9CWYPAsO0XwGH02Sx+ZcH5oWoo96kg/F7BZY54DzPg
	 4Re4yIkq6y5jN+yDPqjFcr9T65oXyulPWblT6tMyumxoDDC3pDDoORY2+0e8rNqQWg
	 Bn2Gm8eaV36HxLKjQiVJSOcl5Zq6pXDB2XbZ4M7OwoTnusU/VkXfS6ASagmd6LUPtr
	 DfxVZTv5cVFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB80EFCE39
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264989360.17296.3241395842136775886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af48a0bc266c87dd799fc6db67844926856524587372e17e0ab35bb304844859
Date: Wed, 04 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772649893
