Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43612345CAE
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784183914; cv=none; b=GtF92GXKmQVU48jG43WWXFIBGUGmYUbPVbUDPj+eArbm1U9G0ymRgboaDYtGmLp0rbxag1t9ISPkOotvnAu1vouIANX7kJ21bvfnVOhpKHfmoJayA7HayZEn5hoxLQ81+CTPij1P8+lB6mnEwBTScaAwOQVPaQQc0eu6ilg0lJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784183914; c=relaxed/simple;
	bh=QiyBwPnXH6UrkJHoz690OBefm219Kti/liDjeVNbJIQ=;
	h=To:Subject:From:Message-Id:Date; b=Ze7xlEtQs/yvC4bizv8fBfz7KOZ32yYmlumgpX2EO0s61MX/il2ugeZgpsENQUEI1x/cYbqgDceyeCCznWJVSl0+5isaYmHYPAfkoX3kexs4E/py0eB7yjWkwor+TReTvO4A5T+zHSIBiGtL59j3eOM6LA6cRbX8TiDCPn5ul98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUDaasxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUDaasxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFABC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784183913;
	bh=QiyBwPnXH6UrkJHoz690OBefm219Kti/liDjeVNbJIQ=;
	h=To:Subject:From:Date:From;
	b=LUDaasxm+Alih+JUjEk317zTtLTJ1p/BZeVgZ8bZVu1yt87E8PMnL4/e14hGrK6AQ
	 VJlSQcd6+lKWfi+8NuQtx34npPb6U+C/U2iZYAQSNCjysrIECgeFsMH1j9GZsPnvuV
	 jDlLz8dfcowog01eYmMxfDz3rbp+jhLGK7fjUEp4QqK8NyPS8n5heVmJZPBP2lmZIR
	 LRgwqLLNJL2OkQdS/CjXeOwoJgNp5l5H/08t7f5nqTR2e8wgQC1U8sXLGAY9UuaLHB
	 k8Tse27zSLLAgCJf2KBtCWljODbYQh+n8xN3z/asrTlL6NDimK3ROIKjyucXoyDrHR
	 as54STunkIqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C9C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418391368.13057.8697316969057484845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d94efd81614292fe6235c11b4a8b37640b3860cbecbc03f6d1c0078e13b7bb8
Date: Thu, 16 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784183913
