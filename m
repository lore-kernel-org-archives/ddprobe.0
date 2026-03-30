Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E6222759C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774875894; cv=none; b=fDcYY+Hb5AuezKuBMPTsOn3sPO78N0Px4Ji71N4EPsnGJNlnWsdPhCHOobe1ImbQmLK9fYKla+HzP4+IS47fnnGWAVf0klzNn9tgVIhLzoFIcIsizrrw0YRoDad3oBElWp1SCGrriyV/JPaWjaZjJui+76Fo07x04JJQKqYLiXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774875894; c=relaxed/simple;
	bh=GHrMwVida0bqUtnau7s36MIKGsQA0UnzM0428pXD4WM=;
	h=To:Subject:From:Message-Id:Date; b=kHhCYAuV/MAgnR8ktkXg3sRBpBnmvWg6VghJtT4IVEibLTrOOKxk/Ifa0RAkRlli2AK4g5SflrOIHL4k0ZFzNWaLixTVqnKVV49iU1USwMxelmkyxAZ9tsGqaZT+gYbd4toyD3zVoeu/HdOURwC2pqmql+poz0xiMP8/CYx52vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ewo/SY5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ewo/SY5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB22FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774875893;
	bh=GHrMwVida0bqUtnau7s36MIKGsQA0UnzM0428pXD4WM=;
	h=To:Subject:From:Date:From;
	b=Ewo/SY5KJJbHcA5x/1RUi+rJNdQtCn94Dk9Ddkt4VXr/GuJpdxvnS/Mz07GbPhi8J
	 5RFAZdlO+sodTEbKdkCYp7K+pEsOfDRHuS9DmrmNjNOCGLhrlrhVuO5ZZnsVk3Jiat
	 dW0/sjCL84qdaFU9PX2Apl2x2CN7p/filb79N74LIgBNGzjbOu+ZU5fhmBiQ7KJs9p
	 Xm5D8bf32YLPch6eShGHqnK8Tb8rkDLNYvwKlu+tyweTl4GXnIBGc2rmWiIOA9veJb
	 26hhrkJ8DrZtGab6dalIRtxA2c6bl7ndRSHp43iFXGifj9dPnjz7mwR7JePl4oWCWg
	 EHpgyWS3/JI0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9993C10D14AD
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487589361.6932.14802032252620573487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e4ba4255514fbde198bc7b1599b95de395e09d0635b23c0d700ed6ff20e07b
Date: Mon, 30 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774875893
