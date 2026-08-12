Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37F139DBE0
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786567234; cv=none; b=VuLIWp0QYPWoRGQPEMr/ZSGfh4uh7n6D5z1SBBUjDBBeoxtn+gOuxHNQz8e8vhqn2I2+59SCt49JpWvMdireYnZbihlWsXBwdAvNVGZcPr6YjbmyU2OTYwaf1nSBy9fcKNtrIPSf4prDkI1HqrWSaEDByD8FUR8gXuMaM8BGssE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786567234; c=relaxed/simple;
	bh=gbACb9epMDbv83pkwXSReSQX0zfgr24tyV/s1bTiF8s=;
	h=To:Subject:From:Message-Id:Date; b=kMJceopnlzuMbJkaYS7SAh1heQpuYlMHSNcvMZaKgoxLjTqrqpVlwmu20jvKfYZyKQ0xMQA3p3wNkSlOnMcuKI2Ouq+OMGLz2ggG0dliLiRR9GrAMIgC1M5iPHwJyoUOEklKE77aa+VG4uhCoDXO3kt8KjubMQYR6nfEEbYzxkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CylgfsRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CylgfsRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54F7C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786567233;
	bh=gbACb9epMDbv83pkwXSReSQX0zfgr24tyV/s1bTiF8s=;
	h=To:Subject:From:Date:From;
	b=CylgfsRGYjo6pAkObc1UiPA5JBoKjy07wuTjt9CWJPcj271t7tZbSRHPJYtj/qRoD
	 ZuZEn04BOERGA39Mc6oKipmHX5uhxZdI+W3l2pHymJx2DTEwrLT0ioo1ig4ev5IGyr
	 RyElhsP/Cq/XBOcIzQS3vDhksythrpkIYgHXY2Tr6nrGADA+9YqI5tGTS/BW78oPvk
	 klrr76lIKy3ZAetzq+o/lPlJZ92z+zbbSAcN0NqQGpIz26BaJ6mdJsDCJ3tVr9ashB
	 2fyn0penQuJq9tGgE/fnTkhz7eAWNId9COColQNMnm4bIhRvUA9Cmu/QeIMasjD9uK
	 rMkxjIOManY8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE97C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656723368.30304.2931328733118868071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8368aaf5c9d2e0e3ab38298259e3dafafb5333f08a4c598415464c868e19f1fa
Date: Wed, 12 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786567233
