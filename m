Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A04730CD82
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756247994; cv=none; b=qWXBa4UTyrIpzvcEK7RVTMwiD2KeEVB2MizyaXCcBvhbZUNVcpA15dENE8Yal4JWS/0Jz2VC8jLKntHdfXQ8chdZ8pLN/fKHTqgkdc4XgfLyyE3ok1+4Id8n+wRjj144zh46KieSzSheeZeJFYtz8kyNgu6kUhxFUSsKdx1ZKWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756247994; c=relaxed/simple;
	bh=h6vfBmsJANsBijyy2bkbf9FgtSqmQ1opluRzHDVGTh8=;
	h=To:Subject:From:Message-Id:Date; b=MQ+ns+ie6sYYV59dMchatkNcsZM83/XxPBA0eRa8rB7jVLWPTQ3PPutLk6W2ICCcpem3prjoo76IC1XEWjx1uVxM2hn0+g/CpOuGccBpxZLLtD/hQSCJskgaJMAMYILatxClA0OAPC+9KfkY4BeeELi+7+3MDqAS9x37lxXQnNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOpapQHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOpapQHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6798C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756247993;
	bh=h6vfBmsJANsBijyy2bkbf9FgtSqmQ1opluRzHDVGTh8=;
	h=To:Subject:From:Date:From;
	b=eOpapQHKhbOcIOsFtioAY5R0pp8pcxs8TmAuU+C7L2f2DQySN6IwKaCB6h3cXM/4f
	 +KNnykq8m9IQaTr8PgsDdHMg+O87yFpZ63/FLUfELu/7aG7F151G5bFg1tlitA5bzQ
	 p4gzaIwTLtHeMF7yPVUcSTfKJUpmW5g9aXpCt0ZRRQ0guJvzWwZOyLdlHz1cf2xnJ7
	 ZojqmMypJZpm/3uPnELwCmoO4f+bGLYYFyLsBFCiaZViOvMqC8/mbX0Ecu2oil9/jb
	 3o2fwHH7Or9T+sxGtwUBYLwAAQCkj073mf8MZbPiraPxYKerpZsblD4I+QJvCWshFM
	 cVFxR+sLkw2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F76CA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624799357.6593.3457404673688814026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9582446bd735cd9d74a301a7cf04122ff75b0e5bf6af6710ec2f0818d348394b
Date: Tue, 26 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756247993
