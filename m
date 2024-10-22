Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FC01494B2
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729585554; cv=none; b=YmTfoRRVrGkxkY0eKLPOdORv3T+hrC09fyBAMrBWZhB/QpREdEjeQVRo3cvU2mj1JnhE8KeKioipVuAX5xo5gVceWiGPLKOBJTx2PIT5S76Wegw/oIexAfZeN+VQmoJafRUENwO8/T5ydIJ0y9wqVEq16QFR2U2die3zm/r38CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729585554; c=relaxed/simple;
	bh=AJ7MuuMXDjoI836h7mMpAbKC3fwEMEgT8Us+J9ZcmmI=;
	h=To:Subject:From:Message-Id:Date; b=AUXMsysjbh48gl5z/3/RAS1k23eqR6VojX2o5h79uAm61w31n/Ya6eRxOuCkDAHavID04ChBTz1TLYhVwA/ai+cQpBKg7RlOULW0TH5iMRiPUT2ocf+Rp3znwdp1fQiFpHvjYcVSX8ZbDHamxKpJsvj4bbaKUykhAxBvDCIYNoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a40OvjyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a40OvjyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B57C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729585553;
	bh=AJ7MuuMXDjoI836h7mMpAbKC3fwEMEgT8Us+J9ZcmmI=;
	h=To:Subject:From:Date:From;
	b=a40OvjyR3ksIRbNROA3+wxm6SAo6q4RblsPKCTJGYTsl0eY6zo4ABiRTyPY7vKkZU
	 IRKqF/RXTgjpnyqNpa9peWSlmydgtAsjgZzmClv0skWLRUjxcyWeMa/BTAn4h8f9wg
	 JzseraePUKxsieGm/ccMPPOgMo2aHBvEBve5RQ69INfLDZf9WelYc1TtQdDNmELQ2Q
	 Cm+rJmsEK1wrtzf7ZWZJpF8nff9Bgary9Gb+gSwh+k6K+P5sLMIo8aqbeyd94XxlRx
	 TxfTTwKT+ig+TYiN3RFFCgyxUbXLwLMs8ovS6hwZCLTs5p9L3hURRGIfp2bFREEOTY
	 WYlrQk9ilxY0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99263D1CDB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172958555359.19434.12827327873423614090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536b4fa99e491366be3b72b7190dc3b31b2dc81bb06f278563acbd3c86e201ed
Date: Tue, 22 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729585553
