Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654477464
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713395963; cv=none; b=WiZgeq3qvn3sZXiKw109VA+4A0we4Rl/cJYDmy/Zxv/2KvbpPjj5KctSYD6/tw3fZS3AG7V48BzT9iLn9yWDv4gk+wJp0DpoLO9DXyyYk6p1444QaBxrpiwXoHYeXqVVgMKcg4nTowalAztbmDHSKwKHf3GipXISiGNiQbyjfng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713395963; c=relaxed/simple;
	bh=kq7UFuqPXj1H7yAbvtPU4iXx0sfBROWSVboH5tZZ3Iw=;
	h=To:Subject:From:Message-Id:Date; b=JUFzLcwwSGiv8G1TBPOvkmdlowC2PueRFAEZILYMOGee7yfG4l4HZ7Zu4uZxsBe3tXH6nV0POOf7hNEEELVKf3XgL/JYMdr4LW0kZ8VVbxkjVuSlNv/nAzMNF1mJhrV0gcNPCQulRPjUQSz8XNv7PklGjlmlAz0+VNU88g56sLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBUuBsGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBUuBsGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2105C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713395962;
	bh=kq7UFuqPXj1H7yAbvtPU4iXx0sfBROWSVboH5tZZ3Iw=;
	h=To:Subject:From:Date:From;
	b=jBUuBsGqb8yrqDMidS7BXeloL42CUW3YFFo3omijf5ElrxWriaDMuu8BNJyd6R4ns
	 FniumtnQY/HVNtEbZjvWUxbj7FYIbp5oM+qODaFwV70rdSgUuJqMG0xU/g8pZtjPx3
	 X52YY66xVvLCd9pub0L2T9k0JnlfW59AQEs5xW+v60FZlsUhBpIRgoj43jg9hUONdn
	 Ia7iOTN2JJtFsmMomd6aAVGDKh8XJf0wMn1DgAezAYC8Zy2Z6VbOmJk1xSQuqXdDzH
	 afNTkZ3BM0qqkGCAOeEHTcFvgSz5plCxep9nvZWfKi7UWiNvuETQLAJ6J5kWEaOdfv
	 x3c0OlWt6Goaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC538C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 23:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171339596279.5607.15096175933249971114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9bdd3452787820d3c96d6aa5821ad7669c7094ab7174c82484ead978246b5d8
Date: Wed, 17 Apr 2024 23:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713395962
