Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279733A8737
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777564054; cv=none; b=eZxnbf8A4S3gEmqXBQg50YM4EblkvKuHcFWMRMPsPBTgaQoT5u60FdyFqRZbV59G4s5AB1MPNoGhMQONrI+METH77swIrHNKwDsyCSGJXTCOeciu8nJU6LGGKgr9wRhP7LT9v/EUiVOLyLEib8LIEUR1BZK2Nh4Q84rD/8P8XEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777564054; c=relaxed/simple;
	bh=Pf/FNxe87j+wMFOzF3OcJqLzlI4zLYyNI19zLcjL9Iw=;
	h=To:Subject:From:Message-Id:Date; b=lWWvuIrK2YukaxrMiPOF+173nLvWG8NUVawkbjnum1NW16AcP+xhA3J4ZKRoDy8AMTY+uGeHS9gtF0Zj9QqzLZI1QOyTj508N5e27FkypBtXeXaprsSe5jff5bUgqB72uBUORAE693pPo6wn9LewGeIZNgloCrsSdQdpGY/kdZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QarFW1TX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QarFW1TX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89F8C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777564053;
	bh=Pf/FNxe87j+wMFOzF3OcJqLzlI4zLYyNI19zLcjL9Iw=;
	h=To:Subject:From:Date:From;
	b=QarFW1TXAaoUGbrL2ftPbPptuik1oflafZ/OtGRQWRtVsvftISGnd88Hb9XIRCxZt
	 wcrym81fs+faxnmExgDzj0OPFs8okzucv62Qn+89xwRcSkrMlfPyrMxZyEvJEn+J95
	 pjVuDkFmLk5+PmbRIR8tqS7+UIWqpwXz+VbCTjW2NRCYg2TOc4R1XAD2J4LScD04OH
	 b3So5BEaJgQ/nK9vVWQqvAfskDNdVJb+bxy6PcljDekXfy7MHJqVgypv62FBDaTNhd
	 b/XxYML7tCLdnj6Kv2YP/Iw0rpiFclliPtfXBJ3i8OANICW8MbrWWqwM9jn3L6jR2B
	 xS6uO/uqoT7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA403FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756405368.15739.18129722833114875438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a04375d90d014374d955fb41fc12c51f7c14e988b203cf2c2c859632d7dfd1
Date: Thu, 30 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777564053
