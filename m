Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CE9273F9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758293394; cv=none; b=EgCfO4Tp2/HmewFCTiWjghL/cD4AhFkHO0jwurDBouVXQfNiiha8FvRvDDVuP5fnkQG53Hn+k81/QJ0+q9fNa1bDMZRUSfvZ22lOnX32zkjNBO9j4yhq2LJ1DdWDQHEO2c4FL04nwvEYB50hhXTNOZtFrNzaf1BpqgJaCIpLdLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758293394; c=relaxed/simple;
	bh=U7Oag63yijPB3gYoRT31c7Lw+XllcN87eUa3Cu+3OW4=;
	h=To:Subject:From:Message-Id:Date; b=J/B6XBlbCJpKmWDPFGZUSQ6Snl1rBfk/HKx6ZGzGvk5Jja6oy0e4cph0cjYRVSjsLasEQXOwf7LlNQDQa6WiG4kxhZ9NgMfovk5Xy0bHV0Hj9cilZ2Wbdu1n/hD5lo6vTIVTKXpwZb1P06VaIYGihOT9wDwJG/1CNUec6W1883A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ighA/K9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ighA/K9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80C5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758293393;
	bh=U7Oag63yijPB3gYoRT31c7Lw+XllcN87eUa3Cu+3OW4=;
	h=To:Subject:From:Date:From;
	b=ighA/K9wVvkRQBQevGIX1DEZBiWnEwz01xiu/S9IUU9x7NFSIA8NLqbGYZYAkSAlc
	 u9jjSrdCmmXRJ4XGdTAtMODxFwCTkXYweHkj5lQyxFtWX92i2Y2uao49Fxbsx0wEo6
	 LGNc33zLE0pVlH+SgugR6EwxK7gdg660ifkA6xChoIL1OHC0XnCUcPxJbU5XXSN3RN
	 pIg3H5yGqEVHlhqR/i+VCl5opXzHJbNOaqjCFvVYINi8QbwkSrhsPwHezK/ZJzD2XS
	 /O8iEmsQrkWiMGTv1oHl/PnQpHZbt9tivmFAGy1cCqNU66zuGz9n8mV/Mn7w2vbT0w
	 REAQEIoJpZm7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954B1CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829339359.14558.5287795280097793618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0149b25442ce41aefa75668fe0d9dee3d0258da1671d29617fd3344bff15f9
Date: Fri, 19 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758293393
