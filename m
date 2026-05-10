Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078D33290A9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778440234; cv=none; b=dXa+dI5djdVyaKQIxUY9T44hKE5mG9kXA1nkfwIU57E3032JmM4H9OVkRV8SeTyBXr/rgt+2Z5oU/miWO2yF1ZS9fLri73DfY9IdDNBYzOZN6SE2k9ADrXRuJIMHd31s1lvMxbDYmUrHTP5kfdtwUID2JGbENWM7OMOh/j42gMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778440234; c=relaxed/simple;
	bh=9kqQdwF7kfDwecZV3yapaAasGps0uckmkxPwH1Coej4=;
	h=To:Subject:From:Message-Id:Date; b=QeHSuGGzhpWS1oh7JqNYIf/Kr/itworyNqK4rCEeuYmnlXzwhXAiBJRjktYWUiWA+amyFBw6Q0OKuw6XcSgQH0wGz7yzMqEQbUWFeSwKZgOvvEybewkyFWHK/9kb1xm8kp86S+f9zwjZ/H9WR+iifq+bIBetrxsiz/zESRUfsyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsBvBB6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsBvBB6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A2CC2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778440233;
	bh=9kqQdwF7kfDwecZV3yapaAasGps0uckmkxPwH1Coej4=;
	h=To:Subject:From:Date:From;
	b=DsBvBB6UJsPfotWeqgwlHsP1NektVXQy01KowAIOmmlgoxGPjD7UlqmNtXem0uwN+
	 11prTXZ/Haixw1bKWuNr/KZxm0uFzpM11tRvHp8y7k78KQglNcS7BcPU6ZOuo+dQYv
	 aTVberXMRXfD553wDWLgRsZAGUJrSKlqAn8sLuib0qsSF5nheN3z5RLA/XBaKTbFFs
	 PrutYP5mwoE1/H7ABFhJtOMq+TdxN/X+YMc/WAN/h0a9zdzuiij5+mDTjWzISDNZPU
	 pxz4jdQprPqbWcMv86FT2PMXqaQzMltn0cEOVBZQqfeJs2TrycY0h+N4Ua7kAuGfvh
	 Pk9thqHiV7P+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5B1CD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844023368.30440.4223299670273782219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ca7cf62f6ccab02366e9fa02e3f4ef267293db8f1905696bc40a970bf8d84a
Date: Sun, 10 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778440233
