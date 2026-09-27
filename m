Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4733BCD0B
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790517634; cv=none; b=rCjDPEJVxGampf5kRnip49M/kxvE+JYiXgKPrtRY+T6BH4r8qsgkRDnPhZQP8Oaowk6gGrfF3Hn+amnkyMPJIhylLLOq9yX6HIcb/07z+MKuo+pVckTMvsbVpm0NIYQyhKeBs1c9ZwcJ4Jn/D2vqcRvjc+nk/0OClxfn2OSGJDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790517634; c=relaxed/simple;
	bh=rpGcnRXCWwYQAPNlm01NUkAsLaqYeF/uRpq4vbpGXok=;
	h=To:Subject:From:Message-Id:Date; b=GwDKgl9NNxLdQbQUJrwR3YXik7Svk1FGrATpZr4dX4inInLlTOeoX9pttmaz7JkFVrxdRI3J9YOwCOs+KAMz6St8PrsM1V+RlOFqgYsf9EIC2hzsn2dDjNpTDvH3FVK5kG5IBjdTzsDSigZRvL98H6MECxya/odSkZjbS9DyZZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCaYivut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCaYivut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4A1C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790517633;
	bh=rpGcnRXCWwYQAPNlm01NUkAsLaqYeF/uRpq4vbpGXok=;
	h=To:Subject:From:Date:From;
	b=DCaYivutmWctpSBbQ5AjOEO1+sk56D3X4TALMg3w/E5v8Qh3nT/1CYheHY0ay99eD
	 WE/twSLcr26eL9Rc692jdxS6H98aSkxxvFZ8JxCQ2pXO/XX6eeU8QcZFxJaiMTt2l8
	 NBCu15W8RwJeiKmZI7kEpAtEjYE0FURN3dPoPUzoM39dWEVhejpegOxvfwJtTolcHH
	 8aSB0tbYZcbftF98lz1fZfL6cDR6HNcP+s479n7WODUOxrce96iUZjbo2ewpp7oZEw
	 3JG1+2IZCqoGf3RrETiT1Y4IS1Gd4uzDAiMcZNPB16fSqYe8QhpbWK9FEM608IWKnF
	 tacXuQ7ssW1lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB169C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051763369.23743.13783664937438068900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954e506882b7104d43441bcb8d3453d2103c199d0b005b7fd07cb7330403bff3
Date: Sun, 27 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790517633
