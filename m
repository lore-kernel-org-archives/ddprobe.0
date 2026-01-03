Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F46E3C465
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767482634; cv=none; b=EwPlBoFsia3ddW/GsGs13/IDImHvhsUTFPpV15Sqv1bKv0NZ1KbvXZWY4rdWMCNtt0vrrASZiV+FMlAdHBKcRHBQDDU57Ng99bUTtreKg5KjrMsQePrbRmSQO+nMCTaHrpsM/KtB9ws3lo3nCE0NIR4DWBgUEotrZExMywtYOQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767482634; c=relaxed/simple;
	bh=yxcIgcpxW14nx4bOiEs6cSPof/+kER8rCMb3s7NyyDo=;
	h=To:Subject:From:Message-Id:Date; b=cOSnoydALPCiSTICazZf7Tb8+7kqG45Ocg6V1vNU7NEFpOF+w1Swb0wIFHK50ucgBV+pOLd3QuDNXZcBSubcMPVrj1l9OhWGFPCpDtdxxWF5xPhMlYAkzCOzJ4QuBka/vJ7tBAUmJZN3NN4sbftuwGjzpmvESIsRTacj8WAoH94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFda0J3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFda0J3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5278C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767482633;
	bh=yxcIgcpxW14nx4bOiEs6cSPof/+kER8rCMb3s7NyyDo=;
	h=To:Subject:From:Date:From;
	b=QFda0J3O3uY+qitlhcKq2xQu9IjYZkOPANSmCg3PcqIHh5SZRXjwghsxrF88mH7bt
	 8JjyQDVT22COdQX9lfd/1CSyLm9lhUNFce91mE+jr+/xVArs8l1oz+xXSe06rHa+64
	 Fn4K4jFid5OKuWaCFKMjbWbpYUZPUJ4Js3E7eRH7uOvX6gJWzLoq1m0b975ZyHgoNR
	 lliG8YGx5r0nI/5lWhiOtOHJtWz3wpF26LXVnaz7lRItS/ivLlkclBcNqkiLqEr2kz
	 5E9Vuji+GK33zSRchfHFRhSEtO4BpkQnAaqzZg+53CVnWN705U/0IYdSuZv4ROrHFt
	 QysRUmCHbqvvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C2C2A061
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748263357.15928.15639412121434723562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7cea991458a7b922be5f25db872ffb98da59e16a6775b9eda0544103e292fe
Date: Sat, 03 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767482633
