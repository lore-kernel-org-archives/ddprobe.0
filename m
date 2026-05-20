Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3AA29D291
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779291034; cv=none; b=PiNx5JHLd0vFc0YoX4FO72vgzi6nYQkdHkIaYgdpnIV3WOVBN1D4oIMaVr02om+YhLQVK4qU0gvtCdbNferEv0ia0xJqMQxnonbbdlrioJin7qQQXjHjL23RjOUfT89XGXY3eaSmZyAhDA/Ii1FNZc3vNn7goXTmKW9NQTAiYdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779291034; c=relaxed/simple;
	bh=pqSobWo02ppaT9vYRDaWmN9IOjVufJzq7/8cLMH8cBM=;
	h=To:Subject:From:Message-Id:Date; b=SiTopgbkM/MM/7O7TEHsNbHrm1n6sMRnvwa/a5U4LGWCcmQuQJ8Gi9FVVizlJVKJtuyYA5RKHf3XkOOqKWDJvZKMugZgf+XUfDpXJiavuvhWBH33K5bQWsWeKLFkV+RDlMr0fzcvwjUL5oYVaVeCE5Uvqo5Fqn6CfqR/7v/n9RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gP3D963r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gP3D963r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C1EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779291033;
	bh=pqSobWo02ppaT9vYRDaWmN9IOjVufJzq7/8cLMH8cBM=;
	h=To:Subject:From:Date:From;
	b=gP3D963rNaYign+332/tRAeSqdW0cgXjONZPtlDf4UStQLegnzNOeMVXBJ/oAbVM9
	 i0snWIQnamqwho76E8GyUH2mYKRPho5KUXhbVwzTvrnmoIORv/YfotxeTXHk5LXIye
	 NPBrAe43GLj7zqVN3xZw2tPB8v6P3tvISSGSCseHASfbdyoucOzpd+KuX1tEOoQK7A
	 CvIxECcsIsfo28iDvF3JBAL6HnR51NLeeoXXIiegnbmCKkzPOCGaJ6jl9gGDAaTTwh
	 HsnibbZW9rizte0kfnP7qukP/Fomli28rRRaFLjMjdNEZWpEd2Z11xHeuBjfimlnQn
	 WxO6FxbFAaEvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE55DCD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929103369.17212.14288444989442092914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dfdcdf9992d152c8cd927e7ba08d0cb8b3fee954cf38bef3ed7a8d870b96fce
Date: Wed, 20 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779291033
