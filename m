Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0D22DA757
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753364994; cv=none; b=WZ4UoreDcvxmoZyDdx67mKl5283llvGssBBcnbUUYshcO0OgiXlu0NkL30mtuPIGemAkf9VPyUOOEdRYBQBD6L8Ypg9cI1nI1+QK5YrhgcqRrMilyMMUVPO7Q44uZNlLqg6g0L7skuezgSaEY2QADTAQdAp1m4HLAAJ+9P9yZcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753364994; c=relaxed/simple;
	bh=jb/x+f7H1t7VvzOb3hPH5YStoBPuq3KTBkimrD+EUaI=;
	h=To:Subject:From:Message-Id:Date; b=ZARXugseCdiEuKHrPAMCxJy/ItDTSjvndP/UtL/XeMo0B2KW4A8vIaANpw+DWoGDyTP0YNwN5A58tkR4GntUW2EhzUfijiVryOHDJmnYSe7JhhzlJSxJ8cTCG17J4ez1UBpuX2xsVFCrdlPrT49aQRzH91SISAMNG/iubya2K7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzRkhZcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzRkhZcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB75C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753364993;
	bh=jb/x+f7H1t7VvzOb3hPH5YStoBPuq3KTBkimrD+EUaI=;
	h=To:Subject:From:Date:From;
	b=HzRkhZcQd+OQaHiHZClYPzAya6IyKqmzOUEvUlG0P+8qcNubYB+BpnWs7l+hfcp7o
	 dhr9T78oijAOtPH65OINsW4L/p3MVMFRoeEp+X/HXWLaqn742TwLsZcK40bf8fYUmL
	 LVIjotrIxp9rM6IQI4J1xi/HFZuX4W0FTRm1LqhTconac/T3T1woR1BLDX4Bj4B8lx
	 b5O6o811H+QTMptQ+dqJTSnZYEDDas1aGeH0IHhgoT6e7EOJZNBTPvKajZYLRzYwN3
	 D2I/cNn2IvCvAoOisdbyCeXMTDkgY90GI6kOAYHBGlS5H4f0W/Yz6Bh2qHdRgOtntz
	 +xjXREWw5qabQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3AC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336499357.30854.3161806834428218981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c2eaceb3841afa27636bda83a43343c37ec794f321400d21d1f44eadcf62a7
Date: Thu, 24 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753364993
