Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272CD3128BE
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779808954; cv=none; b=IFdKqthQ6CXBKyxtoSC2Jfr749Fy5despVV/D3L4F/HP4Vh4GHf9RIBPbs+VlVRagvn9/SJuGi68bz35HQlUEtdwuGtRsd5XnIeDIUf4satvH5Ecw8FylWln2bduFkPmJcbmYM6/CM4zedIq/ImhWItTnffa6ZpngIzsJQr8Rto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779808954; c=relaxed/simple;
	bh=om2nx1+7jNhzQAeCxvL7NQsNkYEZZUCtOD0EXi14UsA=;
	h=To:Subject:From:Message-Id:Date; b=eIeN62Ib0IsUitrRtQFFMyQ3n3v/jYt7JgCKE9O9sa5GmWkodjJyjkzT4FGpxfuXkYLF6MfJUNtMXKaYKL299SfmvIrfRNOh+yX+1QyszEpk6zq67wxwpya1MMeN9lcq93HeQlUFqB+do8RxrhoPqj0DCu6yhk6lLicGunQEhiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RP0Zb7GW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RP0Zb7GW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EE6C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779808953;
	bh=om2nx1+7jNhzQAeCxvL7NQsNkYEZZUCtOD0EXi14UsA=;
	h=To:Subject:From:Date:From;
	b=RP0Zb7GWnzqXvPvNfKfZNQui0hC5F4ArG+BMWbOovNiFAM0K+66BGyNBc4sRrQgcs
	 IhSznGnll/u54wzlRE3l4ByDnvauw48WEiX4kMn6HI18spkXPDoCFOyDchXlpNgJbQ
	 mICtOqWeoSI1Oj11o8kPZ7wybCGCdBJCKJ3plFDZM7iv0KWJsw9du7QO/O1PVtE8sR
	 XVRPC7pK2PdpMYu2Cvfn2BrzB6sYJlUNGui5qaZeX4NBf8JVG7j1K3fXp/N0Lk1LB2
	 iV+X9vK2DENEKE7rnIi3fUlwCZUf8U85svGLr3LWqizkt8B3gu7gCaIVh0wp/5ouiP
	 IfgigrJaPupNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C58CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980895372.12189.4388522455330658879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cf669d56f7afe9cc7d3cb68cd74f5bcdc2b2cf257e0abd9bc9e1697176350c
Date: Tue, 26 May 2026 15:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779808953
