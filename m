Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D5628726C
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756157995; cv=none; b=p1EJdntcOutPbxYzDn5XmIH5qdNrrpLJtar8Bb1N+8sIrLkI9G6uypQxkF6pLu2ChK1TJmreWaK3oHbPA10TaNYfTmUV7My8WL9BfSJjDEYqe24rFjsXKOsA1ntCv+VARGY2O6QMWP1VJex9nmHvMbrIFQFR66NUnfk1HwAbvhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756157995; c=relaxed/simple;
	bh=7gknIuBxAPdXtGf7SvgpVJFAWkhYVHd9EUwXQTUu+Is=;
	h=To:Subject:From:Message-Id:Date; b=R4ZBBWUWC2fQBJEnuLEq4kQ1NvZDc9elALeF1mbcLloDqEtZcTEo7Im+F6Qp9KnkxLqrlEOlLjG4+jEMuu3ALJmUMTBLUcmV3GFvBbIdjoeGH8wl2ev4EPiWJF01/thls/CWBdNiuY9w52hg0gBodrDyiQhsTZtY3OjC3g5sfoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXNm640z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXNm640z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D852C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756157993;
	bh=7gknIuBxAPdXtGf7SvgpVJFAWkhYVHd9EUwXQTUu+Is=;
	h=To:Subject:From:Date:From;
	b=eXNm640zMyppdb4+tt6OlDoTtWYVyr6OPQVRz4dsJ/RA+7VWBdR8QVno+5kQx8P8W
	 hm6N78Ta4mWe3tN79AlUhSUJAPZC7b+AL73Dx7SqikdIpblfX3tmZ6e+FnTkinAjy7
	 XaLV9gD+7LR/rrgrAhXFoVVHRBpW8qHhcIN9Z//iyfoeEfB750U2VT34UuVbKAIkAl
	 b9f+cfGbeFPQi/yyFQDJiH4q0y6gfI2eFveJSo1BEKNM+9okP/R+58GDt2gcHil0yn
	 e70MrJRC4bHailrpOGQ5g6Ul8McnpzhfN20Hhu6pJ1M0eLYlWZblm94cgUYZxErToJ
	 Ue0fP698Q9a8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEAACA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615799357.18394.4125272138099471032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b9366c6fd6e859a498b0ac70515f5cfb4f305c55429100c455d870dc361fb6
Date: Mon, 25 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756157993
