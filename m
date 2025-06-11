Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A4A1E9B28
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749679794; cv=none; b=nUpOmasI5HPpiVYYD1EqjaQTY5EukznCSrmc8xBwQsKm5Q+o4Jva3Obx9yxWremO/+ec8zqtMFtYQupZkjHKux0R0iY8ggI0FMnjtEdFhY82K71lS6tm28DAGpQeUqA8wLtc7/pAAawIbqoLj8jWYSSSIAeZbwRXBPpE1lJXFuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749679794; c=relaxed/simple;
	bh=VoP8E9b50SKC4b8Q5uY05gV98/PYj47He4VFpdyA8cU=;
	h=To:Subject:From:Message-Id:Date; b=Urqixs0hrYYaM8EnlI+nWSA/5dfvSWUPXx3b2Jh2L2jk2O1Utt25K5PyrvWG+Gitl8JONlNQaGXvkHwmDUhy7YKueO959VKP0O0aQViu7y8OgbbiXh8OMZu2jX87LiH051p7YZYewdaUpF9zcXValv+3/1Ookz9yx9WJCCfwBQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REdUhplE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REdUhplE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3852C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749679793;
	bh=VoP8E9b50SKC4b8Q5uY05gV98/PYj47He4VFpdyA8cU=;
	h=To:Subject:From:Date:From;
	b=REdUhplE7GJqe4OI4jM0TrC5ynJGzqwM0Yw7elZYVmVJDMLNKDEbSy6enc7Kcmqts
	 EXvQbbKGAcgcHEByV5tj/CRa/EQoB9G3QbOcZHj1aaag3tz7Sx5TCBmKuBWM2wa5rl
	 8Wqlat5rXJsdiFy6OYqUagpJoKsMNX+8XLUpQBZuNrUsvXgtj/6K/B5+0TFGUi1xcK
	 2zpikdUjS0DH8m0jQQDyThwnGEAAKPX/RMVdFNSEqxnZAj8u1hRendngum95TCCyCZ
	 MZgTq5dVzPrUIAg2wLPfjQw9PALnvFvN6nlB7M3uA8ot3n+B1FDlkzRst65AnLe0D+
	 EsGGl1TAR/FjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA1C71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967979358.25915.13800334870067952886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98418750f80e8a398e2bf76d89e0f54f241e4d6f5ffdf565b879bb553788bd4
Date: Wed, 11 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749679793
