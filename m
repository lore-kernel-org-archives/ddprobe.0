Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34303298CB6
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751575794; cv=none; b=a6BfjUlT48hckty9Drp5s39ebYi8NQ7EykRaM+mpRpEV8bO6F78IWZXqqHYx03N7nUcU8mQdl0apKhAO24pYCHFOx5b1t/gv3a58v3O6kBo3fn5aHGEQt6mXeM6n/13RpmFFtLj+v1hBPstIrjmKkNygLrtRnJBLnkIf/trZU+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751575794; c=relaxed/simple;
	bh=6u1TWX2aagpBy3V7ZA+mO0UeoSW7ERhVXZxVV8QbKZE=;
	h=To:Subject:From:Message-Id:Date; b=EYJID9lTZ8XDLgLI2vwi0QGWb2jZal3TSr5lR08rASlzlc/F59LxlB2532R2ZU1ygTMLlE0vQGPFd48XIg+jNuDY27xe3IKaCrM2sF4BBov7zUaYMCEk9HMGv9vXOEeTAWIgrGSq1EwvH6ggb4Di5wP52kWO608Ii8hdSIsCC6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keMrr6+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keMrr6+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2025C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751575793;
	bh=6u1TWX2aagpBy3V7ZA+mO0UeoSW7ERhVXZxVV8QbKZE=;
	h=To:Subject:From:Date:From;
	b=keMrr6+xnMABpiVXQLFyM4CqrCZOfsSO0KEqF0WZjwZCJVKuX0cpCtEJ2r1jMX0jq
	 jgmpUfGUlSbH/XVaXDicORJh8gfhzPItEB3WJMiZHi7039+9h0HU1AQ9kjhi1KLQ2d
	 TPx9SsEf+4NKX9zDS4z7uPmW8RU0PCEvJGMoBZwlwJ0X6IdzR3mGZ/7bGbj13Tj3nB
	 eA6CEfFlqFUKE+xCCUVkqKksauBkKXs27PyUjtHBoXGMEmrJCZyNW0UcaodLIWs0DW
	 cmkS2PFjO/MQFYOhlEfsGrYRIyvIuOGC/yWyq/uCLgycxHHbU60JAjwgEgcMcUF0A7
	 s1O82hUB4q6QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26BC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157579357.23191.15124756586813865863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd44a2486426d894892b9cb64eaec2d3451f20e1e7dd0e7172e39cd404ee061
Date: Thu, 03 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751575793
