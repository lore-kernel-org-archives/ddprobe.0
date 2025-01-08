Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4670D1F76DF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736331354; cv=none; b=pdLkFm7THMKmP7DSsGxvySVS0jde4aJM4cpj48CQQhjlGZGcjxRd8hvTgHTHsuKyBsCcxYY+Rv6tNNgHK4n3HTsFtB2olZQ75jVvWH9ppUIapT7gpzfxWYUNyp9k6y1X2U78CJsmat2Cc0Dfh/OWa144S7wXKVr4YARWXtIiMLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736331354; c=relaxed/simple;
	bh=wT9zIoBIXJxpRfuXegL8TTMxUT838MNCSjjXzNgq0H0=;
	h=To:Subject:From:Message-Id:Date; b=ZMQQmMCUqlkrUMGW2c9S2H9dXUe5JerXyUeNwNjmny8CaHm4nsLJLd2+NvX4r9svTyEakh3vI9+TMxhiaeyzlHaDR8V3/GW00/NvQkm/oyQEyO8x60t6+cNw0OE/bNyWc2Dp9RRDRkd+5dpCXxNHYnpkhDKek4IvtKWIB8x9EXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swbaEi5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swbaEi5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AD2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736331353;
	bh=wT9zIoBIXJxpRfuXegL8TTMxUT838MNCSjjXzNgq0H0=;
	h=To:Subject:From:Date:From;
	b=swbaEi5LGDCOdefIrlRq2GMvNow64kbKRpNuWm1e8arPnFFFXafOwjD0h6WmcSRZD
	 0wWjVaH6nK5evmmHKy7A17Y7SjSQEjEkl9lH7heSaE0Xde/+kkYcDqH5VrfCR6rCk9
	 YOZQKrrGflGnxg8EDapBqEcqwPgNsDW8M/bkTZwt3LuiBT+8MffY+nfVGR2QNC0eGW
	 B4o7CVVCAHaHSGXgq4j+MHgDcF+qVmUP2nHEth42UVPhWfC5TId8g6k1JtVBXl0mpa
	 fY92Wu/DHS2K5hGYsLdT+8Sa8MiHKN0G4ZIFN4iUP/EV3cAjKsASdlTiH1Mz0MbBGM
	 srTn9Y7UkUR0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAA3E7719A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633135362.13796.11834976678395207527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fd3f9be3d2ef9f7474aafbfecdf89d9afabcb3be3cf99a0abfdc61d59aaab4c
Date: Wed, 08 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736331353
