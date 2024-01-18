Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55F924B42
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705585697; cv=none; b=esDl4YFBXzd9YIkOS/rBrJUubhnoISqkoIwLmiNogmQcKsSczWh0B4pCZIWY84uKnEXJne2dxsBm+D+ah3pRzT3D/6Mfk57Q2jg9VwqfeHJ5Xi/NADjNYuDrB7O9SlY/65yUIFSc/fV8T0GQHDTeev6PvxnFHCJrJDzT/CZ7MCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705585697; c=relaxed/simple;
	bh=2DvuzBo1SUXR9w1E5g3LELIuwE8bM2t62DRSmZXs7dM=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=RvWgsCZYjPvK8LGIX3H9GeA/K6hAgi2Di4r7zIdmY4+tZpl5033qh6xvmywNkvdwvwvI5az6N2LyCtBWpU3f1CT35n8bx458Z95a61RbARf1dwi4ZmWFZMXKfBf+Tiwq7Pn8eQ3DgJ/YY/i8XAeQElblBZdNVgAH91Gh3cJ6mbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjyMjGJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjyMjGJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A19AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705585696;
	bh=2DvuzBo1SUXR9w1E5g3LELIuwE8bM2t62DRSmZXs7dM=;
	h=To:Subject:From:Date:From;
	b=VjyMjGJ0tiwocIzE6GhVA4TouBY+d+7FTwiq/ah9cCri7zYxw+qFpRZiNE/r7uJYV
	 gEOie1ZMMC28C8dJgc4Ag9bvNtBKskD7G+YbqlMIRLmkpID6TXijucsVoPNF5EkQ82
	 Pf+2gRvao8lulVjzH6d7wv2ytvWKGRAX1QAWKaxw6wOp9DMgsI+/b+QLgVEA1Cy5Yl
	 OVP641EuyuGk0um115Zyi6KtDwqMgR5EiMftk1rT0Mqgsik2Pk9ZDFieoDj5EnA7bz
	 lFfTcYEmVUXe63ohRHthv7W9yFXHNvASmHUg7mJpRF6qAJAm95N9wqKy4XesB0nZnP
	 ReJjq4phSRiZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618C9C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170558569639.6508.2471663138042076207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a70dab93f3b2ece6874135ce8b1b056a4e11224ee81b04cc422dcf91d6fbc9
Date: Thu, 18 Jan 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705585696
