Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF992B9BC
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727637954; cv=none; b=mdQhNuI3JbBUnhupCgMz2ZYGaBAnZuM1hsCaINWMHABzQAa+dqkWktyj4FmUXjhCWH4ZloS1rFjW7IF18Ib/dpdgXftZEjQjXLLFxqQw2hwyM+X3nF2AS/LZda66Z1P/sni6/95CrGc6z+ynW/gkVcnq7Yuc1qFBmRFyE87yWm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727637954; c=relaxed/simple;
	bh=whHrvt/q09+CtltZ1URgDJs7wwcIccGQa3jZtRyUXSk=;
	h=To:Subject:From:Message-Id:Date; b=F29SpcqIrkE8QNhAb06Dr4KTadrSGrdcagL2tEipPdmxnXfMIrhKBom2QRrxvOuLfuuJAdN3eMcPzzlwpxc4KRAK8YHJcOHz5dQy++H3PgV6CVOHtOAfrCyn0qlYBtE6MMaaTIwPoW8AqeGGXvzeuIysjOXrAmVGY1g7AC3HKNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eksg0EBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eksg0EBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6ECC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727637953;
	bh=whHrvt/q09+CtltZ1URgDJs7wwcIccGQa3jZtRyUXSk=;
	h=To:Subject:From:Date:From;
	b=Eksg0EBikeVZMJly9PxCst0OMyP+NgQ9azRWXoqsa3SN7jy4dJF054Nz2N0qOiUcG
	 A56/IcOOIXmIbLNJIKtNHc5acBOscDoP9Z2KKK4p91/V1SQNWHgw0XqJiAe7eRgtax
	 r1LneArosEap1o7CFdfuK2CeCz9yPFQhVXidy/cqZrs4LQFS4GfRC+oAdx3E0x3Xhw
	 1rNidDXSr37DrYgBkdQpTSC6sSIOPdfoRb0h7kdYok/CgcuKv0XZQYJdmVy/AnBWak
	 4zpIf4fd8s5bY+IxmPhDapHJvNKaK6KBPg2xV0LMd4oPThaEzJkKum1HxytolUTZgj
	 +SB8mkvUrTP9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D2FCF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172763795360.4563.13629259230968375190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e243a16631c6c12f4292b1ef25f7eb87ebf03b70b8987d4efdb3965b0d76c0
Date: Sun, 29 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727637953
