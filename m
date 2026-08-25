Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DF3383329
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787643034; cv=none; b=D4TIMjo3JmTJjpD2PabioAbt+VyWlKBhPr7vQaIvmkqIVKjn6aGlkCvPt5DwWqhEAvP3JuxoQgoZrqzf/iWFNHCQV18Yvl67Sk7VN6YPBZh1sAxGW+H4jMHRlHhcfisEpwYvQaUbzm8nLzFVYWMwpc/1cArIYqj5+kcMSXmN9Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787643034; c=relaxed/simple;
	bh=YJu1ycBqCwrpvfE0QUSWcVXmrftIytARZOWHvLtM45o=;
	h=To:Subject:From:Message-Id:Date; b=V41soJGrW1BhJco62gwrFKPy1MKfk6wR+Mch6+ftYMS6GinRiiSRwCivS/pPZ1ygngxzxTbUeOPAk/E+KwWGFX8zkKhpZZIGDO+gKC27rsaROLrGMllDFz/bqeveWKzX1QjK47iO02eyUb2rKIxHQ0sX2c4Ns5uEfNMigwfcgUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpKUaqS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpKUaqS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9846C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787643033;
	bh=YJu1ycBqCwrpvfE0QUSWcVXmrftIytARZOWHvLtM45o=;
	h=To:Subject:From:Date:From;
	b=XpKUaqS5+I1gh5dlSN5lTebEr2/cEuO7lSYZTiNJApoLx52iWupjwwjuBeCICshi7
	 AOPml235BLugRrtBwu7P5cTSKVvBDtFhFYr1DjkzWglhz2F771qycS7vnZHmz7sEF8
	 CyVxXyjLqslYKV2Lq/YDSgUSyP22y8kVcLnKOnLwAuW3ezFNH+OdvS3LqgSQpoYJJm
	 OB8bZ3BlAlcOp1khtPafbi/IOw233ajJetj1KaZ0nbLbFRiSGQI5xjbxhiAzVbowT0
	 vBmal32gGDYcfjA+Aa5oJX0ncqrbBTgW3s3Jyg3qhoVzVAffsGsHcp+71QByQ+yo0w
	 Cpe5sIhI2sKoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E42C5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764303371.12771.13518844017117034843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0750fe2070bc51604b716b97e4f8beb19d25a6c5e5fe7157c02298103abf297b
Date: Tue, 25 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787643033
