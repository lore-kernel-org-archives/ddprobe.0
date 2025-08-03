Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BCA143748
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754226594; cv=none; b=h+fv0wsry0bnwIxw02Rc4kSGEb0sZ7HKNGFNXKVOtI/x0ooft1UlnOOvi+xbg4ODjOzoVtQt34nt/eUPn6kLSLfju4CxRpBtgIm1PnMDOnSG7Z3I7f1p/ttk0dcczpKGbHwrb9IOSehBS/BsOIqTHU9SRsUeaDWw4xa12+0MLS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754226594; c=relaxed/simple;
	bh=x9h7beyIQ9ACculSuJBxzEBUAp0VrouCAlQZqz8j0C4=;
	h=To:Subject:From:Message-Id:Date; b=hxEPBmXmnArX8NLHlpc9/ZaFVdehFQOE58aWbpr/0ekGJsH3J6SOEQiBzUjMCnXOc27PHgxmMbKbuX3oetFxMjyKT7C/giRfXi7hUoHMck3h0hPOJvMytqdzN6UYu5acvMBUsKfuo1f5wBZb2DsSBv2ikSlWLfid+R6HtC4JWkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0n5HReE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0n5HReE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4127C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754226593;
	bh=x9h7beyIQ9ACculSuJBxzEBUAp0VrouCAlQZqz8j0C4=;
	h=To:Subject:From:Date:From;
	b=A0n5HReEkyS4XeHsn6ew68t8zqGA8QtKCJuUNR2Bk3xeXcSWTCioJJi8eSnwGa+Gk
	 bIUxQtZMiPMeZERoMFQhZ8LBd1DBKz/LVwtrFUFrub+Ew46xGNZGZMVNtZDz2W1WbE
	 sNErPxuQ3Orf1Z0/GlwBV3Dhp2MBBWAXWNrnqPR6qKbOWO09prl0LOZu0RL49qDW6m
	 4Wpb0I60zPrfpCmSRVLKHlZSXA2R216uICs4kOL/1z8lElgeIsdouIlmFLQPmQsqHH
	 9jsGh8o2AvL+u3koAIhl0P4mGjbBDL3iPZNQRAcEs8ElU68a06YhMRmSLVjzp7MLoj
	 qA4JP3ZCN+P+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916CAC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422659357.31066.15941941101873447299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ce7a81f5dcc104ee9032295dde992cd05e66520965b49ab592f9028a0d090b
Date: Sun, 03 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754226593
