Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDDD2F3B
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741913335; cv=none; b=ZoWlaCBszNk1mSJuGmCcihvbifxjzFtwkDVDsUFsYyEVK9tBflcipHU2whjZwIv19wqzrOCd4vKxHCx6Gh62ZJVW5DQCNbQcx0lsrz5YhmmojGaHqpIbqQxovA3ia/552sO47L/OXs81N5l0G60x181BPkbxcQAVirSbzjq/kkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741913335; c=relaxed/simple;
	bh=HLQ1p40hH3YI4zHEAtBo+/y5yVmMTs6yqktx4BVNMjQ=;
	h=To:Subject:From:Message-Id:Date; b=TVpUXTqlmz8vVI44tIh+GBpmo+ElNKOtX0Uur9A6/Z6nK1Axq37GorQt4ti3qi1yJfmNSxBN5p2mCKLq4D49HC32gP6noW6v+qze9eaptzD3+67xc+B6hx8Tn70bFWPNZd71BEqgqjEFQMSoPS07b8YOVzN5LrTTY/jDOHMrXfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4bTFYh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4bTFYh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE4C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741913333;
	bh=HLQ1p40hH3YI4zHEAtBo+/y5yVmMTs6yqktx4BVNMjQ=;
	h=To:Subject:From:Date:From;
	b=A4bTFYh0JnD/OXMUsAtIVyOZdXoLVZSTIe/4b7IZbWt1e2Ml9Hg76YTzH2pfT7xmo
	 z7nCMOrsdZbe6URLuAnY7Taus7m2m0Okvn0/dLDk744hD3UWqSPDcIbPP6Lm3FLfEh
	 Yc9wbuG+9BWldxOWo3cl63hSGr6s9Fnivsgr6xuxu+PzJD7hR2ZMl20/2htro2flXJ
	 VJxwz232hn6jirDfebvYeRvXyEMgpR4ka/c8jDa73odUeOFbO3UuDphHYYMFEW5bh/
	 qgFHKnYLmW7mTW6zlIRjljfJMTe+tmadOi3lMTn7NI7yl1QI3yNd3zOtpxGGIvCMVF
	 rdTJ65qVjUBCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975DCC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191333361.14766.14873104826817228911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13eff683a3d96917d4f08da345024cfa105bd06e3f4aba7c731d8c5547073a3e
Date: Fri, 14 Mar 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741913333
