Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0C8381B10
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781277994; cv=none; b=Nmq2+fD9/Z3DHoCr8ciSflopu8piV+mn8id6l+ioM2nRPk0eNEI6laTWfEHs1gbx+hJJfHQORV66SqLUV6Jf4v8q8iMw0Wszi0FK0PYApkvxyvtr/XjnraOctU9zgY0TzTsmfQ9FrxXZ88Tq6KbLKID6r3iqN1/qKwaWF3zPQqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781277994; c=relaxed/simple;
	bh=rU79pzbeIiMRUzqgbKShvdaxgWPsq23AH8vkCNk17QM=;
	h=To:Subject:From:Message-Id:Date; b=fN37dd00bFKVrXHdOHOyy9hdjs4uSd+xDBlUR2CBESpIOT5Tb7P3EJPvEIF6Gmcb8ff3qtaPoAvyGYqqBxd0Qd3UI2oIqlHdGzDyqQDTn9dzWrtkgxlTxEE95XqGKAJjYrpXtxaVirUmLNX47XNsY60x1WsMACeMxGl+jSMF6q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSW6tuE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSW6tuE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3378C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781277993;
	bh=rU79pzbeIiMRUzqgbKShvdaxgWPsq23AH8vkCNk17QM=;
	h=To:Subject:From:Date:From;
	b=hSW6tuE0LivVVtvV3wS7+lEJaElOAjGpiaiSmnaTG3+KczfDi3lqI1Sygvtgdyipm
	 mEkf8hMMaBCjHor/wB0ur9qauA3k8FpYkYm8wLC7iXAAr1c25N+jjFV8+m5kuxBMJN
	 K3mMfMpbmxplnoTHwSyEu2XEFvVDu8Oor37fsESB48rYc2Gfxz9WfqCcUiPM2kfgmn
	 vk/Rt7MRD4IqPmkvULApSTP7jvxVvS6cPH76P+33H4YRTOX3kWKJSVp89LEiuZZ2TJ
	 2kBIh8mzHwM4afiSN821ICMOCwTLtBPQI9Y8E7QIbrz9l9DY6FxxP1417SSMx33Wf8
	 kNezh71G5P3jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA31BCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127799369.24672.12055517662424608021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8363b0e0f7edb759fe2b7440b5ec9c7f6535895516ca5cad4e2e31aa7aa5d225
Date: Fri, 12 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781277993
