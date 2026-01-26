Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2351130AD02
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769467434; cv=none; b=hDwu3PRAei176KSCOYnRYI9eMPRPFj8xZLRSn2QggSEZfWexijNmwbvhpntMOh8WinclcLYxGc54GD1VIpEABk+5oEqZTmILZkdSi+0yCwrXjGjR6qXQrF0MWnOe8w4gPD3xrkvPp9u3uoa8dpJU+Zngq0whscrGc6WFFK32Aj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769467434; c=relaxed/simple;
	bh=ZmXsclqItP7cBBPKxbeOY6dd7pnw4kvRK7xMUmb3/4s=;
	h=To:Subject:From:Message-Id:Date; b=BNcmtRcVb+l7wLithlVY10CRFLJPWss2AHuypQb4D1BsoSjBa843XyNWqidktfMYwjGrQD8NStVi9x4Gw8VoUtw3ilcDqV9y6YtFPW3Bf1FrqQrt1gF+m8miSz58echiod6YGC5JbM7Xqw45+sGdG9olaCOLRkExffjaFB5v6PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aht9eEIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aht9eEIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE44CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769467433;
	bh=ZmXsclqItP7cBBPKxbeOY6dd7pnw4kvRK7xMUmb3/4s=;
	h=To:Subject:From:Date:From;
	b=aht9eEITJ1/zImmoFOSL4DALoOBRVdYqqElvehXkFcK3eBWmCKaL0mS4cU1SkSQ4s
	 lZJsneP/3MF7qwwAauQhL8HRStCMbjnFY8Wj6W3oC+4bCnnw1OprborYIo4bH/FDzX
	 bXKEN5HALcFGL1Qi4cTrn2nkEdW+h76SFq6gWyVKBASoJ0XYc4kdZqGi11RCjzApPK
	 q9LJGi5g+Rc+4zYEFfB3S5aUKf+xKWVVlxNZF3d05dg9fY81gJnm1QhyzuKHSUr6ZT
	 MmaW7eA+m980yEcucLGQ/jZoGL09ZLMDOFMdoSQEMjGRrnj9GFvCUjmD3zrucDO9lR
	 14Bz0tS9jcReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A48D19523
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946743359.25012.6343160963072792510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8929ed4c3de04f3d9572783266e0d2d7f16252133dbef217bdee76ee55e02342
Date: Mon, 26 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769467433
