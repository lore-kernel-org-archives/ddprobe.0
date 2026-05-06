Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF6D9463
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778039854; cv=none; b=XWN7w0zlCJ9uWubiLLPLj6w9dwQaeaGBnTCYwbkm4COOmbvCIqRzgiShTGqxtlaYvcH4rQV7nay/JnA1WHHgq3vp1wDvzgAeqJnu7nqgczp+SnRTyDHjPXqofIWZVNVYVhZALmE3J94RCc4tkmBwSw6BrSIJuQk3MIkY99vbwU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778039854; c=relaxed/simple;
	bh=y6N7i1dWGE4kUWeg0/kkyfMQzMOUcOUmtstzHtj4Yao=;
	h=To:Subject:From:Message-Id:Date; b=GJ9l63oS8sA4ox7IBgx7FqYCUiQWPl+MdoR0/0I/AtJy6/uA0qpevOz2BUBfSmGsp0ONtb8eVz/BkgfP1nSd85S+2SiGRG8qs6DKAOxodLaBQJE7Tb6sExxqpbuHn9Wkhrg5pDOp3u/cW/jwfVRFhNMhwAdfdnicWAPQpjedoWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8J+3fgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8J+3fgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83E5C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778039853;
	bh=y6N7i1dWGE4kUWeg0/kkyfMQzMOUcOUmtstzHtj4Yao=;
	h=To:Subject:From:Date:From;
	b=u8J+3fgSwGxC+9+pfD6mesKmhbpasgwvsTUUPIFu+gwc2a+tHZS5cYSTkqzA8CibE
	 27i5FXFLdUuzHO1XAoO15cKsQ4v/pDm+d0IcMvps1Q9debJ38WCyrMfOWEaFWKxI+/
	 TMX6BB9bMh2JRlI9m6QKY31kxPaFJ3Jvwy4N+iIHVQsYsPceAd6opBzIVU4hNggRn0
	 w3bYaUpjIcT71ZanmdHHBo2UlZOzE12mCFSDhmYpXc4jBZdRViuuIzNXM9hTkTaN/B
	 WR8do5zzEyEW4zcHJ4FCw7HESpF0ztoOVVA02Wbn/XWgLzPUz4e8iNK2I3uNYL03GE
	 zslph1tZHvkjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA27FCD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803985368.31358.14986156434724767759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1807b36249b00ccab8a9a5255d9699e2dbdea74d1558ab427bbb44ba80f6f53
Date: Wed, 06 May 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778039853
