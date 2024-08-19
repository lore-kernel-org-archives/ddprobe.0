Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4467BD531
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724090154; cv=none; b=UnL2y30Fust8+52QlyM3Y/QSy9NRSjSpLa/aNOEO1YiICKPH633HQCvMbkP9vrrcjqN1o+83m58PBtUHo2sVhGVzJ0yxXiI5QwnErh3+JCfA5wetTuoba1t6nvak1LaVEt81x7EAf0rGvx7js60TsFfqrkQnTGu3Jvm7gAoXIqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724090154; c=relaxed/simple;
	bh=JzbXjtgyN8CzdysaE7T5pEtay2LpRJxRVnHjQHJ+BO8=;
	h=To:Subject:From:Message-Id:Date; b=kFuBtqLNnAJ1oQ8eG4H3gJMGVi0PWTYTl+rnD/l91dGyENtJKKSwLNQ6xACzNSJ9hDgaXqDDTq1DE182XtvA+KKOvMjcNpGGmDmtJ081lZvDQ70/w2xkMYesBGyyusx+YoI7uAfWjLZLJnGx8fk1tVmZ6dbzmZnfVJmT2y0zRSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hI5xaiQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hI5xaiQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D1C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724090153;
	bh=JzbXjtgyN8CzdysaE7T5pEtay2LpRJxRVnHjQHJ+BO8=;
	h=To:Subject:From:Date:From;
	b=hI5xaiQqbZCYChxQkQaOmRcJNF2kAP5zp7vUgNeb5sndF1V0E+i77mWABNLRzaAI3
	 CEDUNgjrn2HjMV3Yx4yjaFDuxuyU4gOhyBpNuTbOf6CbM03esxVNGbGlAcoywW6zMo
	 bMBnNCkoBHGmRLKaZ6cojLVL8hxyve0n7dOnTy4SbTa/APIAiZxMBV7L2XuZNDiRhp
	 49V/NJf+Z7TovOFt+o7w5ZRREF/RphI3lnoYOumtJ56irytOXpCXLdxFnmdEnrQalP
	 DDdfvyvhmaqfTbwXtm9os88SAzy0aBV/VbAYhPkPd08kHwBO0m3PLV2MenkBtFe5iY
	 Ms+UHgnyh8tQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9699BC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172409015358.22216.8305880862511057195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06b7f352fdc4a879d40081f17ad1d07921b06f8a7e58b9c10ebaecdd08d4f90
Date: Mon, 19 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724090153
