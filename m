Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BA0333729
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771963494; cv=none; b=du4qELgxh1+3YTbTf3hEn6zf1Q/8/kB3hqoCHY1Xwu1cH7xQyknOgSjthvfZmDrjfAJXRCqLnR3+4LKuUalD8tycmIE0lGyFNF5/RW5Iru/a283yJsQuJqfnKY8BIqd8dCMJ/Udnc8l5oBXb9LfxYQtjFqYDPCXQ8ThxFx2QHyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771963494; c=relaxed/simple;
	bh=txu+kYRRB1t/XaPV6sogNRh1WchoW/LHDQlERCqQOwQ=;
	h=To:Subject:From:Message-Id:Date; b=L1I0+QBqJ9v97coi1CkEW9BExPKrdPMyVpctm3vwbFxsNeS4CeYjU/L2czvhTKT4BRe11l/F6pwRP1a3+c+fJlB5VQpQ43YCdrFN/yC2ZlC2fJhCfx6AW1LyYPQ0RejF4hQGi9DwE0e8r/dzDeFioLfNBzkFmDNkqtmBrwjDp/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7v2gli7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7v2gli7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF3C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771963493;
	bh=txu+kYRRB1t/XaPV6sogNRh1WchoW/LHDQlERCqQOwQ=;
	h=To:Subject:From:Date:From;
	b=f7v2gli7yo7v8YF2Vx+JQxWSMnJ8hL2HOrbSIrbt5boPCE+sEJ+JDV1tgCswI4EWs
	 PZuwVtyNoXzitKndb1akSG4qApSuvaIPR77bbKxNyIb0D6DewsHWPcjsRjL09F39LO
	 ZoNwzZBmbDFNBxlWwxZlog9y2aHh/QMbyUocIcvGKnzwxaGR+lgGlsY20Y2jJ/nVkf
	 eaGBfY0j3nD+nGeXctBGyrX03bq3BK88B3am44myh1GCUYehYwbcgriy9wuGfFipym
	 JzhTffTxVP8lI8pOwuwjhxgUqH8Vk7nbVovm43BuUsnHu1WByfIbap29IOdkaWLkcQ
	 KID6Ux3E/TU/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947D5F4BB7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196349359.28722.573320629666250004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b883f79a579ad1f2c30fb7a725081452f994218f150f9a2d347663bc6d6d926d
Date: Tue, 24 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771963493
