Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B5A229B01
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747657194; cv=none; b=AwMZLJFe1Zjh6ks77mv73SFeF1Dew/bkXEL+vYRGx+YaRsVKNnQsTozWbohl3dPHZjWc3Qx8Qdj5LqNqdt2Xd5bCwoTmrBXa3TFnYt5NAP1DVfYzoOJrLa1HBVpkAq5y2ib7Iv8u4cH9mnhKRJSCb4UVfo4WzopzSm7+rIDVlrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747657194; c=relaxed/simple;
	bh=vr0ickwpwKp8RWeDoRTdh7c0GxgVGpf1YXDM19kKOf4=;
	h=To:Subject:From:Message-Id:Date; b=NQY8G7UcfQ/xOcob7wRicilMuoQNwYqRRktjl+xrLI+s9KUBIWuAFv9NI0cVgKQ53g8ctJLg8rZeL4cT4uH5R3Ww18IghIEwNbQtxdBKnodkwzdpPXYnFWrGv0VBEafV66c6tvWAouYPlq9ynQJpfUPlfRMqshIu8lT84mgCWyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lG3m/FiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lG3m/FiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD0C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747657193;
	bh=vr0ickwpwKp8RWeDoRTdh7c0GxgVGpf1YXDM19kKOf4=;
	h=To:Subject:From:Date:From;
	b=lG3m/FiG+V0syWKsF/Hg83ze4gvl4Lli6aVrGoz5Wh6lqC8+Uj35IBjOGdduIggG9
	 fGWX8o62TQZBRsLBdj0jB23B79rdcy+pyskDa5RWX3+/aS1Qpr1ffvwcfzn0Qhgw/Q
	 0Kg8lIGLhQkGsiF96efauE3xix0uphJeJFkjIl6M8k7WqEEUfnP8QSGLHWRyLGeh4v
	 PfILcsxy7zb5dUxZ3PlKjMk56U2x8oOs15MhkHxvQWDof3NTmb0bVpmNwJgagnt/iT
	 nrYGNpWQF0yz0svkgAZhDfnxt9SJvnV6QQYv+lExAaaZzh/HFWynr789YwaF/7588R
	 5PcBCW4xOysaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED33C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765719357.20735.88022438054905474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2478e6af4733b0b9024540a76e82b5fbf0e1ffb235b73c40552fce9220b66482
Date: Mon, 19 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747657193
