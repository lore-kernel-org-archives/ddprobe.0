Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9521F91D6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778541634; cv=none; b=LSgb7zzl5b90cnZJSNkRsZ19B1OtAsVXKEUfe1C7t5pRmxPLQbW3NwVvArIFldlhtRVQItNy5JjqOVsE1Knrayb9Z5ldF2H6WkadRlf24buPEbpdbSwSwUeYi4/Bl3U/TnKdyI2RFGLw80MBnG8F3m0PqWMmSy2Xq6NLjZBp37g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778541634; c=relaxed/simple;
	bh=5fKphnr1VYj9DDUoKlhZjp/753JgIWUyDCgHzVt2zLo=;
	h=To:Subject:From:Message-Id:Date; b=qDXnjpAz+xdFq/QohzqbAyUA+J7euHE7u+1wTsQETmn+w7Tu7ppxConyt1TSj5LIdox+xz3KDZT2+0iCzhC/kw9J0ywgpF69c4BA5a3JwWF34ujrZY3DgM9acNnEmfhaMAzii966EHurSE6EudbMie+ndeBJwrnjPOvqU8Unrzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+S9KCX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+S9KCX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC99CC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778541633;
	bh=5fKphnr1VYj9DDUoKlhZjp/753JgIWUyDCgHzVt2zLo=;
	h=To:Subject:From:Date:From;
	b=A+S9KCX2OMKgs7sKGcqKvAiIS7nyqan6hjg/gFa4F8z+J4nnCnLS6QSzzzIDATX+Y
	 Tp0ZPJQXkxlbagHv9/DyjByWgLtxHlYcdkILA4NkyBJbrVdxAz30CSobkx5sqAGXQT
	 EdSL8q4kImyYGwm5LItewL+xcD3oKUZlHKk+LzOFiTG9FW5FAX7AfgczFUN7zzkQj3
	 aD6Vzypl21hB9VZHFljMU3kG6uD/8/dNL4STlj0e5vaQCdER3DqTI6mMkkTmQlhqmh
	 6/JqAvROwA4xaUk2xiIelkFUz6r9xsaLtaUAohLQ4tEmBhDaixLnaFMs+vdGqcNaMa
	 gHriynF3h9VTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7A9CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854163369.24115.4853338473965425166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba07dc09b350b759288c0207d055d29bd45bb59dc222f773331737c20dbbe311
Date: Mon, 11 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778541633
