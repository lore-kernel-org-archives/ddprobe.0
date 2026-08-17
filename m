Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D79123A561
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786994434; cv=none; b=uaCQPC3nQhEV/9DsWww286yKcJ/vhY0i42jUHVVRSx2tjsp6nJuN3K7AkIXifN4TC/iROppKLpwdw2XhgJHb3kMpGQx6qqoZQLRk4tqANElBr7pysga8TohKJ+8r/TMekxDKIq2d4WeMrT2C75h1Q6Uedzt5uYB19mTCf8pk6lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786994434; c=relaxed/simple;
	bh=FGhOyxyOK1gzhzqYWtK+fOH1J1OO21nY4sEHlCeO6zs=;
	h=To:Subject:From:Message-Id:Date; b=MJP0Yl5lqpUYsfoM0HtEKOF6ZrpElV3Gu3UKl9QO8MW04ch2cjRLZzLil1WdzfF/ec3uQH3RSF0SNxz9tiKw6DYpBjUKaZyK4IGjeYiPAkWfnKnwWimRgdWEHh9/sKgLuviO4WA1i8fM0KP7p0Z7XXOOZ6azgoSh85blKsd+/0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKq14Rt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKq14Rt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE3AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786994433;
	bh=FGhOyxyOK1gzhzqYWtK+fOH1J1OO21nY4sEHlCeO6zs=;
	h=To:Subject:From:Date:From;
	b=EKq14Rt4WlInc1+rrQ5cE0QZmpt+3PZDPvIZDXjsWyIk4yUgHjTLIjcJsPIZxDbzl
	 UHwEubzLfzofRK4KT1ON16PUuPB7+dIyCsHRIHcLlBs6kbzNU34qppiBIf2uGgoTEE
	 fo4XlkylpUsjmaENtm2ijdI6cOiZWk8vfF9/4gPYSvW8+i+5V/J38vYaGB9ZY8q1Na
	 JHd+FRCX+x1pl5EThQ15m/Cd4xkQJNHYLlaXGJkE5MGdMiYvNSAM8yPJjYtaQK1Kv/
	 e1vpm7vBFB26SoFSnLu5z6yv1jABOlE1YXWG+EXf515QEwSOYdkeA4gAZJ1biYrMy5
	 hGO6oAmgfMnkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B751FC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699443373.3221.15141437664968805076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c4c249afabe897f0136ea7d38b90f3dcc5ca96951d4d0ecec4a80e16577635
Date: Mon, 17 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786994433
