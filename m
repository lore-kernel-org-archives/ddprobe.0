Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181EA30FF26
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775668534; cv=none; b=RaEtpQoJh8IOBd1PFXN8r4qJuwezBYbccVl5nAjXdSoviV1g+poAyD52rHmzNew0gjIylILhy2fUB5pME7bWakyaPROp8Ym0rcex51/a2xnMGHjMOC+C6sGDJoVW53cmXZqpyFzOpOCZXzcoK6x9liydPN16164T0k1jK7Pi3tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775668534; c=relaxed/simple;
	bh=wzKHkiw+vdvfHB1RmnDv6fDX8FxKM0QQZ9ioU49ej2E=;
	h=To:Subject:From:Message-Id:Date; b=Zsgy1mUNhf4GIiYkUh2I+nSl1BfjgkuB514eabXfvqpwLI6WW5DC15aY+tb5tPQN9fnHQwtKL5/2Tth7/wqAtq310QS9D9Qg3sIayAsGoR0Sc5DCi2KBXGgOz8pMEQV3AAZe3oFELIaYCwXtQZRr3GkVNr9lkN1VC09FqgCgyZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaBpLu4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaBpLu4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB1FC2BC87
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775668533;
	bh=wzKHkiw+vdvfHB1RmnDv6fDX8FxKM0QQZ9ioU49ej2E=;
	h=To:Subject:From:Date:From;
	b=HaBpLu4pVtkr4ljMgEUGUgQIcIe+KcXYOpZG3VErDRIM4Wp4+R1qKfcB2/XDfthgb
	 8EX6BuFvYKfEgExFjQBXfSFI5rRWIhs+N78AKix3eiBm+RSW15hRlbQiTMT0lxdQ1Y
	 YRmZlQnM1d2dHIz63WA5DcOH/j3+T0e/8QZIhgQ+BxHFjcpLvFvOYojbOzXc2Pmt0G
	 TWlGlOZ1D6Xx/9pixbz4BD22F+agTTihMKeSdN1+ML7p/PxKbPycrfZ+umv52OXEgc
	 hy4ZrV/uYy6QGd7Kki8CoON5kaW1/1eZuNMInjVCW+yhmdRkbCFWam+iNfIbfG6w8P
	 r0qitL1kUZ2KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE1510F995C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566853368.11802.1365500785998115463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd0c1743c710b29a464223ab04b49272ef6b663d791922182a8d4bd6d78f7c4
Date: Wed, 08 Apr 2026 17:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775668533
