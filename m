Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EEB1E519
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729293954; cv=none; b=mLdoiOLAoG67GVnSUUganLdSGV01e9fo3ws9WAvOdvepMu5kl/oqY/tCFR4roPgHYEL6xxt1sEr3gwJiLpcolNGM1Ql04dz01HfKdzQkel4nSdekifp2aSZAchGY1yhHcRF1lI1ufsosuO1I+Oe1R/WTmhgM77kdyobiF8H4K4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729293954; c=relaxed/simple;
	bh=hvTbSmVBffxsNFXs8NEXqUA0pFTxnFHC/lRo2drHxK4=;
	h=To:Subject:From:Message-Id:Date; b=CqZhXY0uWnVukCKDVN7HMO7Y8NBZgmTt1si8z4knV32Jlzo5rypeVW2Vaic7lfy2b1qhaKP7/6cAg8MQRJexRekaWTNcr1MdpVcjFtDxFWiTbPZtGS6adv1tF9N4IXDd/CRzdM+BaIObN6uFHKifdKXLdsqQLsZXy75iJ8w+Be8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIzs41HM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIzs41HM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F3C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729293953;
	bh=hvTbSmVBffxsNFXs8NEXqUA0pFTxnFHC/lRo2drHxK4=;
	h=To:Subject:From:Date:From;
	b=oIzs41HMeh4u/+mdTeXetKKUSlScet7M9eqhQ4hcUaaQtD1s8joy/zmcTflh/NeAm
	 PWGl2B4MWJvI1hi1sn8dJj4AbfCSeXjPbzVqXdVnnS7tvlDC9MMHkRWkclX2zywcTP
	 hpvtXgSgiH9tYRqo6T9ROqpw+fbl47zv6teWLYkLLiga/SDAV14IGBx2BTJ0Gnf3MP
	 SuTRUIbl+Xrqv5jwgHkmJJURIsxIg49y7C7gIyGQC0UJ8GYzs9aDOJs67kgYfPUc/i
	 4hd4e/3mGCRed6eCEx2uIRGs25LWs9EIqF/GVw4gAYg49waTXRyxQj7DLe9Oj7Y/Ap
	 A/6DOVOuXi2xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95969D3E18E
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172929395360.25093.1898705131222593024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af022b2fdcbceb552b5617d436dc4342dbde399dad45fc48180caed7ceb93bde
Date: Fri, 18 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729293953
