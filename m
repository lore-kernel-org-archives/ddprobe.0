Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C53339719
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770828894; cv=none; b=a9ZpLSK2VOpaK75my9z1O1O45EqhOmv8hk9jk7ZXhHpm+E+BkeV8IfUCNXGL4gZpC20B2sJHRCbua/ruz2Fn74cQ0LmA0Z9mppJ8R8Li/+1nbpiIgafOyME6PYmvEW12HzFavGSsDqFuMMubFTJPeSDbamXI8giG85Rcria6hPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770828894; c=relaxed/simple;
	bh=xaHPQt4De4yLgzTh/K7BlDi+XWLfwZPEFOc6rAGBvWY=;
	h=To:Subject:From:Message-Id:Date; b=RsNb9wMPZ+ZxfbTDH7dm4xE0oLA1GrxMu7xBQOfJ9BKEtw1EdsNt9SgdOf2pvKRgGoD5iGZYp3WxdSjfkd0h77b03EQwBhKGuvRyx5ZlyZHCbOfWrymuuplrzDMsSHHkKvOfgPbNPnyrmVkU4fo+9Vh1VuA5rj73DUS11qcGp0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGNeEH+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGNeEH+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29549C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770828894;
	bh=xaHPQt4De4yLgzTh/K7BlDi+XWLfwZPEFOc6rAGBvWY=;
	h=To:Subject:From:Date:From;
	b=rGNeEH+Jcr7/Qjru5iXhJA4KmpGQ1+E6rn/7Z4S0Nuw7YNO67KClel54FYv74BCpJ
	 dREdmlP0ev7PNBLThv1GgDMd9/5qGHE33MRDRyDstFV0EOG4AJznL80Up3SWu8/apB
	 Dib1+iUW3bhfB1y1nbzUiNPDDRzaNoFgKA+fEyEVBlFPfGW1E5jGw3khTM0f0wgMnJ
	 Ua0Ut857NK0XEgbhl3mP3MACgRgoa1rN8+FMVS7KpiEi4NoV0cDVapq25zXKE1sV0B
	 OtcqlctHwz7Wjut4JE9lkOAcpJXlf0TR9oXiqUVzoKcemTtWH3EIG5ZhY0Ks9P+C6i
	 WUGLQgZgPfyyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3C23ECD6C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082889368.12428.1522511395358376204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa54bd35bcd63de6edc11b01c07928f7c5b68db3af95f01a1605246360d6ed8c
Date: Wed, 11 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770828893
