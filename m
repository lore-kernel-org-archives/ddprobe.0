Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11106330648
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776314254; cv=none; b=UfgNHPLmp6C9kZ8b1xXat0uCwTj3yNHNrJruPgTZC9k+R2L7FWxBM6FKs+njhpe+UUsYkehJQno1lwQUGqJY/GGN9IXDz3brC24ES/C5s9gaLqqLqzwGpQcGd3C7KtyQV0qvwsb/IOXv+QaJwUeExa37aLhLZ+d0ElFOeK38YSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776314254; c=relaxed/simple;
	bh=w5oIHN8MQGLzLvidircMWHfnplDskj+IDv7h5bycAB8=;
	h=To:Subject:From:Message-Id:Date; b=Rw4Tt6uSeLWvMeQtA2Bt7xrgTO/wQxzuupy55ReNdQBQfZZvn9Bpb6RuM7meM7TvgwVpG1XRzsgScVcZJIeF9QvLqPKiQjo2iWmmQKJGNicCzfbov1DrSXrBxxMFopgGwV2rKRPSAdUfFKTCEgblD7GnH58C9RcZkBwlhTWMBpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ueajlkuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ueajlkuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7BFC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776314253;
	bh=w5oIHN8MQGLzLvidircMWHfnplDskj+IDv7h5bycAB8=;
	h=To:Subject:From:Date:From;
	b=UeajlkufWiWZA87lYUonY7W32r9XxCfum6O0aWLwW+XcyLt4tXoQ1/3vv5j7krDlL
	 ijTcCmshY8b9itIPbAsC1Qr1nBEe84BgYZkwQGUiaL+SlCsB2G7Owe7cq1jiPOhzRA
	 JwM5LmNu3iU44BnXWjM/Yi5wXGQh7O1ZhWdv8x0QhYAANTtWYVo7WuKZJYHaUf/Sw9
	 cbX/2DJBYVcDSMycfhHNxWSAU95NCbSgCTfSvuecY+YhPtEGEegNEVvkkOL2xJf8Vf
	 ZYtn5ApNecLDpUj1OBQymxczDzCPgVmHoTIXb6dkD+GYXqUbl+1GeU/XAwKX2Sfpm7
	 cltohKoWw9Xkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E08F433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631425368.586.1738679242070194612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae87d104f11f66955ad5babe3aa4b550fcc21342a95155925574c26a87ab8cd9
Date: Thu, 16 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776314253
