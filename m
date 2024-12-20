Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A741A0732
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734686754; cv=none; b=b7zy3hyN427bqGBOPiWezgFwMYWunrMO9CyiSS6ec5tEzUArmozIEXIE4k/q5mO69oYt72M6BhAwYGUHt44C6BNbd7uvLabziCN6xsOULZCgNxp3peU8+XZHQFX5p+0dCfnl7Vg9aJC7HK19h4RN2JygUMWjXG7adn150Nk6qzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734686754; c=relaxed/simple;
	bh=wNUHcM2ZCOsd7PruYCg0ocItiydPENcMO4y6BJXYuAI=;
	h=To:Subject:From:Message-Id:Date; b=ibQSK2zEQE0/PZAPZOiI5HEBkI5QEUgqauKaaXpGEogtwNLBRH8x5zOy3ylkGCx4raNaiF1LuYnMgqqR4UOY9MCsTcHUMkUKCmXRL78i69PrIlk8KBfJ+ZgXEmRiLKA5GadjRIXHEPQ2ULf0xA+Hyp/Wq0X9A+66HTubzdLYr4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaH2mHD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaH2mHD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C02C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734686753;
	bh=wNUHcM2ZCOsd7PruYCg0ocItiydPENcMO4y6BJXYuAI=;
	h=To:Subject:From:Date:From;
	b=QaH2mHD7egXKR+4KXjJsVMqjSEChUHM5zBrT5aKm3PwSJXxMsPRAdWmsKyFj/H9ND
	 j+eoE0Ym1sxUo3GtbATgoVbEwuPBR31Vh18d1l8CqjtjjZy0j8dggq3ByPxm/odBLd
	 naGCBP1gAJO0sXS/qPw80BiLStBsaFeJYolIwc0ij9lkYh+ukYJUT3/1lrFlv8c8uF
	 5zX+YWEBxgKL4v0EE6V63vdSe54TByQj+JfhFgcjGpZC8adtcHVWByWLQgp+m50d2Y
	 11ZEJUPq6ji7q5zTu0GJcE1vJV5QOywPh9kWA0iZc5oIKbdkhVSLscHQfhakMe7GtX
	 i1pBHd/KLhRdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D71DE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468675363.31392.11897510566139396079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e26d8728e3cfe8441ac9bbb7b198bf27305f61fd57cd23e1dff6e29870abf89
Date: Fri, 20 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734686753
