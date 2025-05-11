Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FAAF9E6
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746955194; cv=none; b=NG16O+MGcGhrlwQfD59hjHWzLubTUJ6t6x+6r949/VXN4I2uhezi4p19a7674yzGPNAf4Qvt/mzLTmk83tMAqbxpio2lhoWkSiGzhgQ6Fq4wNoK46ajR4ZqC7gXihVD/BEKgLbOCdGNqwCVLol7HVrcX6jOjQm0WL8pdBoQY2p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746955194; c=relaxed/simple;
	bh=589S3SoHLVtNRLnc4jXBcE3kSOFJO/rk1Wdng5aOjlw=;
	h=To:Subject:From:Message-Id:Date; b=BoP3tSIPUp4BSO2toVv3Ri4L2QWFf9lZYKuQqaRFcul69UdlL8r0VsnXLbjK5/e9Htv62yAPWXsbqwNh9Qnu0FLQOMVRKjo1Mvom4BJVQ03UkiiQ1XB2dFhxVUer4UaQeAlkfsV0xa4bx49lwkqF3LlpMVFXcr2pjjhK5DKGSxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pm/zMf+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pm/zMf+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77AAC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746955193;
	bh=589S3SoHLVtNRLnc4jXBcE3kSOFJO/rk1Wdng5aOjlw=;
	h=To:Subject:From:Date:From;
	b=Pm/zMf+KWx11VJ/fmwHxvYW+E9ght28D/ZM+xbab9AiBydj4/qGJmDOUuzJN/6Wit
	 QpfrqbpjizPsHyDfFRkRE4zgUcVaUMrn4fHT5WNptIsiFEMWy9OWSKNTzIcpmHawNf
	 VHxMz0hilCNQRXikkq8E4x9Z9i50IyAEnyyuCjxLoYio4UUvydLHaxLmxpIwEsmgO4
	 65X5nWf7dfA1BGWupfJBk0gS8HVn7wvzvPArGLM5RFbCHqVh6Bk7bBumZp/4CRB/mt
	 UG+IBnZ+cCpncGsqBn166/HrhCwG6BKUeS2DJFvqmoZkncPnpS7pseIvhCIxByFLrv
	 9DYxWdqPgLCmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95347C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695519357.20060.10520174209260363947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfdbf9775eeb4ae0862625e74a356dd47109d14b34baacf11547aba730d9ffe
Date: Sun, 11 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746955193
