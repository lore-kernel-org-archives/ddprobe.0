Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AF612DDA1
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754268594; cv=none; b=qwNz1Zq03D6sXtM+wrdafIV43FAIKIQP6XiPFZ2neTZE+Qwn7tQSth4F9B1x/Z/G3gxF0QnjLPt0gLSm3LP/5aMJIVHo68C+z47ADI6i4w7lKjKtmzq4/Pb+COKRvqC1m8Ni21YWGlwHhrtlUGmUdyUJMLB7AXE0vXelbExGFZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754268594; c=relaxed/simple;
	bh=Gm9azElVqplygwlfWWkOC8q+Ngg+a1QiZZrIUcGSzCU=;
	h=To:Subject:From:Message-Id:Date; b=Qf6DmfGJlrTM0dyy0e61qTJOx3veJQCSNWy5kqs5PjgWBHTh+1shpO6c3HEQbTu8+fZ7XHVrxUouj4UyC0lynwuOe6nzvTOxWmfAAe26r3yHn672x/n0jrdAVb0JQLimgvL+b6p2lRvlAH4QbMjycaNQ4sEDBr47oexgzwdMZ9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1Va08dP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1Va08dP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B28C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754268593;
	bh=Gm9azElVqplygwlfWWkOC8q+Ngg+a1QiZZrIUcGSzCU=;
	h=To:Subject:From:Date:From;
	b=k1Va08dPcTn76Fw40wqN9CRzOQw2WA+f1paaPpkwfZGt8WfoheEeNfMIm0fikL5C3
	 K75qLPOxyrYxF3g4sJE9aKwR+sffcuTXFxG8RCHmVdUOGS0PDw0V1QgxAFY3/hwFOr
	 LnnH4zPhYNhzeGHPjUSyK7PQ5ohvg+wLPYkr4SbAoRx2mWvjb91tQYlnjtZkFPzcQ2
	 epQAL+zTo70yHL0Vvp4G+ZiGs1SdSC5DuKQ2JDvgmiKQj1Di+WYhFu79Tf+uaJSXSY
	 UJjqjcZAnAc2t85WDWPfL1X152haREmMh3bzh0jQ9Sa+t4KbdA5hbx3tO567YgVC7j
	 /tM3ciJRAn+Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EEAC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426859357.6236.9549575575811444437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c76b50900651a3d09117b4be2d5471dbdb6d61f9fcf20cee1607eb8643e3363
Date: Mon, 04 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754268593
