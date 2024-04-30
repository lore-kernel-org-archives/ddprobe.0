Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478D117A939
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714494743; cv=none; b=cKbYvmqTgl9R6k7vDPrqgVVtt3LB6WzdVw63f/93+GyD25sLRAcqYjXHpKW2R4I5Q7v2nFe+s2SK/iq1gd/h5OAgqCUQm/zp4mnDl8r0XJX952W3OiwA/hwjvCZ3v4WjhQgn3ZeaVmx8hUevUTvZnmOSruBX90ZulvNRRHazyuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714494743; c=relaxed/simple;
	bh=j3tTg3bZgVGrnyDKBWEs6+aBVHV/+7Q1B63ZTX46V/I=;
	h=To:Subject:From:Message-Id:Date; b=la/lAaoD0y0oUW1pA9hkecgtg55OUHiL4rMYkpqkQLd4Biwq5Hb3fqwE4X4Vaxc3/jKueHHGQkl+L/HiY855JsVj2+b0N7Drj74pQ/aDs8kZu5mMDnkUXfNCc8aaqYYXAflbc8L3JcVW9TAWb/OrWeTxQAOsf7KPkXykhxS7EwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMpn+JPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMpn+JPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7CEC4AF17
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714494742;
	bh=j3tTg3bZgVGrnyDKBWEs6+aBVHV/+7Q1B63ZTX46V/I=;
	h=To:Subject:From:Date:From;
	b=EMpn+JPK3uzTWjyZA9AvbN1pOqpVwTBD73WKuywXmOsQx5gAbhrKfA3opthiNgtWa
	 j8XgWHrnY0uYRXN6dLV22auyTFkmMl0/TIslJno70hmdpf3BqcKZKIYsoUlUN1JiEe
	 0fsT7CktO6qWq1omaF3SGa4Pn9fGmEZjDeodgK1+4GGD+5A5QOXvm70Th+N+wAQVtY
	 +Jrdd01ol8eLrOEOciBYWYO1SXLOQTEQfmdHfYLsGdj3L64Q8VgDZriPAMP/Ljyryp
	 H/jlq/+AgGpLQTpdL4jka1eu1VcVpsM7O5bv6Ndvd8G4CPv0fqZPfCFy34Nmih6FV5
	 LrU3wcUHeBRnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA922C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449474281.27871.2121372567362641405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e27b2b88527591f56c2d8499667b1afae78aa2e91b307d432b22633c558f61
Date: Tue, 30 Apr 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714494742
