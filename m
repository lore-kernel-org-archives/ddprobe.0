Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654123D8916
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787215234; cv=none; b=LRK5KrpfcTKp27rdK5m6pS+i6/4qfEhX46PWgDnIMPGnGSUTbMMSNhcyNgmnk0WskPQX+pWhhRvKKRBcpSPmYtDofHh28tDQ0DKZBs3YX5+0RW4Dzmx6FZX4znsoM/+HoP7/V4vA38lQ5lAC0vW7OZw0HVngnaMYQXt56XHaHVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787215234; c=relaxed/simple;
	bh=aiC5TSKaZw8ZhDrtI/2VqYtWCXkRtiKBQJQCs+/OrAo=;
	h=To:Subject:From:Message-Id:Date; b=VWphduHIbOl0sdlkpRJKH/VT+Hbz+JdrXaeodRkhAWfUfGdxe5LLTCzKh7GU8F046uaRIa4yNNlsLyhnhKXPkHrOAiFWvIG7j6vJAcdVxE8n7fKshFNa7r12LNwmcWd5Wh6fBkjz9yOb6vFcdMbdVrJA63s+lQ3/uy127+U2MvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0LgpQQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0LgpQQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF72C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787215233;
	bh=aiC5TSKaZw8ZhDrtI/2VqYtWCXkRtiKBQJQCs+/OrAo=;
	h=To:Subject:From:Date:From;
	b=A0LgpQQDn3ffN9g4DFJWvMIt2AH3K/yTCAJhSRA2hpMu5hQnfB1ZUkSEGutpfV5xt
	 5YdUc0NqFMt9k4OheUba9V5fhrrDjK2on3Q9JFrx78rGQmpk3u+ZH3UMb/pCYqBwcz
	 PlcKVCFmM15afm0/WiHoo69cTQZ/kZr7IYIUgplhdJ9uhjs9uy5A9a1Hx9u9mUtDDT
	 xH2GoM7RObQGhp0uSyvdecUupRDKQFhxsSB+fUuKV9Kf9B8VuiRONNxGfwErcMqNXe
	 njV2kP9+xsgTusvKvb7yUKsHaOHsNMcyXTJG1E1sfCkoxPrQKJRVgy42ja51S1cSrD
	 DnV3UdVxNcBnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B714AC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721523373.19790.17388474515384901310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d927197e50f76f4f84eb462e59abe926bd981adb492d01e10d80b5bd0e66794f
Date: Thu, 20 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787215233
