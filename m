Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E62397AA
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763293254; cv=none; b=ADfDqDHQkOxAAbOk1cCLgjV0gN5gXvlUb864WJThY+bHG0LKBL+UIe7ZszOnVgyXJbVkAoPkA9bIJEPNsk+caxdJt0JpTt8wvQ/d923JjVvuVjaFltUOvxsl1kVBp96Sf9fvXZUi72/j7vaxi6orOROD5eiYqUY245f9ngcqMiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763293254; c=relaxed/simple;
	bh=oh3ZlDfPUvqAL11B94khu14vGjT9JFAJLwvsmOvhods=;
	h=To:Subject:From:Message-Id:Date; b=Iz57UoMaGEQDO9ohLw3Qcz0AWFv7hj6JCDgoA9Jlzb8b07jBsNC4/PxOJ+35iSVJBBHOPWGemxx8L2MPp/AxPENj6Fgvpimosm0lopuaq9Fhe4L3IAqZJdIM4xXlMuR2t1kSeF/oophfYc6jVlH9W1Tuud2Lf++meLppdOGUg/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqoVlH6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqoVlH6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18A3C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763293253;
	bh=oh3ZlDfPUvqAL11B94khu14vGjT9JFAJLwvsmOvhods=;
	h=To:Subject:From:Date:From;
	b=XqoVlH6b+VgxkNly/AEwUQuGUCs9iW85ylA/X8h8eAzamV7kkGaOTCmAN7i8MkH8D
	 dixiHrVHveyUiY/LIQDJNgVABG1qnRUOdgXcL8JJ7XY2DWlY5AHJuitgv4Di0yXU7O
	 acy8a5dHewvPK9mQgfMrZMToJ3xdxHTH4hzvnqRDBemG1YKSX0gyQYBNde3KV1Ogdh
	 X5ZF8vnTsqlZMTZ3nxdjv5TDU2Mxw64Z843aN0+zLhWqEj1SoKNGdf0LlQK+swScWf
	 ARegctJFE8/2ydMueel4cL05EsvxwOZ7EKIhC8wE2nHlXC2kBQpm77yQzlqrUAlJIh
	 GQMm2XI5wrMJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1D0CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329325360.18909.8687686228270057289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3a97cc10568711b16be9efcd81704c6e9114230675a445575a7ca30054bc26
Date: Sun, 16 Nov 2025 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763293253
