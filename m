Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C18617E019
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726691754; cv=none; b=u9tpOn2WjQKQaei+ZYyBdW36dn9Q7fVfScRBFQSvos9hb8B8VrwW3U1gJYzyrdoosTaaNpYBamfbBX0ppkX3XDF5pYRB4TFUnmpwzzpeIuwAYg2hQRBbHANMBIhzCK8A175722PCFajdr8PUrbgI7CUZZ2O49iak2dWFNpCdVVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726691754; c=relaxed/simple;
	bh=JZ0pDSBfYyJpsBgo2ta9vepXWygXrxTwQiUb/lx9KT0=;
	h=To:Subject:From:Message-Id:Date; b=pnck05zTs8HsMTC+mrNXXBYVuf9sF6SLWxYXNrGLrZSOqnlBIhcaeWMJQZ8Vx/Y7ToHeZBgJvfDdvAyk7YS1P/z6Ge6wpGQ8rFxZgBRWw/w1/ArXJz40kupyWthTxlOv+4BeI5O54Tz+BRD7ti8wOR6Js7EXdVArsVhq6BC9dnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDAsKZeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDAsKZeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E11C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726691753;
	bh=JZ0pDSBfYyJpsBgo2ta9vepXWygXrxTwQiUb/lx9KT0=;
	h=To:Subject:From:Date:From;
	b=CDAsKZeFRRVhQoSOqq7BjKlR6lznxRMXA6Y3cLCJ9sD2EWaJvVZhqTSrX6PmmDHqk
	 QdR6FkWAeBeLJi7ENuZ/qg6dINTtybqbrQUMoUAptjKQ45dB+ujrfViyhlks+PsNwz
	 7v+LsfKfgOnAgc/C+i/dml5NtguJTHBu01miBo5wlgkd6zR3pnm/qpfMg3R0TD3fhQ
	 iaJhuMG6Jfw+sLjsrgirCy6Pxa7bYabJ2SXfve7IKKy6ZUmvTgM+qv3uhjnJHNcb4J
	 bp1FcG0SLi6co7vRq2+5Yi2mpe0x1jawGDcTvHEjkzkZ9b0ozRrQtiO6Pobj4uAAiE
	 1HFcOpGlGZvvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B74CDD555
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172669175358.13103.1344606119895155941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2756d86bb9bca491192ff8c29ad3e1dca53da90717bf5e5b42dd00ff0d339dd9
Date: Wed, 18 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726691753
