Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAC245BEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720478783; cv=none; b=vF0L9NGxmplBpjsOTK3iCSMdOUevcjD6SQwTrXzV+i1VazuByeXQqBSUs2taCQImMYOwG2JUSes58T2ywsuP9zuohAxYN5Elhb+5EaBceMYtqMM4TAvBAQoEJW69+GEMw7YrHK/qZVWuRxEpSfp9eV5Jk7z2ep9zAhj/ytrwBTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720478783; c=relaxed/simple;
	bh=tJuL2KYB1KNWQRwwY65BNnUBwuPsD91+e1CSEGo+qV8=;
	h=To:Subject:From:Message-Id:Date; b=XRIYrThAoE3fxWpxl6kkNo/INKfiKw/WAfUlhDrzP9BCV0qvctuqIpAS0VN9nMqanNC1YEXBm4qk6CZ3M4CQy+nefgs/DUkU260ZdhVrwsypF9xIS4UZHQUrhBQwGJhXhxjI6hVvbCx/Gynu+LER+CSr7J3XyWeRd3rIesOXqDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9ca2Hgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9ca2Hgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5B7C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720478782;
	bh=tJuL2KYB1KNWQRwwY65BNnUBwuPsD91+e1CSEGo+qV8=;
	h=To:Subject:From:Date:From;
	b=N9ca2HgvqkhtId+T6owN9QXsnMkzkE+5aH91tDDa66uE1m62f59nm1l9V4BfC7vQ2
	 ZTZK7jrsGRq9iSCQVc8lEIMmgVo/81K2h5ZpZKuvLLGPvvtC2ubYmRwWezb5DQD0Vd
	 p4b4+2CUQue4g7Dud8tV03l4WXrrSBm6DMKCD2rY4WdStVNd/rTtfUXm68BhkfgzqJ
	 psd/FnDop2IH9WWobDlRNKKlhC4+c+M2TbnQfGCLWCA6cBwjnZFpBgGBcB1N3kFgBL
	 poWVf4S/uvBz2S9CBgQ03gyykDgW6WavrLgSXbNq7JLVaqEXkIXeUMdxrnfYnGhGDp
	 lNNiFSYcCc8oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC35CC3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047878276.19826.8621831286123773522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb2edd9c42cb68459c234b3e0fa5de23484f276d8a7db3accfd16753f23e39b
Date: Mon, 08 Jul 2024 22:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720478782
