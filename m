Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1890D25178F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751014794; cv=none; b=A3Y9xZ5Xhw50ApM3aKF2QYgJemt9JYieCBsFnpQGQP9r8ccsf3CLKmsO3W3DGpbDqx3YhMBO5ALikeoRvtMlTH9ZnvVoaWgrToJrgeqDDWeCopmMoTqa/fsPZtHEJ3hT6wfzGCRbf95U6jDOzKQ76w/Bd6Kow9oC8Yg/mmasTyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751014794; c=relaxed/simple;
	bh=5pi3+DYVpK+QmQlBfcd+k27uRYtRNPOhWxFFH9VjOAs=;
	h=To:Subject:From:Message-Id:Date; b=DsY3XwbIw6MWYJGXp2EIMz6BID/1KProCZf1wgT1/J6hcni+GlZ0Fd7J9+bsGNK1z7TDAOPuOUrsojT1cS5qTraH6L1B3rQabF9lQkuktxsXSiwdqAeFUKY3cDH6BC7RnAd7PbpnYzpsmyRTTy8gUErtSNJZjOvKrZkbgQhjV0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwm4F9ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwm4F9ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E62C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751014793;
	bh=5pi3+DYVpK+QmQlBfcd+k27uRYtRNPOhWxFFH9VjOAs=;
	h=To:Subject:From:Date:From;
	b=qwm4F9ubXd1I4XChz5z0sLagY3vRau/a0QeJ2ILQidNx7FszsTXPen0K2EBTg/Z1K
	 b7r23hAa5kRPuC7a2dSVSGuCKFquvZL2dBHcTxeitne0hIOJUnurqttHvWX9N9JH5/
	 Dj/RHlTkm4VJ9yjaXWNUG2wu+JVa3N1L+uxMth3Ir+GZBF7q1TDaFJL/4wpJ9d8B9w
	 k7KLsobrIU8aD5hqO0Rb5v7iFS6++JZ3m/kCeVNqlYOSEXMrbxqiIg+8jGwjy9SLZa
	 rNOLITNOEDzdyQn1h6YI1+avUbcHLZ+kKeqs8yE7TEwZQvQKGFz68XV/96UlN8+sxp
	 LW3Q5fchC+nYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45DC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101479357.17893.4425266401759724588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599bf0ec7be8279700262737c46ab0983c198a88f96b76bf6185d21438fa767f
Date: Fri, 27 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751014793
