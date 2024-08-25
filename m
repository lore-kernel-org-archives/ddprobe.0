Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E15B8F62
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724558154; cv=none; b=Xsk2D5PJ2O6TP1La23p9HUwft49mSzOlRdzUY3bC6uYsFTUcm28qVrifT1LS3V8FBq5Vh81CYKO6duoj5YSEzmYCuSJacFUVlaEa7R3kFEVr+eDCvWDvP1JvrxiadtfZeQuNQ+0EAXoMgR4DQ5OeCvJKGAJxV9bMGGMgrqp/ELg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724558154; c=relaxed/simple;
	bh=SA7ruPfqulIxFxAgahLUw+ZFEcY/bRznPRu/SmpE8eo=;
	h=To:Subject:From:Message-Id:Date; b=OceUZtIPMAjteyKqjkBGRYFQZCjrNuiNDr4Sj/9JeLAi8oJi1RSSU6G1jRsdmad87LaqjyHWYYy6WJEyZdAI7Ri5r2jPr1WdlAP5R4Ce9c6Hu9wNmmPXhx69kDAzgvvDNeCGsudGrI7UJWBY2liPszM13FZjHhAwikOnM8Bsa/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aol1ILbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aol1ILbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BFAC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724558153;
	bh=SA7ruPfqulIxFxAgahLUw+ZFEcY/bRznPRu/SmpE8eo=;
	h=To:Subject:From:Date:From;
	b=Aol1ILbUbiMgHqsw+XDJjmvpxl2IiMTcnsOcaDlNorfxFTFCd/Ye86oHMULw5IOTi
	 FbiRTiOiLbLjSkzKQXcra7NZNvTuDYC/jh2SrEjADDlZIHVtAh2elode7y86n42ngz
	 +6z3rMcG/YqYxqcwA7/yJF7lAK+a8hemBI9Q9uGl05/jArrddCAD9jB3ggcieE5DgC
	 l1GrohYXMTT35iFiETSl7R7zaPY2z1jqdJj8T9lARdjfQ7h6l+WaPZT6BBSg9LXZlR
	 F4Hs7L7Std51iFYoNOGQGpbp5UAaKItI4tndeWgskw6Xc2xWaKr4aPgQMQ9BJrCLTO
	 ms1fpVMw/kxKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964DAC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172455815360.13545.5836388633384676258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf27f2159c43a6388c290bc4ecb6d268ff6b75dce4ef7f790b7c80368d85b78
Date: Sun, 25 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724558153
