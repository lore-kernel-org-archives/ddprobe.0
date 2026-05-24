Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7257113B7AE
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779643954; cv=none; b=Ap9Yx2ieUKFMzcjPzlgCi0QJjxBQrA0l6QV4bFxV6VQdEngiEUVzcrGdhVh8DjafHqW8WK+1S82PxA9CaS+tZjyGyMVmO9AQPeZ33YR/sxfgNre1eQCsiJ+9KqqI9qaXlyhqGPOvsXYLCH1/am+fXG6nsllzIpLVnOuyGKsMHfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779643954; c=relaxed/simple;
	bh=3E+KV5WNiFu3Pky6i69RL4GH9AHWEnpDKJVskq7Y8Is=;
	h=To:Subject:From:Message-Id:Date; b=K4KzWCcwydS88MNfjtFejYmlTsnwXIf+clSsultCb/yzpCbJAPQnoPG7+3u3S/dS6IUUGoeT/CTrNCNewhnFrjMPf0IBC7zm/iisGo36HvT8O1/5kFhfclpQd9zmO14yROVuUZg86qn76PMpT+1DXeotBlt612+Oi8FdUVLnKvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seIvJgOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seIvJgOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD581C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779643953;
	bh=3E+KV5WNiFu3Pky6i69RL4GH9AHWEnpDKJVskq7Y8Is=;
	h=To:Subject:From:Date:From;
	b=seIvJgOYqV8Homg6WBOkoPCmkO3m7kHZdr+ukBBGjehjFYXQhluANLVMC4Y3/MVl9
	 qkTdiaZC4gFfQ2FBhRWxDsMEIGrfCMMHiRCiu/z4br7JtoQ36eGBBrKdbe6aROdzw0
	 bkJXoY9GB1On8uQTyf6rbXaBqIGA8URCzM7m7FmXqP6fPOtCsjlEq7XwGBANKI2l2M
	 PGhnPKTObrp1gGXf0uCe3QPhcotmZwa/f1wcGmDohZPYYdSk22R3PtflBF6kA23852
	 mjVRp5axLRvMnHB7bIBxwoUWzw4NHIyicZ8EQnSUbKc6HFFCZeEbH2dHJnoc/i38kS
	 tNCz1LuTU2Pxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBD0CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964395368.29062.9419327423645673597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f774930bb434510001a71b1dfebd9ac74503fa159cb43c9e2dd62c188068981
Date: Sun, 24 May 2026 17:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779643953
