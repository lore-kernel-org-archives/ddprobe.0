Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1918C17C211
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769648634; cv=none; b=qhl26k26hm1Uvp/uMHDsZptxwSuZ74+6BEKwToBZZMhoB1vjO8BttK6s0VzJSLhV/zVVVpKj79mOt75zzdG+KS1aApDIFMld160zotL+HRM2v0mO7IGbyfqWMUMfULE1WanVfimnxsl+4e0fdZm3inQWdlVzlvUhfUnAcqQGXJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769648634; c=relaxed/simple;
	bh=4ai6tCszxap9AGbp0v1nKJCQQ7kpCFqrnKnU/wZEsCg=;
	h=To:Subject:From:Message-Id:Date; b=rAQ8sF1aQFAkezgeqEj/BfwD7Ht7Fhg1wAcsxyRc+1XzI4TFX3jt4glQ22SLobEBReKxvzfCb+QxxyqfSyq2cK8Zwx+0U9XH5VVWFq7PGExzJY9EVs5I5KiSAx03I6PLbFJYKES2uaeEZhIOCMHF4SKKTxdCEyRCA75dg+zeP88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIBjsMXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIBjsMXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F490C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769648633;
	bh=4ai6tCszxap9AGbp0v1nKJCQQ7kpCFqrnKnU/wZEsCg=;
	h=To:Subject:From:Date:From;
	b=aIBjsMXau83T+Twt9QFmrR5UJjdewyjF/UISOKUHbyKHrv6rTG/kpFh9m7t4tRKyN
	 hycIQRzbeLQ65TVXrm6Jx1YFxYhSVhGO6S3O52NahTp8awD2YLKzkIG8HqOBMoxtzG
	 VdKdpnetcHvFptr5MXRUJ7txWZ/xVubaxA5bWuTri+50YORxN928FM7BW+9A1FIQb4
	 9X+RnOwndasPScfsMHTtDIQXj4rSzDr1afWtslxkwquOTq8b0A/IL39fOitt1gDec+
	 hBkyTwO9ooa6zknsy66mkbT4JlMlhVYC9mAI3am09YPoDgNAbv2Yh92Pv4r4kopYsM
	 byYw8mgoFQb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC0D46C01
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964863357.27531.12279832411927511194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6782fe6b585684cf7c6d5f943907b74d51316e6ef243155ac4eb66beb9bcfdc0
Date: Thu, 29 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769648633
