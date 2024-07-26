Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178B536D
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721994954; cv=none; b=fsPGX9jud+IA9hxjvPfeqsjcCYQgKEoA3vmF+6mGEgUBrj9HadEQ3avIICjpJByoduHGsgTvdWn7/sN4uDY2VaSDN24BubPR+Pq2rp/Bfv12y9E+Qu6Ryb8wcxrxbEKrzg6jevuFbX/AuYYhem4dSkn9gpTVF3kLS5mmLmvm4nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721994954; c=relaxed/simple;
	bh=2kvwu5c4GzyHgOp68dCdz8UJlNl/rY082T0Os2G3hBA=;
	h=To:Subject:From:Message-Id:Date; b=hiULSW8UwyeXxtRvLlvPdrFEv3ZR80bidEH89hyJKfJuiOheO5p85kSkSptiyrVMvAvzKvxHxnVgW3CYFjCdjPxAhHUHMIKViiw2vl2UDJbzJjCbJvFIXBC8It4S0OuLqIoi1GLNk4VT+ByNfKQL796MrMgjKduUs8EuVfyL2Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rl+38mu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rl+38mu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AF4C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721994953;
	bh=2kvwu5c4GzyHgOp68dCdz8UJlNl/rY082T0Os2G3hBA=;
	h=To:Subject:From:Date:From;
	b=rl+38mu5zcsml6MjnKb6qOxFD2i+/5/37z4iakYep1CDpNk7gME/6CN1gJVf/HT7g
	 wL+7Ngp9VJWdMY7NVbmKvOr454GN7hcarhTv/c1xAb35cCKgGDIBySpPg/c2+tDzA2
	 sAoxD+3e+8cvSMEVNiK7Dvz27+03TIeOKbTdZIP53ji3Oip8Vnya215Q4U8YLZ2+yC
	 3R2eMWNQiGFu7VA+dq1VrjTf+YXI8ZRWzG6djAHYE6MHgbxA7hWbqroTLPP6BncCQ/
	 K6YDW7fvrEm8KWyqgTKCWSy6nWIqv2T3ZzMSuGq/SKBPo2aNmAQ6yPkZP4pRT6O20f
	 yYCKMg6Z/YJwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A705C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172199495359.19892.12113580992439781814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51c8e389bd0d529f4e92d651c133c68e5ff4f38f8fd8998eb09535f61d05ac2
Date: Fri, 26 Jul 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721994953
