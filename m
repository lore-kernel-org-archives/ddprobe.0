Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7297B387598
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778531434; cv=none; b=h83D68mDgQfvhaB2GE28C61H77qutGHWgcd4ZRWL1JgnFmzuEFwyeipt1+vMEFU6KB3IWhJkZU6FoU5UkY2SFn0Ts95SPlbYh3taaQOLdcEqobXzDSlorOw3plgeFpU9hTDpIwVlLYsBiHvv7KP8C3FWZNZ5+nTkgMO/0Aw/4kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778531434; c=relaxed/simple;
	bh=LX3P1THi/3YVCyVgtmjXNtbYdxqSum9j59k6k2vLkOU=;
	h=To:Subject:From:Message-Id:Date; b=CFEwT1ZCdc+OiseiNTuBZzTd9H/+Cn8f+1VZ/kkc7a71u7umF8AFmfOuD+wYmyC1Wp0B8j2XtlO//54jpzfNOfb/Spe0HTSIzwZxrGsCq2BF4PgWxbi08yY39y6pmtOy4sKBL+yYNG/XfuYierrx7vyyc+EW+CdhGLD5jfyu7GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiYtNMsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiYtNMsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA549C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778531433;
	bh=LX3P1THi/3YVCyVgtmjXNtbYdxqSum9j59k6k2vLkOU=;
	h=To:Subject:From:Date:From;
	b=BiYtNMsKVrdU1cNvdjBiQr6M/9S5kdb23EzEyC+OAnpL0s2XPaKS5zBAad0qlcLJa
	 MoQyRdEABRv1PzU/r7v7gIH6SCGw+WYVvFzUcvm3cyVm+B5TnlXVodp3UFViChgt9f
	 /GVUmUCbu348LlzYyi3kM4I0hTguWpLkJCLcVt5FUlKJpi7n6M9PE03esNwXHAfboV
	 RZiMHDnkjvuosEPE1K3/QtgIL0rsX+lcLgzklznxk8abJ43RixdYE2qEyG1TTYPJLO
	 gSr4YNQXqlAUYinh8GyJKyNcpeyePoIy0h7bFUa+8PSQgKv9ZPWwSHJ4EaiZ4FUzZA
	 zack4Yzvglf5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC226CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853143369.19853.12222715286528599571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c5270d94e08b85ef1a7bc8ac876db9dd659696fa08d15bdb795e452b18dc2f
Date: Mon, 11 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778531433
