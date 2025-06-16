Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BC9286D69
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750096794; cv=none; b=huj/65RgtAq1UXPNieLSqQtAARM2cgdtu3INh82I3JyaxTg9KbqvdWMhij6fuYhfElYV4EbWxjWJbKEnr9aBNHi3Qsjo714V1K1CYQ1WSOAl0jKEZqYjnWeVjh0eVdBEknSHUYhqJj0AGFszwebApWaH4qtobZB0717QafKIITA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750096794; c=relaxed/simple;
	bh=2oqm/kxFuDTgFQ+r8omJtmOhsmagPEhg7swjA1XLt2c=;
	h=To:Subject:From:Message-Id:Date; b=WY+4lj45Jw05G0Wpsyk4wFQ8KH2PjE5UG/ai2nnWkt4UP+mwMNGySPYh71nJ8UYCK3kkbuPzC4nmx12A/yf+8m5268lL/EAfKQMHMIr3/p0+tlRRqyeSjNURQLtQNxqPesW1LOdID6ukBlbzDRZU5/kVpA/lQshAgN6mLUetfeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+8lF86F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+8lF86F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA36CC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750096793;
	bh=2oqm/kxFuDTgFQ+r8omJtmOhsmagPEhg7swjA1XLt2c=;
	h=To:Subject:From:Date:From;
	b=j+8lF86F9xJfBmSCSbUUx7G6ogWjnRc0BxUTep7mWYEHFOyvpyo6WwuoNdnSydN40
	 Vqh3cQblM8RITjnBJk0gUPVlkJbiS4FbQKO7iyuQb3QquQ0wpSrUP8pYIzEP+AlaIW
	 yP3/RN0PDp5LzJI/Jvl/K/tz6zVeecfXJKRs+LIkImBUXL9yjHfqsTaqUT3JcwxfKf
	 03DVdLLNSHjYtS15tLJo6AMeKurZSa4sdLdXKBUTQeh25/1ipI2L769KI5a3sniPtl
	 3yHzwadqGFD4cw6goo7svJdJsZJIK+L5V98qmQKdiG6IM5QOij5ekDf/P0BLfS/aye
	 6QcELaxHm5+dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9678AC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009679358.13175.3903285073392868597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b195688ebc5fd79cb5e2a550620cdf437838983572b373d4c7d3d2fd2a0461
Date: Mon, 16 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750096793
