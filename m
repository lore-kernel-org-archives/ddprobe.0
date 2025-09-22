Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2A334BA39
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758523194; cv=none; b=gc6sbbOkUjy0ORRlVvZOzNsrW2VwOlclYelvdV9dOUUtE1rZMQHnVCxrkO0nUZ/qxFr+MVovyolKHz9X3pUmFd/F+P63WooL++xAMC5udQvtx9w6vSyF0Ty6TT1wib7h4WmeAZAc0IGY/v8CHgLp4Tdo/ECM7rBZ1uDmNxnpRVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758523194; c=relaxed/simple;
	bh=nFAjeWWpsK6NPyl5wxhrrolXWyFpqwjcW0BiBo1H+Cw=;
	h=To:Subject:From:Message-Id:Date; b=JLRxvGeShXr7yPeQbAHXs46gJHi/2TmUgA0hYwpujyvKz61TKzxXTyeY+BOp71VntxBaONZUJAjWpAGCyEzlrhjAhyJWbxS5Shy7/RbSi+o9Ts+sfUu+51ZH8Ff6gjiwblvAOM6ZGNRGj8cp3n5a7f4xaM236YasSMUQdp0OxeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdaQ3z8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdaQ3z8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1337C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758523193;
	bh=nFAjeWWpsK6NPyl5wxhrrolXWyFpqwjcW0BiBo1H+Cw=;
	h=To:Subject:From:Date:From;
	b=KdaQ3z8jQNNJUEUBfiBMFhtzPniD49uLMGxokk6TWAaoYrDBMa+twf2BD8JK0vjYE
	 aye4GdEPriEni/IvBq8P9ER6qmjKejYlqnYJcX1Ws6WS7Pe5/wb0rOT15rdRaruSym
	 8cN6cSB+AilyPASO3P4ylyT6nd3oA48Boejbum2Yiv8PK6YLljsoSdr39mQO9h3nVX
	 FJSE5YfgOFNwiE5UuMzlXAVv/xLP1ohp4U7XYjWUc7X8JzJmFsNee2RHC/tavnQrJX
	 4GeQDmYYSZLkbhjNQUgI2zY49YogysaUjRe3Xni6udcp3DgTta7C4Zw1WzXQFwdsMb
	 uA4LSSVjAluvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91448CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852319358.5851.935336655345924433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9497f89378af9d88004b04c589f616dadc7e047a205279d228ecfcdfd0fa22e
Date: Mon, 22 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758523193
