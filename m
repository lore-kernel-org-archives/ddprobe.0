Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BA979B8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720436183; cv=none; b=pe0KPefDqpRTapqKCMTJ+ORlXgYviJdCIs9ZoQKbzWLKr4H/ZLWh9IJgrlSNDVq/y/xQnP+XlrX6GrFtoeIS1SCXoMzNWKKeY8lUGdGERhcy9HAoPIDwEV2h6H4BVAFWKg+ENgzPWznCwB5wGk4hWs+gwAij0kh5Hk0lvt0zrGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720436183; c=relaxed/simple;
	bh=z5ey6Bj5oomCHsse3WVmXX60HupSSchQfnTqYmdaXgc=;
	h=To:Subject:From:Message-Id:Date; b=p6/jNvdyBLwM6xu4DDOnClC1zkU+0gT0GXwsSZvrNwFulic1RXwXGaMGqfLvNF1TEw6J7ugouOsDvFNsfKq/ReWvxbDGv3v/ijPUdc4Nqts2ebv/q1R62j5cIZRyfzILZe2eDqQmBreOfUAIRDcWwlRYbCodusQaRdpABe+KdE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJ567kVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJ567kVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57D8C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720436182;
	bh=z5ey6Bj5oomCHsse3WVmXX60HupSSchQfnTqYmdaXgc=;
	h=To:Subject:From:Date:From;
	b=MJ567kVDQ0LIShVYhfciVrjuRVgtoCcJtYM+sBH/t/G/US+dSmonNG3x83s7NbDTz
	 x2CrxericI8EirGMG9YP+2u5wut/qCwN5wPSfCNDyNI4XN+69jwWljHBGcuiIYQZFi
	 eHgJI1CblaxJ2Wnh1a1GlCpPFaaJGZCOJWTZZ9JPuUB0GvEd3KAuseLE60deq9tbrw
	 dLGkqW/T16xzmotj7xRg0sMZUmesztxulhjvtqbQXiH/ps5lmwL3caA/3AzNFkVE4W
	 iZiBsxSOTtbp/FD99z6lsz1nTpss4HLKhH0MQU3YdUcU9dl5oXvBEDiIah64LcOnif
	 ME5Or1Fw6uAew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C545AC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043618277.30991.7594145591112417503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68fdadf9cd011dea5f1587dca7c202e14ec21463fa6b983cdb50c8d5a3d227c2
Date: Mon, 08 Jul 2024 10:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720436182
