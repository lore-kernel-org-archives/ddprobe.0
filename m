Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B84C145B27
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783894114; cv=none; b=Ivq9ilXEo2Pae73cTzzWtwzhOzsT0yKwttFGTaECihoubIqPJDvDWqFLh005eDS/zeg/esYMJDGDdLfEufclxK7UOlEcxejSMJYB2j27Avre94r/jPQbDR4taSUgY2n0thTKiirkePYa4DagnK+gkyGCTe22L/5EsUkIY0siaIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783894114; c=relaxed/simple;
	bh=xNUhp0HkNfD0nx0cFsi2BhtI2TR76BQgAcXvqzXv1y0=;
	h=To:Subject:From:Message-Id:Date; b=NgjCMfNbMKLQ6dVVufmNV+K14AJku8xOLp93ZIoa6dY7kyS28vEnt41/K3FVRtRlW67ffn2+HON3tdL6KdM3CtitWGh53B5Yocqa9Vud46vYI0090uzCd5SmLX08QEvEzUwAo2fE+AY6/+YXgE2IPkEDQld8OKDKC/acSwqlXXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwPmBII+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwPmBII+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E48C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783894113;
	bh=xNUhp0HkNfD0nx0cFsi2BhtI2TR76BQgAcXvqzXv1y0=;
	h=To:Subject:From:Date:From;
	b=TwPmBII+kRCykwHxtyoVbZPCi8+IB7ZiWxU4sqiwGZEI8htYudsGnQWLtjOM42++H
	 NhQ6saDxSmlSXfjJ/1i2PI2Ai78lfTDFEIJK1fSY0RGoRVcoCeCYyBSK9GNw8Afker
	 1JFstUovjdl2Kb3GG8cmT5VxSh03JnjpfFQ4ZlzY8KUUeduMu/Tkq1bP+kd74c3FDH
	 k/HnaapbF/ExBRrJPjE6adDDYEB9ejWkhTdIk8i+oZMUBQMDA5o3u/B0Jxl+oTYXOF
	 U5kaVXoXYV53bCnx4PBMgyl80AGv8Sf1BuifKVnokeiTBf1lOZ0fIrxAcjDWC/Za9d
	 Tt+x665QzNi8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD77C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389411368.9719.12997494627108740372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a667be49a27485307945387b03dadab69b98ecfe76692e097171f3967766e193
Date: Sun, 12 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783894113
