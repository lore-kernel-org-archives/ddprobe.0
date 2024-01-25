Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F541BC32
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706174297; cv=none; b=nmCBIdVFdVRUH4DIvO0x9wqr9A1x/QPbpHMvjuZoj8WIKPnbNLahBBeEulhMXZZhYMo7y8Hsp5Bek3ODJE2oFaHCj08bjwJjyoMrxCvAc87EqbbLIQL4XePxGwmcAY6JbG6pMSnc0Tgth0u/KdufnpIp0mf53mxrqx3yttBmmE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706174297; c=relaxed/simple;
	bh=cbmIe5H3s+C4HIvYGzOrjvp4UHM1HTJg4BaGUYCQc38=;
	h=To:Subject:From:Message-Id:Date; b=okcQDfEp0iDtZPNAIrs4EazGo5rqr4Rs1rV4YPGq8bwY2FvEydn5KSjKGzvVZwuAK5XbFjwLuxCmAbcdwUHZKJRoZ2HiYtJmc0X50in1mqGypvS32XITYzBPAKuNpq+T1MeVGs0rsbOmDMZO/QuyiSfjsMzrMJoEHE8j+6jhERM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAqE2p5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAqE2p5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A9FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706174296;
	bh=cbmIe5H3s+C4HIvYGzOrjvp4UHM1HTJg4BaGUYCQc38=;
	h=To:Subject:From:Date:From;
	b=tAqE2p5BvJebPamsgp/34IAB7EvGtYyxj5qXHRyIwbO6gZTTwOxzP6CTk7EMHhmWD
	 FsxcKlEFlfNcKbzSdzvIv4Lsau47FEYQAial3vY0CMO/CSNiR8Y9iUUn+wjJ+oZJeQ
	 uQ1SKHG/lLdGlw0KguRvweLtdraaA86Hn+IiJbJDMyYoA+oGVI/9XKlGw5cnk1gTLs
	 hvBA6N5cuNVlw3X/Wk/evusWUAFWTpnqILrLiEbjcwyBmjwHGY+7nRx6p1jYzUasNK
	 8MuhLq1lJf+W/DkiuM9+ARPX0RaYnbN3NgtdjCkfZylt+w35HXlxCN0oscPYyYYtzB
	 9zOirENure65w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BDFEC47422
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170617429636.5432.7997808555061199240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f6638ff09f1e92eb18806afd319a538c8fb70d494944247ffac5d80b6f3624
Date: Thu, 25 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706174296
