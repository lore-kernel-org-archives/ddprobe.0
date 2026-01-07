Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAE113B293
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767827633; cv=none; b=Ol+eTUOYQt5qPCVz4ftSR2Ezg5xCspjppo5UGu9E2hnQO/ns2ULFAVFS4VuzH3sjKcJ9Ab8icyuw+Wh5r//SmaRJJTkbwdlYSzpFd5uTYMuORT0NAxiC+4G3cNckkwNZZXsuKx/3HOPoC//z+gnGJjxWysjGHXrSnE1wXxh1I2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767827633; c=relaxed/simple;
	bh=Qf4ykC3lKDox62qp4mXZfXlStMaaj1vbIc/A/5SmO1o=;
	h=To:Subject:From:Message-Id:Date; b=gPnE1GGydCP3tFMrQIZvIZpNak/xTb8YXqn+Lj2Q2V8qUR0aDIH8i/eTITqxb9A/RktC+Hb5rgedyAl4yZql/nsjJhEyI6VBuHWUAVzJ0b1rRFngL7ZW+jweVqVfXn4Irw/xv3VKtk3nlaRdfjOisGCiRtr16oalF/HQxBrfk8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlaYg/9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlaYg/9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9194C19422
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767827633;
	bh=Qf4ykC3lKDox62qp4mXZfXlStMaaj1vbIc/A/5SmO1o=;
	h=To:Subject:From:Date:From;
	b=MlaYg/9gpGYaCstL+HvtIiXxi12rm37+lM28Aao3KQYY8Hj3wBRa6OcN1rS5RkHPj
	 mm3Dv8NkNz3kYmgEhd3PuYMtDGWg/6YS4c0puu0zjl/E+K3wJJ7ws0//iUw4ny/Eev
	 Y2G78VPJ64J7oUyyXHQQLdG9J/76CrNrgnjfpOVDg7CNGE9yfb8aOOx3OLr/C7Wo/9
	 VyNJC4XmAXdSxswL2ED4KaJLxC2nS8t9Wp/UVu0F6fNVtT1LlYt7udUE9UDdnd2mMt
	 7vpxKT58TTU6LIQIWEWrFRxNOsWO+6Ymnr6/guKfOyVdyme+C5Z6Yi5b+bk0bcuPtc
	 UTSuQPs4cMt5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953CFD0D17D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782763360.23985.7320395541147315098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a26c574540473a022482b0afa281a239a95e65c0c6d8f00e2c5a222bae288c
Date: Wed, 07 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767827633
