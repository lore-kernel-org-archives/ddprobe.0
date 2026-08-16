Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF96217704
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786909234; cv=none; b=X9RUgHBhy1wI0fPeX3rgXzju/5CehsnnRQ9c4cRBeg1FinTE17pphMEmBiZuUv1p476LlwKKvthgKKmnd/74UXaLANXAqjxn/VtdizLnk6DXAV6vRwnXGmXp55Ehn2on1xsffOFTdlhN+s3Ag8riatX7+GcD2/k7gdYQyWuYLtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786909234; c=relaxed/simple;
	bh=6kM2lQN3LR8BLTGj7m+ai2oIt+m30i8HAYWq/MR7VKI=;
	h=To:Subject:From:Message-Id:Date; b=mIccZtc058b6njuFYd+pgpYJ9AHf3pCjvNMaj/jCsobYpTQP2fggwVwQwb3CoFjJ9RjnRo9mTvGE2p8bGGm1J5J/hh0iMe2FzUoRs15EewOYhXH0wggOgWmrXk2OWXMjOqMGMnBkoIwa8Vwy72Cv1RcAvh3wBogk5LioR4PmIPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsXHmGrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsXHmGrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D251BC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786909233;
	bh=6kM2lQN3LR8BLTGj7m+ai2oIt+m30i8HAYWq/MR7VKI=;
	h=To:Subject:From:Date:From;
	b=QsXHmGrLtDNGMElpBPtWQ+peY4pyb69vOU0rAS7mbr3RUHp8jh+Pq0eulnqLygFu9
	 r0ncz7CazLRHSTg8XnxriORU/RnQoPZDKQ2W7RVeUDNraXaDmP7oq6kKIiWtR4Bxtd
	 JWFOR+xh3UU/JNIbfOY117IiqSmJhamUbtMeK7e35c8hEXubv2NY0W6Rs3IffUfKwD
	 p+V2yrDeG6opAQsFFJzYlpeB2X/MqWafeeIBZuYH8ZWGBHk9iibN2pKETyiuj/5aJO
	 3JtVJo5WFQ4nnQh33ySP12RDoNFFmNORXxLSQxwXxkbeibeF8YKdW5Z5gwrwzuGzBM
	 aiK/Ck0JtuVyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC22C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690923368.3929.7877343814807375922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea53bacb826a7b980d8fbeaaa3cc2a7f457c9a1136f492c2d8c03c0059b87beb
Date: Sun, 16 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786909233
