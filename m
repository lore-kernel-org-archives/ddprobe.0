Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5EBF9E8
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752031794; cv=none; b=S+ihkSnphuCoLKM3lLuz5lYoRKpgKhYQiJlwQTURji8cp4VLLD688LbLN6cHIJL7xjP8z36RfMkBXxMCTjpZH3E5gNeUMLweuqHArLRL35dN83odCCvQlpJAjTTNe6H11g/OOHwe84FGdRIX/MjOcK78StFQhUg+i03soJGB6E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752031794; c=relaxed/simple;
	bh=j8fEOZR9laxqQ79ZQ9tIBHaEyyJNVT37KwCXqpoDITw=;
	h=To:Subject:From:Message-Id:Date; b=ZmPD54EzAVR+rimJ+LErfZxiWW2m/3a/K/9vKuKT+YiD3NCYa9rEdfxanTYxWpjkxszrHZr0tO40Oz71Vu+wsKcNqffH9Lq2gTLqlGt17a4n1oHVZ9kvQjDBq/y2sK34jVRpV9Rkar21Qn4+jvijl2aFHxhiWlHVfRSPBUhC6n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZqlx/Nu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZqlx/Nu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8D2C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752031793;
	bh=j8fEOZR9laxqQ79ZQ9tIBHaEyyJNVT37KwCXqpoDITw=;
	h=To:Subject:From:Date:From;
	b=GZqlx/Nuz3KjJGX2UygphGGxMk26py1OccDUHmyjYQQdrDDMYF5nJWPP6PBHjYa0o
	 +JlnAjbJi6wiiC5oyVeP7IGN2KQT9kEKMItRf9QSYYQGKbtbbmIc2PNSqiH/e8AQVW
	 xS5i7IaTNxyiwPxfhEWNhJZjLm9tKg1PQYUGYvY894QzKVz0LM0VaTlpMRNDOialaH
	 7K0D7vtOxCNVjJSg9MEPOydmBkJP1TSHfyz1yrNNTMvWaGmx04j5H9CE9x8Rq78uF1
	 TkYRCjB+/14nUNgDUBGsiW0bYWAj1W7GlbqYIEzjwQiuW7zGrwbImnZFiW61n5aw9h
	 IF4Ulfezc0Hfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E4C8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203179357.24815.13550681062525895060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d6612fb52b5650a3b5f846b6dd52ca1cb4f2c53d87e7131d2046152fee57e4
Date: Wed, 09 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752031793
