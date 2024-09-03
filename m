Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2621D1C62B1
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725348954; cv=none; b=SO33yFTZ2pQRfJXJmfutu0Z/ZJ7O81bvZfsEMF6l4aErgEK/WED0ZFRg4L4a9IDniZweQHBizONJxx+Sw69skMJFNgUtm+grcQ9xSwnKPR+dzfVMqI7V+S5N/x2ZBhgwLdb5AkNyKzp8XIyOa0JRjbVrP4uA9GfJwxEf5Aiob8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725348954; c=relaxed/simple;
	bh=JpNNVIPvrxhJqwAMMvSwMMVOVeTgVRFXbNx6Kynaw5M=;
	h=To:Subject:From:Message-Id:Date; b=AuSdwr/MUu1lsbjPUKc3PH7iFG1GN8BDT9x1LUUUiCL0/rYvSP62nmWFa13pWWDUFKKC/9yzjEqfd46gCTAx9jBHWgs2lTt2jeGI5Fdswv6d4Pbz8nf+g4cYeCiEo7pYMVXF8q/WsGgftrS9tzVGKTDVw3iyQX+hbw1uxUWCCQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mglZT048; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mglZT048"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F9AC4CEC5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725348953;
	bh=JpNNVIPvrxhJqwAMMvSwMMVOVeTgVRFXbNx6Kynaw5M=;
	h=To:Subject:From:Date:From;
	b=mglZT048v+RciQCVyx+yuqZWDjjhefYiDMNltX6biPwxeKtoVJqBVydbL9t/htSrq
	 hS0O5GLquZWI/bTJlSJWrZu2cJrSC+/im8e1zoI+nmF2ol2B5xHp9JhyUB1cVOMODg
	 +VNGL27fYtpKJi0yPyQIssJhyhK8lwZBLd6piX8KaAE06/OKcspQ1bGZUX1fdsOU3y
	 PCI2AAeBBbJbBK9i4I1koCV9G+IMJzNaJhZ0o3ovsHfcSv2JGXmiAsf0SgwuxhWpV2
	 LAYicM/Qgd2TBoDEsEBnvmBze+mRAkRY4zKXNyoYiFg3PAKrjRIAxLe1ODErTDAMEb
	 0ryo6y/3coxDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96945CD342F
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172534895360.30983.13563510206175554760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df5ec035310d7376ade3ecc4f2f5e2676e0f7e3184bda5689ae774b34bc47e6
Date: Tue, 03 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725348953
