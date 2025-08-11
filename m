Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F01C1D2F42
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754935194; cv=none; b=cfe6wcWhgeyyxKHS17bQ+j0fT1ZeeLNjXPUp8IehdfOzK3qSsEkWJ+Dj3w+SQLQIs2fsvsQou6SWniZ4uuGzj/KO73+Thj2ctcK9e4rY3rUEgiB+UjS3PGqrWt798rms3XraOZnaNDH7Z7NAzMT4KoF1a0nx5tHqHRk3gqdfo9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754935194; c=relaxed/simple;
	bh=qhJnIbjIuFeV7VRmVwiM/hD4ICp7hNYBhkOyEGm1MFs=;
	h=To:Subject:From:Message-Id:Date; b=jM0bn8//9h6RvkyrrMrgWgNQxGQqvklrtg7FL29FLWMqfdAVWb9otFYDEHoX2sCwM/Qzd0Sp3gt6s/GLSySGKsMAokiYexodzSNjTkrBQ8jj6tMUuRoir6yMUoSFWBU+306RulRjz+4BhZCGNsKcmeH8gPOkB9ThAISAZq0HrYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQ5TLkZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQ5TLkZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF89C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754935193;
	bh=qhJnIbjIuFeV7VRmVwiM/hD4ICp7hNYBhkOyEGm1MFs=;
	h=To:Subject:From:Date:From;
	b=MQ5TLkZTeVrUTCEi6wEEzsS3Tg7aPq2AgbMVFSBpdsOhvUiMjmmXtaRWEh0miH3Ca
	 POwkMx703ylaWGvFHZqiLFxGzhz7GQv/yKwr8Q0SgTZtUs6s+zTAJ0XMiP177WSwDq
	 sQWU0tSoGxau/BViRXiWJR1VrrD1y9auSQl8B1jOESq0NISyap2GF7MQejJl9tgFyz
	 eWKVN/4gb/McgHOICUh/1X7lWICrZXN1jLjdSYbmVDBKhrwfJnlb9942Jxv4BYp7HK
	 tZQ+QdlsHhuLB7gC9LCmG1b6OdFNFNgDwdtdSwgcspsuujtOJxjB4u8wkfH9sVonkj
	 AAPGOYZdRCXxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB54CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493519357.20596.6773160825624211346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0513bbf0fbc244de456758a7ef5ea9cdfb6f61223c64016e5c00881a60a9a600
Date: Mon, 11 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754935193
