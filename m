Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125EF1114
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757637594; cv=none; b=tY1lw4g+zCBlmiM8SbipoxsLh9NB4YC1oqY/lKKzlGyTcD2EdWFC5RjrIlZXke8E4jeEmyv1miyDigSNsFIPArgA6OkeZaI9F1lIToqcBzHdie8Crbu7PnKr6tFqkQXbmXPEA2vneYA4YUoTHAdKbcCpThjvKXJuy6cXu4jbqaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757637594; c=relaxed/simple;
	bh=SE7AoK48DAsAQGt5OIAMfINOWUbXVCSe15VlALBYJ1s=;
	h=To:Subject:From:Message-Id:Date; b=I7ivTYY1qIImJ8CO9kvySLJQjhDi1HDNvlHh3zKCG8D1trfftB8NP7FMnG9hi7qNmyZC1eW3a8inni9lXiqaEcRXwL4ASrewgdRu6KdN4u1c2x9wWdIgUIOFiWcit6BY8hJkSuw5hfcF+dXKhPXLc6KmRVLgVx2S2PB2Cc6SKFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHYW6eLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHYW6eLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757637593;
	bh=SE7AoK48DAsAQGt5OIAMfINOWUbXVCSe15VlALBYJ1s=;
	h=To:Subject:From:Date:From;
	b=tHYW6eLVBKhhq2N9ZKngkyFgwwtV46y9ZQSwkrjUmacrIdKTlShPN2tm0UGCuJIVF
	 tRZYEjs0lYGyD90aYxpVHrTN8+U2R4WR6BpUvv7z6rtY5odYkmW05DUDNnwrv7XaJn
	 RUgYU765p46Yu3P7IDekKR2u9Le0EUC9HPqztWWcLvC2jfj6wwP+vGIvOPod1+Ahm+
	 9/lBACucaRPOhguCnzrsHPZJvDS1rKzZEgWWzjWtVEPSOSADhe6ZCXuhnMuWrrz1tQ
	 JlN9Tg+I7R2lCbvSKiMPrb1zRAJCvIlNJmBL7e8YVMXPzFBZhH7pqktgT7SxuHX/Kv
	 wBdxwpSrmVcfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFDCAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763759358.26596.12839069396558661773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c246ccf3692a45976b0d07834f7def96545e5852537f4fcae0ae71a8121da1e1
Date: Fri, 12 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757637593
