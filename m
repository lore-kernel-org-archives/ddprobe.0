Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414802DECA3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782689314; cv=none; b=u5J9VMXstJ9qgRs0O6qu5CC4AVCMJp3ceibsH6c0lcNNkIE0X6vUplWUHSxPs5uIid/LzuuUEf1eeTk+wlYyxP2VVVAeHhiWrJQg8/pHBoYqF31XvyL0oadPWK+qYQa8TqTtem+5F4C1NCMVSMV9ajzvnbXf6rT08Cu+bR1X7Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782689314; c=relaxed/simple;
	bh=o1k9hXIYjevXia0Fy+CaSOKwQSaSJnngOsS4dADt1iY=;
	h=To:Subject:From:Message-Id:Date; b=eZYcYf5M7DClACWLzEG1xgbJQfcVDBzQNLQYgzfZLEQFGD17UT3CHYwylNqivp+oRNQ7aWg7kUExizZKEE42TruksbkGEjNMyE3fMfmbXGneXz0/c9WhxwcA4OcKz5dDK+zdgYXhuwjpxbL/xtom/odxrBEug9jWRj1GVlWhKDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fsd9pkiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fsd9pkiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29B6C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782689313;
	bh=o1k9hXIYjevXia0Fy+CaSOKwQSaSJnngOsS4dADt1iY=;
	h=To:Subject:From:Date:From;
	b=Fsd9pkiV2Ql+S7aMGi+QBjAMFHlYQBK2RdFahEA4ETLjMRkC1XhoftU1iMkziJU9Y
	 48r9wyiEcgeVLI8k8lSPR/CaDm36pYMT2Yz8Um+F59+C+nv8rVJJQgt/amhOhhkZuF
	 3Ly0fu1gP/YxRp05HtfJ4eaNfRdMU+JPsuVSP5O3nDmv0/k6Na0HzpHu2n7QTkR8jt
	 M3XvM6sVjelJWxK7fNdeUwwM3XHelRQGCz5cBL9RPOG2CxwhBaqfp7zYQcxmYoZqXj
	 Zce8unkH58oVrWK4jxkIH/vaQA+aaNuJasrQdgndw8GvxtnXimXBBl3acRSXVMun8C
	 /yFO6enK7PKhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8101C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268931368.31729.10983333885212293938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0cab7fdc5de7a327b0b2dbb18bd1f62b9fc39930dfcced16cbb5e35662b143
Date: Sun, 28 Jun 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782689313
