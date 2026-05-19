Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB2C23393E
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779223234; cv=none; b=RDwOdwYgnP9IWPu0r6sztULEzWwN6DZaC1bBSMymbWHtAxQhxDpJuoEdbaglJMdV+PvBKDgl+Nkb9+Lrj5/lUOJoH9/qvdxExLF/KXkDW/zMW87ZT6iNPh34PRTf2N3cDSkn12yMO5f9g8Kg1lVFxDtZtSUAthy9ZxPTsp+zPYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779223234; c=relaxed/simple;
	bh=bF0xMjN546I3Hc/hxLFsDl2BByZzq9O1OK7C6mNQYMw=;
	h=To:Subject:From:Message-Id:Date; b=I6gb/aAJP56FCDcDgj4Pj7NhRKuF//7Egfp2YBjrIsLvAF8e+Gvfu8FQKQy1V7Hv8DHs/tA9QBoxaRShSIcYA1Cg+HX30EU0tDnc6UsvOLMlQWJ6aotyaUCSjELwKESV0X/A7Rw8vRjsbB+pMYSRGrXa8c24xbt1ZnFlaNiUjwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCzxBJwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCzxBJwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46B5C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779223233;
	bh=bF0xMjN546I3Hc/hxLFsDl2BByZzq9O1OK7C6mNQYMw=;
	h=To:Subject:From:Date:From;
	b=YCzxBJweDsF3M7bOmCQiWkGI9I0k1qpmeggDVe/pX44LAGW5gS2ZQWfMnq1Hm+rn+
	 8I31A3thhu0OtdkoBuElUUWl3yeU2iB2vU8kiyi9PeB1y2yI7q5w1XccjXLPRt1WWG
	 c429enHk2YIJ+HdSHxfTc5S3pCK8hVgjIM0ZC5lCH9z7EQgLgajCji+/yY/qMPt5K7
	 dtpum9p8mi+MISpDXIU9uN8/o1yRDEKcj28ODAXlik8bKnAy0Agcn9FszbvBMwuV7V
	 8fAJuR9dct2WxnOJhvp16rYYSHG5lnWAK4ks2BM+rj9fcmxL1/bCt99pSUbBbWvxoK
	 JMMO87smHU6hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA699CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922323368.4189.59739887637757518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da93306aa7058b35e15decf7a83693c14bf302734ceb7ee2fb82753e6b32fcdf
Date: Tue, 19 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779223233
