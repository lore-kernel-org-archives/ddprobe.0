Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2364A168BD
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756630794; cv=none; b=gxdfngN6EMflMiZR+gekHr4qg3Z6DEpyYLkkpcdlX/fYBftSsPVqp3hKWXJ5QILrAp9VlMeGgl12wrptkXe8vE+f6sWWmDHn9J6fkiviCNNsy2dMVmHkoJgG2B2dICAqW+8Zoy4/bS6QxvXJhW8MVecC266DURccusxz4O9XRHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756630794; c=relaxed/simple;
	bh=C6pTlttXlm5N9iEmSsKhRghpfh0AO1T/rT6UmQr2vsE=;
	h=To:Subject:From:Message-Id:Date; b=LIYfiLoskth0iZtZYegghb+LZhfLsulUxCTpqh05PZXNfoMk7byprVIjh5ZMMmy0mRiUxQdVrcGyLN1zxqvR873Px0Wa3Ixd6HGIBW07Dc+p8gYsn7OmaHkLMz8u52AhPqO8dt1kieWoU/zS0cldRtFA5yUenZtvfb0mRhJyUAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+Rv9BsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+Rv9BsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D1C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756630793;
	bh=C6pTlttXlm5N9iEmSsKhRghpfh0AO1T/rT6UmQr2vsE=;
	h=To:Subject:From:Date:From;
	b=J+Rv9BsKjVQcSbuKJYrphnbt83sQrokd8q3ao+1kJPPiw5n7dVWLL/1uYboAvgHLz
	 oyPdGD8H94Z3Ir4OL6BVtcGJmdc2IcU5xa4DZuHU1+uJtuMzb4ALyz1JwG27i82iUA
	 OaLUQ7FwBxnaWCf2MoTC3puQ4WZscYlAU+W1WlGcC8mdV1YPV3bAaZjbRF6yfYRmPd
	 CIRWClpvh/jVCGp3gJVMKHWjvxnftfkqvY7iDHRmXgGtfDFt3CouQ6ltjDyTRRstFD
	 fqjW33+CF4fUyyCC0feAN6UCdNqpU873/0TwrMCCCKcDHj/XjmCoCs728CD6oyzy2E
	 k1Lw5yucJLjyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB77CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663079358.16439.18188075266848226196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de79816e8790304c1805e32bddbdbb299dd463cb3a8df986c279449e8b170d47
Date: Sun, 31 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756630793
