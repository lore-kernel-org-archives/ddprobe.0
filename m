Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1829BC2FF
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771347894; cv=none; b=DbrvGKxrKnx3lPsVetpsYlCvJpQOiKJ41lEcGtNFuxIxSrYwssxFMhlREBVpf+RHC3sRoe+lXKRJtn74dUMdv0vhzarhMn6Y6n7bhJVZ/vdAu1+CVvyioinNmbHaAw2QNqmTzeF0s0e1KPChD/I453kMz9ztb4LxhDFsazXIntY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771347894; c=relaxed/simple;
	bh=Xf3/nIVQmql7VirLIbYDerWkcydyHeY7/x5alDVvQAo=;
	h=To:Subject:From:Message-Id:Date; b=l3rxTDJy3zIdq/wP0tWNX8pOaNioY4bNpH63yrWIsp85p+rOX/e0n5zqg7xnUfRId+9kbFEtD3JeVkdG7WcqeAF27EKTyxaQD22aLzZLAh8uvE7LoSWKO2OGe13Zz+y6+5eDS1qAJM3VCvMqNhFH317dMvglB98iW0KcnPpVsZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ew/8KTRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ew/8KTRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B763BC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771347893;
	bh=Xf3/nIVQmql7VirLIbYDerWkcydyHeY7/x5alDVvQAo=;
	h=To:Subject:From:Date:From;
	b=ew/8KTROvSx/Z8wwjYg1Iw8/nknh06Pnded2UR/un58uPKGri0jk4fhRQcI27hcks
	 AdlyvHA+9V6PPzyj3/kaptes9rcQXuzKnRBqrUUNIn4JtGHxkODUtMXhULpKuaZ53I
	 DEw/LvaxbEUqkhjjKW2d6MEDnHv6UOw3g3/k7U1l6BqE/BiXDJKJPVPN18WUNdzEM3
	 Ra/hIDyYLh6mIS8AchBWRf65ugsk4Zm5Z4njV4zmO3yeeaklHqJAvxbvkdQ2bgN6E/
	 2oov0oH87fHSybIudFaLNMXapESKrDmbMgintrWehlXaEFlTCUmMzWPfQkB4rkOkdC
	 G7Gf3+NtV3S9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06B3E909DF
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134789364.21208.17452682375164235306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a183d8846ac9c18cadfe4a30f8e9f3c2bd5476f3bb6243b9be8df9c793c3f6
Date: Tue, 17 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771347893
