Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B588184
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727060154; cv=none; b=ZzsEl0utLC5jigyRvj8+BtP1qrggreQz3pbuZBIhID9b8kelCDO+nDDeAIZDUeFjJSXNXMkI6S83b6YxLHCrv1Lovn3giTKVvH9GFdqTNucDbjeO8l1mZfLeFqitGHDZIzx+9+MGmZckhEaK/qD2G+IMmPK3RGX+kfY6/zIhSHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727060154; c=relaxed/simple;
	bh=9FZjldRr+65I+RZpT8JDoYSETvu5xWCYsEI3KtEVzCA=;
	h=To:Subject:From:Message-Id:Date; b=HjLvzSjBN+ZjC+gUN9UElYU9aYugc3fbuJP0YRLV/IGzTqHyORXn1dw51oDwkS2lH8MZS0Y5ggO13vTGqJPkk56ovcXfbymy2YDR0S3BRPPtlvjFKexEkE2uADbi/Mw4SFrjd9Ow23Kvz5cuAmrxulLs6rfj9kNGDFrYyePpLNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNnZF8KS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNnZF8KS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ADCC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727060153;
	bh=9FZjldRr+65I+RZpT8JDoYSETvu5xWCYsEI3KtEVzCA=;
	h=To:Subject:From:Date:From;
	b=bNnZF8KSLWe+T8mRfnegEmPRMwe4t1JmUrl2IuZCOuyblWyxvrdiJqaDcbepz7WCJ
	 UAvrgWDfa3v0/5zjIj7il72OhFuH1deA78Ps/DUYH9FedAVz3AGBsl+m22ISsdqXP4
	 HEYMXcl/ec13xLcYM6dT5xEVQFVgXxHNI/2XwXyt/qSjT01KJAg4qoFLsx5kBp/0XV
	 +j5EH+K153CIOXEC7TaLsNa7f1Oys6Q0LZ529o70BIwL05i9PtW/FqZYawIStt3R1s
	 WGKXNefGaT59ifZqiVey8x0YR+bP19JeGQ7zx+lJLPTg77qwbWWoMocFchVGo3EC33
	 MEmtRIi1ksLMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA2CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172706015358.2804.3147461082733779010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ef7868a3fa98fc4a5c7e78c3d30a1bba81c16c5ea7e3068bf3a7f6656675f4
Date: Mon, 23 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727060153
