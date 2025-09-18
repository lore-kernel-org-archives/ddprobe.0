Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDD62F90F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758200395; cv=none; b=C3Gqy9OYTbvB8CWEA77Pj9LbWsQeOHYyQrQbK/bz/sXD5lGUfbbc+caaa1SuhIyxjziYNrYWCqXJmeH6bXQC1IqI1pKBNClue9NxV+Pw6JMtwAC1GYs9rtJyLe7V7IDMLKVi8ubaNqFQrkudpYQWNrIg2tEOaYgTvQRrkW35AhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758200395; c=relaxed/simple;
	bh=pTUWy7CCvEOXuZwby3cciLuCrvEdhzJYH1v1ECjOEt0=;
	h=To:Subject:From:Message-Id:Date; b=nMGfCAgyer1qoXR43LKIWSi+YwJidvFLrbh3pw7Mrlhm2UVaW41mVtGn486QO93XzjZCpdsDzmSZ9HLjneD4iO2b3k9/xxW5zPZ4xbl0Gs5uuwncdadPm+DBrbKnOPPwmZMvm2MZFGPjn4dTd97Wqjv18I9ETBAAhEM7iY6cjTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajvxafxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajvxafxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8ACC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758200393;
	bh=pTUWy7CCvEOXuZwby3cciLuCrvEdhzJYH1v1ECjOEt0=;
	h=To:Subject:From:Date:From;
	b=ajvxafxmYk4pOTgGcdHInnE/Z6SdMwYaeZM09E4qkZ8UqRf+IBzjYQNKRRWPmgekP
	 t8dPBhnrbUysfE6M1lWbzPDEJ0srO9afk65V/1wOuGnnUhuvbGjvD1+wx7V0Qd5d0X
	 nC6yFdBxbl+ZXZ4echr5tBD9c3x5SPlX+KtdHVW3jBXt0XUUJGSWCDocJ33SZdaBYx
	 FK9voYlHRphUYJ0yWAKlI/Y+NBu5/T7jgdnTzP7C7cN0nU81H1yzTSL6KtvCT+9D4Z
	 4xLNlAjgpnDmsqFL7UQFiMivYr4JrROZ6iV6BtXcf9BJWxmGHSoaxlnd8QYfq+/rFA
	 Tt89GHYgkpsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E816CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820039357.23789.483743245785975838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03fc8cb8b955e2c28c448c17055650470d236911260280d73c7f7847b8a26ac9
Date: Thu, 18 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758200393
