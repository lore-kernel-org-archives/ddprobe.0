Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA08B67A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727936754; cv=none; b=H4ARf2y1tytJgoazPXruI1g4/cDOa8Q9SxP3SdKfY7v3EJ9HfcdfEYJk9EA0l4dN3Eql1ZZibrecgLP7d5rWhL0gJ33aNGrAr51DF6MG1BX/d5FC0uPSQ2it8nr7DB/VvUN11rkjTf/9Yhdj/BbrQGMY76opljXWxOzEyZNvKKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727936754; c=relaxed/simple;
	bh=X8oE01QYqdF6+h6n/KIazu8QuQlPTWDgC2jo65rxc7A=;
	h=To:Subject:From:Message-Id:Date; b=pGTtD5v0TDEQTYbkuQMfAksIS1Nur5WCTfkBtTEnH+RD1dhlSO66/qmeUWO1ST3SZ5AuJH9QyW30RIf8Lhrgm0OZaXHOXX+1CnnqyEAhomHVcKrUG2R1uDO+ZBjyCMJ0ZsCuHMTREsFANLjuee6FOfPsco0b2/6z614+4pdKGFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5ntoPDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5ntoPDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A44C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727936753;
	bh=X8oE01QYqdF6+h6n/KIazu8QuQlPTWDgC2jo65rxc7A=;
	h=To:Subject:From:Date:From;
	b=a5ntoPDNUI9dq96PqBdDonbsIt8gYgN9x/92RbXbhuEzbVfoHy9PM3zL3eL5yMHu6
	 P9+aqML2h5UK5RCzgPUfgxIqWDA9OZYrTruQQNoWBijn/hEZhjKjDVYauu1V1wjh1d
	 Ccka3ZdXO4OuZ4FNiPJE0CAqhrHXzjj8lcprO00AwOaAWsKgY+/EOPQh6m0YMhXsnv
	 +eGAw0fFFC+7iAoCL7trsU86uuj2dDN8i3fleMtnOeQRf5hE/ALSy6uclTSy4dTHuO
	 jMYVELl0BUuVUWIVY4uUqSNLVtBTEFdOcSP4r8B3N963RNx9UK8HsLk4Q4r6tUcK3V
	 q2Nem2/ezzsLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DADCF855A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793675364.7629.10673897965716300373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c9578cd885ba2e85354ee75b777f15cdd019cb2005f5b2a1b4713f97399549
Date: Thu, 03 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727936753
