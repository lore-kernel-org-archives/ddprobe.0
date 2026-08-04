Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4D9438025
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785841834; cv=none; b=IhWbl1c1/AcH7nuYllJyvpKDjg9/YxpkpBGdUT8FpjXkJy7uIq5cTsc8I8/ZWq9PnenspUnstX13cZRaUU6e5QqkEUdwzn18n9afkns7+lp/U1ry4iQ8tbpa1Ki5WzPlw8SwksSdtVfojS78bFegw9gnJpt+u5kGvRAWytLXuO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785841834; c=relaxed/simple;
	bh=c6QP0PQZAZWcP8VhtGvYDkifk8ihPAq24oze55/SO+k=;
	h=To:Subject:From:Message-Id:Date; b=MjgZ8ayynikJzobaEYHsgm9DZcdLB/UJbllcIDfznN6f5Zd4TXdbgne9YLwzzRSOjbeWIQ2Wr4ix2hxOQ6S8AqE5QHvRMbAIfd98F6XyjyH0UJ1++tFnCq3IOgEJ5J50vEkawaov8y9atUOQCK4+aZA1e0NwO1JQdO8NYb+MLpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwvoe6ZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwvoe6ZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76D8C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785841833;
	bh=c6QP0PQZAZWcP8VhtGvYDkifk8ihPAq24oze55/SO+k=;
	h=To:Subject:From:Date:From;
	b=fwvoe6ZLivSWUac5xwuj9AtzGa1Qk6NoojkNJH4F1P4ONdylqAuOUvA1+7myfh+Bu
	 XgPOGLmTdi7PIYPogrnPlG/wtmD0MnVLQ/XXYU4r00+EMOPKsWWfFr9toO8+7p4G+z
	 8WS4qlHyzklsHwrKsEykktmdGev6m7PTZ+AgfiiOz7jZxcH8VwuKbN9Lm2tMAYglBM
	 H4OxQgluuwvWHd7iEr4xjlzy7NJJS8r6gIxEzzOWxTQ+psKOHCE8rO96XQAJfeeKH7
	 kKLtcW9lCU4ubjzUFamQNnr1C2h/2NfpBdlx54X9z+kzKOAhq5kwXLuHMaqiVuFvOS
	 P2hoY04MNsjpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA788C5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584183369.8609.18211493124495569702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61121004157af2e3968947268a3554c8601e0fe394eaaec21db1ab7673f53593
Date: Tue, 04 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785841833
