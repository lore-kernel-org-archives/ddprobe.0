Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221592C08B6
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758089394; cv=none; b=p8ROsx86WthsSpVdEVucRiIY/QGm8bxTtLqMsd4lyRKknneBwwQ9fXVYVCGJRx3Oo+b2szafYvIU0oTNvcNJ4cbhb4PRFCa1DPdYOIBPTqft8u9mkPYlix3/hZjJGVUUuaK/iRatA/1a9ugyuZlj/I0/llAoL35D/1g0wyE6i4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758089394; c=relaxed/simple;
	bh=NLu3RFJPvudcrWmzPlNonocJRryXAfBg2seeGl+dXiU=;
	h=To:Subject:From:Message-Id:Date; b=rYQS5NGxu3MqthNT0chm3eOvUmdJyM+XAZMlbduaj8XzY8tDWTMkzWjKcjJ6xmHbxQvn4B2ADqnmqIyoTovv8WhBG/CPxBTsyAJI/nBMBcClvnyuc1oeNY+3gMmt0Ca9xukfNwf+LW/0/rF2wXdkmHZ7sPRM8h8KmNxFBho+fSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+HZAoj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+HZAoj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3DEC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758089393;
	bh=NLu3RFJPvudcrWmzPlNonocJRryXAfBg2seeGl+dXiU=;
	h=To:Subject:From:Date:From;
	b=g+HZAoj0ovbkwBxePp/xToUinkzUREiKp2aKWiqPQDyQfljtfGKT1mmvM6dwcHD38
	 eG23GAlnfOJJOfSc3n6w/YQQktC2IpsDzFNobjw5L+uIQRmHGKxFr173DYQwkkpNk3
	 uS3CSe1hE3uzjbws4M29iSTjaF0Kz+MAZDalrbV0FV/Xb7QXMQ9f7AalJvRD1SsrfK
	 djjz0QHn+9K/jewZClKy+RaXNsWRjdZImRB6IPXoLRcQRtp5Zz8RePzcD9Gm59v/DV
	 Xld1UoVxsdf1Fe3rd7+MXMyHAMi4CHpL/oXd+PkAJZAmG8cZY1SNBG6v5O4ywZWIBt
	 xBWBGgqM4xOsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC67CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808939357.14914.13858305605631472137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1777d55914a4b1dd0e4f7904ac0d56db98077efb88ca5fe01ad66e83bbaaff
Date: Wed, 17 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758089393
