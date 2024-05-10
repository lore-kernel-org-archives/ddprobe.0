Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C28838DE4
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715344343; cv=none; b=KP+kn6tAp5YfWoRKacAbv0dEsXJVCzcH4e9aq8zFibiMFNiLItC01TJDs4xvk2PDrHk9CFPNlbhj5R5BDccb+eG++tPZwdJj/TY6K5unfIeoKU2aXHtGUX9isogW40ASHWjFClreOpQTypV+K3AdgsZl4FNFmZshUpanWjn6s1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715344343; c=relaxed/simple;
	bh=uYAT1YmHeQmOSkCBSQOJOuKfkbs3NU1Kaq0ndN/qxdc=;
	h=To:Subject:From:Message-Id:Date; b=fi3Gdk83YdTF2kqeEzSNGkgKjYETfOZdMwBm0Qz3iVdXiPz8Rhs/IWZV2TdOmthu1QdU+YUm0Vt06qyTqPCnsrCfX9BBcwkt7BJhVtGqunMgFIkD8FCmRBWFYvN2x4JBqEoCOUomSS5SyGG21yX2lc//DXqnHDeNp2JJbFjptTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWBZsTq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWBZsTq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE551C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715344343;
	bh=uYAT1YmHeQmOSkCBSQOJOuKfkbs3NU1Kaq0ndN/qxdc=;
	h=To:Subject:From:Date:From;
	b=tWBZsTq5HGcMUbsmt325UBsa82YiVdrHGfigJN8YlBt5gHAxKx5SLosIM+Q5rEZen
	 BY9lksgc44iCFWbrRARGXLEH0hgDj59vC12LOhb50i+Gxtm6fUdJID/pkhp6SLs3YP
	 /GrSzM6h6CxENe1LGUzjaNvELBc2dOZn3Zyvx8cLFTEtfeeuCfmES4I34uczzblWeR
	 kDV9xk7qUUhG7exqb5wAVugXgzrLOq7+BbEJBWbFjqz1o5ywviuDQrRBA8h4womPGi
	 zSmmb0ToW9YWtEUCyj4Wln5SBkgw+p2M7SBgXwWleUkq8EL6MjCmZ3tEd8Odx7JuVQ
	 xHn4P2RQQP7Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFFACC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534434283.9498.5153731752553746645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ba55e8dff62724816e8241cf6618372bc253e8da2d5db1eaf26de2fbaaa903
Date: Fri, 10 May 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715344342
