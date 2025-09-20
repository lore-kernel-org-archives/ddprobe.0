Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBBB135A53
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758376793; cv=none; b=IdJrohMmlvcwN6UKQYD03hHJsJfkPh+73ZK0qOlyZOOatYAguF6qj/1ZsGXL0Y6wgnOJruPBr+3Bhap5OJLnxgzRiK4gTDOO5blfYlMfkdRrFH7zMBrZk3pnCKpniHwev4ZGmlY9X99y9yIHpyhYLFNyooaMk+HrWX3kb6uoCJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758376793; c=relaxed/simple;
	bh=F91UnIStrAp0ROpkOihPyVkAr1DAzzC6D6+rLdhEmxA=;
	h=To:Subject:From:Message-Id:Date; b=sW2hHHrrjuo6AK68+6rfVTmMSSzP4zH7tb4kieLFjVIgpbvML/AQDDkXUje/XqizXyI5gf18A5RbbWh3lS3sTtpPGD1wYOWgi77qElhV9FUagbDeAz2VhZQIwP24qDzdkgeXjWyW0TtleZDAcdIqjtIZG0N07IgV16ctExM7e3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPpMJVRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPpMJVRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A419CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758376793;
	bh=F91UnIStrAp0ROpkOihPyVkAr1DAzzC6D6+rLdhEmxA=;
	h=To:Subject:From:Date:From;
	b=sPpMJVRy20DSEAUWVMhXqKJ3SLmr4Tus9a4lPuhiVwy91NqVKmgE06SKE463yG/T/
	 u9GPWgCmQPYmtTmHUxX9mPsYI7djEzmEIWwrs2jflmJsdjtvJ2VGyXEcHgR2bK8Nsb
	 Vzgod8OXhe8VNKkptzSSMS+bDuoactH7Z6O9fPaTjhYPtRo9IKrbQRJ57v8rfWmP2A
	 uOP79WQV7Jmtxjnj4BkZyEIxr7zpui7X6aEt8wsXJAjIzcvEnu0AI8ktDayO1+QCmY
	 cPUzBxy3rvwiwbhXZU7S1rZ6Pbvw8wLmZrcsPbInPj7ROvhjI/2/zPKVvUWMpNS5WS
	 IClOfNMFrnLZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFFCAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837679357.4061.3855436448909072170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708a944498f2bde9b8aa3fa5788d0a4f448ee248e69c5d47b09b163b901a64a1
Date: Sat, 20 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758376793
