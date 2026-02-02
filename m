Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3630721FF21
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770011634; cv=none; b=flEhoKzUhyZFD1TL7llEyXMarRHmI8uP42RHW3yDSnKtuckqCYaCx12vmNzpgFmWOl+rKDGxt2FUmoXu/8oMJKYE9QAOy2Vm/IxxRl1lrLLxolWfdQFd3G6tORZxP/SMs8fYexJofcs68BnSLgYwHlVoHp5zwVCl6HxpafN/rxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770011634; c=relaxed/simple;
	bh=DqUYyWYJVVFLgv5lrbT7/t/yG0pUVlEeknfdlYF1VBg=;
	h=To:Subject:From:Message-Id:Date; b=orr1JSGMrK+0XuvSCdkY4nxwD1Guf6Uek79lDYbteIomuwYmypXG8WSeKdy14yl25fpDu/n5/oSDbZWteWiTpuDGumgID/rixr3QAy/4ubR6zHwxUi1gHZEwqFF90NEgBamthnXULAP6TaWGUWc42QgP24arK9vSaTIoUvBEXw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyDVebKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyDVebKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3137C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770011633;
	bh=DqUYyWYJVVFLgv5lrbT7/t/yG0pUVlEeknfdlYF1VBg=;
	h=To:Subject:From:Date:From;
	b=PyDVebKA7uVZshAao+SuCGc+t9YEpV2m1RRyn/w72ZZZqsDZ9/k+LOlMhuE3uZk8u
	 SbEOSjjQEZ/r7sMO/oE7JDRh31/F/C69fkgwdfnXqlIj0mwWxTFV0BEyvVa6hVclc8
	 fvW3hkitgg0b4UlcPlUFn0WH1lQX3KHbgYxxwVvO4but5wBsuiQbROsNvlkORFERX7
	 3//nRLFcIKJb5uno3vdvQLe84/1dmoM/hh4NBJE7289Ohg2P2wg/9GPmiRyzi5XYN3
	 Bv8H8SmeFLpIoePwl10SIbI1FD21wgvDtvNnq4BfTHtiDtOdBtskcHX2vx02pZJ30O
	 13lUEvDoj7fBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEE0D172CE
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001163361.8751.7299266325421430783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c863a1c1196170392c3926ed5c79f5e03e11a50022b9c65e746a1046943d760d
Date: Mon, 02 Feb 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770011633
