Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40256A94F
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752997194; cv=none; b=FasV2l/A9eNCgaNVOnak9r2ojLlB147v6XM+AS8G/4Q8o4AI9rlW3uFH816aG1U8ntCQMnwfQnWGPGVQgNlL7UmgH53NaNUKBvlCi6lEpyx6DDxyFpv8XXXeZn6gFSQaPEteAeqxfVtJIIH9HC+e1B4RMNdlDDorwRNsa9eIlZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752997194; c=relaxed/simple;
	bh=YcTeUo3zx0jFvaNxwl8X9LGCeedHUzbhqENUhoPVHp0=;
	h=To:Subject:From:Message-Id:Date; b=unhsnG+c2FFbD14y9Vf18DF8h31xhWOF9v1RmawJe4n4epclxs7aroSw5I4Vu4yNRHtSN6F5pAAy+pQdcT72aWB5J9gE3wijLCBMYXqmU6Rx0W18LuFAITQRXkPZBTf/Vx6Lu0He7QnnMSxdrR1DVtInHyYvs1hGdF0lreXtr2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEBrv6Bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEBrv6Bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAB9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752997193;
	bh=YcTeUo3zx0jFvaNxwl8X9LGCeedHUzbhqENUhoPVHp0=;
	h=To:Subject:From:Date:From;
	b=GEBrv6BmFeWPOBKfu0OAzroeriFBh8JM3EyIshzgOrM6vO17txhUwDtYZYu4IgQ50
	 o2MfeIPm3v0/ySVnDZboaWXWvKvWoMiWJnlCJRdj39QHAxoW3avfByuVdfJshnglJQ
	 TjeVxTVUMiQ1KHOHsj3WaBq3Jdh/z8nX1cu4YAhTSJ/3nqQVRD5zUxLnncstA4Y87u
	 Knnc+zNwJ/Ab3aeKzYPV6YHLCOvYTxiiHKVz8oCcnmekbCdvRxtt7eoJP5Na2ZHiiI
	 VmnDQex9nKdQmlJzsI04KynWFrsHZyDnfN1ntcr7SF4vuDUvnXeMO1KbWgVUOKhhtZ
	 thU/72Das7L5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9901CC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299719358.647.10207174902531046515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762aeebc229f31fe37855a6940b417a0d0dcbbf8ddfe398e3d7bea9708840816
Date: Sun, 20 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752997193
