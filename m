Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5033624C2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782309454; cv=none; b=C66U6FDl5wElbyRE+K9KrhMNQhexSbGUTUcVw3JMG5bFx+Bl6yWcFbM1z9clF2qpbgTPCqCN01PdyX/9HA+UyICubv9N8wkZfMaQ20tiSkp7/4Z4Ya+BmyfIGPBpDxQC8IjUpvy+dBiq0UTx2zkbtVaDYwwZdyH10CX904o1b9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782309454; c=relaxed/simple;
	bh=PsVtgOylvLY3cQJwtQbOaVuDOqr9PNZJs41/kLGjEGo=;
	h=To:Subject:From:Message-Id:Date; b=XAjysh39NrpsN4VARg2/PNeRi6EJm+SYFd00URt8tRDMz3FT172zjo341mEzQf/U9vFDHG0DZOyBphhMzYSbL/XsZOowTPuIZAcvkMfAzzvpcHDInIu7LN2OxJsA5TRoaTsQOstFTffgnRu+y5agxy4OU7ttCMZODM6zFJzRUn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+bkstz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+bkstz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FCE5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782309454;
	bh=PsVtgOylvLY3cQJwtQbOaVuDOqr9PNZJs41/kLGjEGo=;
	h=To:Subject:From:Date:From;
	b=W+bkstz2d1+5XATuGQqxvC/PgudVlVwY5d+cd1GiacJK6d3GSEw2vDY0hdgohTQak
	 qPM0NpU3M6cv0cHMPady5KO8CAXgYsQbnDRtpYu6acbBOrdXoays2QoFJL+9+mlUyo
	 nSXDdu/+VC9ulOJT/ENTonAOrshecKuPiV5ViKev6JI6Gh+vH5WYUZCarepqOHfY7b
	 RKKr8L6CAr3v8kDFF/lsmRCrvVZ+myTUZ4fJoT3+FO+ndSo18d3ZHjsD/xBzMT4rb4
	 bljR1LF68VzLbh2S6zFv412N1HMuDa/ynrwOORsTzMHjGWmPxMnMMVKoFnU3rdTYJq
	 ReYGatJvl4E+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7857CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230945377.16912.7490775466917570652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb431b6044150a2a9e0a7502b553610bef4a549e0bf227f1f01413b8b3c0571
Date: Wed, 24 Jun 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782309453
