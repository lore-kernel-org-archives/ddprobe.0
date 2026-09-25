Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE9C2D6E64
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790333435; cv=none; b=ZQRPCxGpFX4jPxNlkrMyN0aTTm7a1QqBU0dp/MmsSj8TDNFhf1+8FZYlGAJQGyYvQbF0qdt99c8jX1v+t0xM5txxZ6rfUXTVuw10E/3BkA3bpbgm+BvE+J8GUk/7be6cwpGey5AvC/w0QnLcvFD+jELyWJgJj6wawPzW1lLAcqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790333435; c=relaxed/simple;
	bh=NEe2KwWU59//tIbFpZH4zYl1W5BajiZvbnyDdQq+iGg=;
	h=To:Subject:From:Message-Id:Date; b=thDqST2tLWq5nJO4S6Y0v/FmNYKoLhdF68jfugClqARE6rj6DFd7wm4qDV617GnwHSEQXv2AIv+USwQXkKzS0L/v4IAcPt+YS4RnPvQ07QjTRU2kSnCZTtvolD9Uz1LpCp7sw6415xTlkkQYUQhVJEQKFoHJrEF/bOhvlPDPalU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzLUbLAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzLUbLAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19DBC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790333433;
	bh=NEe2KwWU59//tIbFpZH4zYl1W5BajiZvbnyDdQq+iGg=;
	h=To:Subject:From:Date:From;
	b=dzLUbLAGC/2dui7LBGJhYxpZI+8sAX2Dtnf+0DcvEJ9uuPnGIMWqEqzIVM90dqRDx
	 femZMh+bONOUt5LmnO5Zt7SiORPguCCXIj2oQR+VBR0tV7+nAOuZBF1Ki+a85jana+
	 V/midm0u0rI/QgeoFWKTpjGz8RVggL3HLvXGv9vBjpIft9Ku+E7DqaKGbHuOySiQ7z
	 pws7Rcx338BEEiswPZ1N0CtTeGnEqiHv4hHzDpWlfsqXU2I0ArhmCoS/66oeqZZD6n
	 wfxGVm0+A2XwmONdSQuJDUJpepa9zEzPU3r6pNS8uXPXXQ5fEO3FpOudJTQCklssPn
	 2hf5me95WecDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE52C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033343370.13810.5084670646391792596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d6c48e431a6ba12af6b588dcadb916405377b4a6addcd9680e6677776ee953
Date: Fri, 25 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790333433
