Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B8C2E36F2
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751768994; cv=none; b=Qy+obV/lM1dFxSaEaguYtQMBZY0yr9BiaTWSegsKohn443mxrV6mSi62eiEUtZWY5DSIajnR01xmJiIcXBOdi91nva0NePhr2tp9PIq+gXxR/nKKBX3OapHLCOptdtEihW64THl+kertUINheeU3E6ag8nZ+IRRszg6dIC2uA80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751768994; c=relaxed/simple;
	bh=8RmaKsE1CIoCKsRPq52ZFgErdNhTL1pTMEBtp9tEjfI=;
	h=To:Subject:From:Message-Id:Date; b=Xz+TJnVUhcq1kscHd2S4BM0iKKlZYCNfpM7excgSpppo1MsNiVXh3/CGzB8GP+W+bOA4aiMWWl7XFCYq40dgsLx2lamFfxxkWfpjZ11O6yYxw9WWv/6uwlczWFQL0fwpuUyWwsKczhJ7S1Wr86vXsfqdiV2aH+kmkGXCbzjK9vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MleAcGt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MleAcGt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751768993;
	bh=8RmaKsE1CIoCKsRPq52ZFgErdNhTL1pTMEBtp9tEjfI=;
	h=To:Subject:From:Date:From;
	b=MleAcGt7kUDGhuP+LZ24QTXwfjioCT8c7LPIx5fLYfya1fcBCSzkX87m6EkY+LiBa
	 9fSg9SM2vh37sK6BwVPXYabdso3rY/Ajvn5+CGfBzQHgxYy5MSEAq799FksIo+d304
	 KB82Hr1E1YdxWw1lBcTUCS+M9+bjHBoDvzjAIVw1O6FP8uFWrU/X5f+dUgD7tkUi5M
	 kLKVC3hn4SQvm3/CX9gFy/YojtWXyOffKha4rFfLhMo0YeFMugfCsRxsvy/vC1VPCz
	 L5GQqQ1mIjLjLTeO0SQwO498mmP/2O5qmdSAv1y97P0CwWEpLjFNPTcvz887D4UHPz
	 4lyQoFKxWMoQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91675C8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176899357.866.17442403645244662570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b22428e6a39c59ea1d6a627ee1d4d6e07a1f66d19809572d42122b4f30cb94
Date: Sun, 06 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751768993
