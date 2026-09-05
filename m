Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AF13644D4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788643234; cv=none; b=eTsZ0M+EGwETx0nctT+rWUJW2ufU2Aqyak55uBY40ivN18NkS0I5vrJLPAXbON3+X/THO6jQ580YbKP9qDg3qysLL1fALu2wLiukQsm22NZQfbwjPwo1/T6wi8426tBDYSBcu1uvZOj+YC/Vm4hqUULJsV3gOhbIK07J14c2vWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788643234; c=relaxed/simple;
	bh=DGhcvFCV8bxZa25SwkEu2g2AEBAekP08ZVGcfUN8KPw=;
	h=To:Subject:From:Message-Id:Date; b=OFnnH1wXV7/PZH9lAh5HzU9112KtqkGzcdxYhdqQN2dXjH4R/Yo0Ucat1mAR3cIhuuxoFK+plAZbHzWxJBySBJCyTqSyGCjMglakNe9HTTDEGYxMGUWnNAPW/Je/OuPN8IjY1LMlaijRQXB9T+bGnsdA0DGoYZ/X08kg/ouFSZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjYE6Rms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjYE6Rms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D081CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788643233;
	bh=DGhcvFCV8bxZa25SwkEu2g2AEBAekP08ZVGcfUN8KPw=;
	h=To:Subject:From:Date:From;
	b=OjYE6RmsZl8F/1OAN9pGtHvgN49JMnBbXCeRFT8nPkTRtDsM9V/ug3hwCmwFjPpzw
	 uBrmgkACHKzYJIhlGuzhES8CrexDU0M28ljAN2hNkU/Pe93D7k87PM8PT3dvA38O5x
	 A0qvaN2xCg0qBy2UMlizxw+W4s7wiOf0GQKMMQAaBnT+uITx7Lpw5o/KUDXmBi1NGR
	 YpvJtEOAFSiCk8u/ZP2/Qq5GZV+YT/9lI+Ja140woltoEEs2M5Gs3y5slC8kqcsgET
	 b4sykkLBxbLY+vzD24klF3cJ4ZkjbrNaLtpmwwhWBPEZ9AyevShUBuCIf0SB4KjQ2s
	 uUCeUIQgGZZWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE780C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864323369.15208.8341274322681699058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10beb3cd95eed7f8c00f0c65e67e95e4cca349d89980e147426f7e283284b5a
Date: Sat, 05 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788643233
