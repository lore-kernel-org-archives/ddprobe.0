Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B373D648F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789393834; cv=none; b=k2bGkdlYqCUniT0SPsWh2HnPpcLtr4QkzTlLvPWHafajRvARlUK+mqCWCj90fFcdfRn5EI480KPF/W94H96mkM9+UJf699pawkd7TPdTf9IoN7csCkH2RxHn69dYt35YoAkuDk6MysZirrQQq2RDFUYeVVyuhkNv4PB02IZVHvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789393834; c=relaxed/simple;
	bh=nzQhugRSfTpInQris5jq3/PzmPQSiB2ezzMIidbD3s4=;
	h=To:Subject:From:Message-Id:Date; b=J8Yi4vHVMzcz9hhovc4IyfhvEf2uxtobmTSNQMR7qImEh1NUT3F9Ha5CI2Gxqcecu//tgttkT3fdu1IBKYb3xRgregBoJ3XAyvoUuMfsOQXx9VIaI2/aqdUCcJg1T1mLCDF4LE2tG4IyskUP3CSKEI41eUcmMVEdC0KUCpHCfj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDUK1rs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDUK1rs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98F4C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789393833;
	bh=nzQhugRSfTpInQris5jq3/PzmPQSiB2ezzMIidbD3s4=;
	h=To:Subject:From:Date:From;
	b=CDUK1rs446QJ/EFol9+e/gmr+Xgmq4myJ1r2JDBl4Yy2yHrckWZC4lKwG4YcdSe9+
	 HiNV5h9u6rcEwo8K0mfS3/mc15lDc+QEaZV1juDVwvgE3kKWZEPhhhtOkXZNHycxdv
	 e49x8bJ5Zz+P3FUK91wzIVC4cDjh47cVsLOQ1VUypgr81HlVQuBGKBAbF5Q0PdcLtN
	 q15vuGGWZTGx9P1/0tVBvVZJHzy+GHzskEvg0e/IHfmMWncxw+i0LmW0a1a4CiQGP7
	 nY0AcV9B/HL7M84oe4V81dG6k6mA+StZfPTvqaPt2DOtlGXkalCwFbp8YPfXYdPXhE
	 LawZ5WVOqG5Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF2C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939383369.19643.7870568598624127098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24dbab2730e0d072f33b7ee04dde096e7a5aa3e01b4a1dc1012c5ba60190c1ca
Date: Mon, 14 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789393833
