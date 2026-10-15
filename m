Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B5E481226
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792045234; cv=none; b=HWnAcCmN0cdZ9o68p+pgyP4FADFphUS6KM3GsUplNTKkLoxSKqtQuX2RgS301NtHIalt0nyFcE2i3rJz+aBoss24foF/Hfnq6vMXziQDe8U7sMD4Aew7xgPxDZUHb+4HpipdBXPFvG0VrTWKnzY44KIxx2/xtnUvXypjTz9JHBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792045234; c=relaxed/simple;
	bh=B2tO1fTimlRVCI6AGIBKUtWDXScBMelR4sUNiaq2fIk=;
	h=To:Subject:From:Message-Id:Date; b=W9W9I85diECn+t/z6c/c0jHW+SGc2SgTxNgheWAyogCZJHQyIKqZdms8gQ15bRLT2MjEvYF05tutktN0N53E8mEOTnucGJh60kd6e3bYbb/j88VzNyHYSfUWszbHczZWuoiIxHdY1WCiqPFQP06nzz6T52rPrgkPLkZiKJ0tjo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekaqo1uf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekaqo1uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6815C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792045233;
	bh=B2tO1fTimlRVCI6AGIBKUtWDXScBMelR4sUNiaq2fIk=;
	h=To:Subject:From:Date:From;
	b=ekaqo1ufPxshsQkz+gkdFdIVRQn2Oodj+voa8M9+5gBhqrIJLytQy2RKl55AXZBmj
	 17Ca74noxfx175do9mHjER95Aj9HSOguOyBLNBIO+Py2LtfMbiV2VjVrSoj7jJ2AWk
	 B9DwZJAG6B92Y8jfq1lwzpOh0Ol8MCq47wSUtVVv1ZPxgzHBXHPnns4f7utdo0Ql4b
	 VhyfUCsl/VR01yb1VLr6U8nVLnMSLYydid+LbpT0S0KSXhjjXLfDhs1mB/viA5JjAo
	 pcmuY/EE34bVPDHui0jrVxyLJN5rvHTW4z9P4k1/m2idZPkj3LQ1Sze06NmHulFWiL
	 NxzxZfU6NHuAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3765CC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204523372.953.10382160375750224201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad8d644c0b17666b0bc473d2354ac8684e6ea8ddca26b48f098c4a716c6681d
Date: Thu, 15 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792045233
