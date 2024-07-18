Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572F21C36
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 02:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721270123; cv=none; b=ghd9iwrNIHuBcMNOoj9Zjq9Mvl3gKidhSm9N22pwa5cgAmqilVxkEWIBm4nGu9C4k0TXHO83tF8gBzedASHN0zGrBrIRK4E66ivP62cMZ3Qhls3Vux3+Jk76rSOek98d4aOyvuGBJr+hveZ6Hq2MiHzhgrwiPtp9YIEhDm0aStY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721270123; c=relaxed/simple;
	bh=I8C724KgRokDnZPiZ2zL4QlM6ykCv7OpNsJ9aXad6+A=;
	h=To:Subject:From:Message-Id:Date; b=OTEhXy6Oy8k5uFUUv+LH9A36NSMCOKVsdwdrPdMd6K5ekLnz+RDQE1bT4jSOhyhfsgnp54zvTLV2DTRHCPVYSq21oINf8kVGVl0soZg0bLgUu5k4MzJvwtGiBNUQ8IpJy4JhK/nar/OuYaXYx/rb0g2U6Penla0yfPoJGeMrLuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWfsDISk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWfsDISk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E1AC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 02:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721270122;
	bh=I8C724KgRokDnZPiZ2zL4QlM6ykCv7OpNsJ9aXad6+A=;
	h=To:Subject:From:Date:From;
	b=FWfsDISkpHFn3VjlZbO97ffcX6BH2rqJjpmk9evLEs1jcx8klVuOoZgiigwX6eTym
	 hNws+WsdP5/+AYRXKe+pgUUMEf42uJEf3nOh+piyVKhzxPM2YzNNc8UvOzfwCYC3zs
	 vQgExyHU3S+kQXG4ugedVcN97quDlph9ZJT3yhBL/XRtldbNXwYpKvheEbes7gB/N/
	 ADSeuIlbIeNgwD+SadONbYoruIpfXSEA2Pqc8rE3iedbQUZ+W8nv56wkdqsup+wOCA
	 bD3N6v1d9tcSptqrG0+kTfe9zk/OsLLJ1g1QErARDVywX+Hs9682hfr/2IJsvgu1W7
	 uDh3Uk4zwh2eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8839C3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 02:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172127012279.934.8040738733474592424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b484580159fb0edf9984407cfb7d4ff961d5936dc6eb0757eacf099fbdc443
Date: Thu, 18 Jul 2024 02:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721270122
