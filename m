Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F158B134AC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747012194; cv=none; b=CvmftDrzDL/FXp2v8StxRWYNBa+/LpTHw+hNPvm9LBiRiN7UbZvU4vGyceT1NQkZi3x2NKMzvNjWd0yzZ43XwB14r1tfRA8OeuO2YRlRQSuWAvSbPfgHPta2veN7dltqPdSfWB4oNtrcchlNQGKim6nUNHxqgB4puaReiQcQJTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747012194; c=relaxed/simple;
	bh=6oIIry8Mh30TPWqFb3tJqPzck1jFHOI74F9cvbZEyYk=;
	h=To:Subject:From:Message-Id:Date; b=aQGa8+zoTxntxR0NTaSqi7BUsiRdFA0se07AuGeEs9I4DKHPQpBoApMqIhywaK3ONcJUt/dXgSAF7GYiVoD0ld/I/HMP7OmldEJ9vU7ApYuJZOTMz931/bdUaU8BH6YfM4xMH3qdWO7Zt/bf9J4QoKLLMqf8sy4fDt+62nj9B3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sI+glqrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sI+glqrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E27C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747012193;
	bh=6oIIry8Mh30TPWqFb3tJqPzck1jFHOI74F9cvbZEyYk=;
	h=To:Subject:From:Date:From;
	b=sI+glqrZKw+rp42s847CmpRlNZ+BMEXm4beeCU1Dma0dKtJLOyd+aC3r1dbkOMhpl
	 hI8ahjFsU+GZlbQ/fvtNYdNsAuN9SENHbpDp4oMWd3RpXMvf8IbnS4vEYwM5+xBJOC
	 x1REGi9jDfYOgu5oTkH1t++BqJjZxTzHov/dsdPh0D0R764pPvim531xwb7s5Tj2nv
	 ZbaY1BpuU8HDIStXtlM10VGLLsnx8a3zw1NYbgqL4lx+gDyDJeVq9APKNhmCdWt6O0
	 0PcJJUaWuorqTcjjPJuAbW0bvwP8AxCK5rXFwn4DzzdKoj1hvCECWIblzTbimjD/8R
	 rB20fy3zagjCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94823C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701219357.8457.13434941661602182585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23eb03b57a10083238743561d372aa81094976971f3b525f687f326989fc64ce
Date: Mon, 12 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747012193
