Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCE93B4EAB
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788552035; cv=none; b=Nxn9FTjb/N+YHHgpBGfBfw6/+8WXowVbS2YdIdcN30edd+QyfltxruFxfqLpqAgrpQYvFun7Bth9dQNW0ogJ6n5tCfWEnD1dwHnW51PaIOyyDyV1h/U3UO7EnLYPx59SLDHdilu0X45UbjrKHEAz+VER2hQbpmQbuc9wxNBSa8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788552035; c=relaxed/simple;
	bh=TH4fOiwcw/cNZ8B51romk6iKBa6lP9WZ53UdynA2pSo=;
	h=To:Subject:From:Message-Id:Date; b=ZclnO6572SwlGpn1Alh81GDbdGcIRwWPlt+xxDRAUTrVUM1InnbaP2c5MSLUiWqgzIMUmelBNY94hW10JsBbhfF4QxzQr2JAXPWXUB6Ve36G23yLAER3Jqlt9o3WRu4kwMXUvrmkPnfyJJBWROksyPttxJ5yOweJ9wCySPy5F9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uinjYevP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uinjYevP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D758AC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788552033;
	bh=TH4fOiwcw/cNZ8B51romk6iKBa6lP9WZ53UdynA2pSo=;
	h=To:Subject:From:Date:From;
	b=uinjYevPt5Kk2uGsn7PnREG9gtXX6iIqrz+4sFGQ6j7oNWjDh5NmQxOBrpNIpwkjT
	 EQohxzJt6BD+XaOXftK7xtERdH+msctPfT3PQ0JPY9oj1d9YAiWsn46Qs4esPtDxHa
	 fxAsqpuR/M69COGDkX4+Y1gnOGifR4hrrnpH66UNt7asmshy+/LaABiXCznSDr4OTo
	 dsslejrkqOfpn/DzWh8nArZdPwEPAezQbxsWpfBoNvWn34wB7aa5mOvR61qMaukl28
	 0QsWbpONz4edURGctvuGA+8103rUO8P9NQnM6WyRiPObZ8EM282dcz1yP9j8XN/YEf
	 hyg9WiDIM6xXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15F6C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855203371.15748.1254352061674402744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb4842954c1de2fef86fc4d3dea35c150e8ba60d0550bc4e7a557041edc66c8
Date: Fri, 04 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788552033
