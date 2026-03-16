Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A36139B963
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773669894; cv=none; b=qU2TpGPg5V+fyH4bdTIyq2Qv9qof26LrQJNlXAT1KIQ4DEDXrkSass0mVgCaDCdKUtITP0X1zsqK8zbuQgJ0l20L+WZnP5pC2M8G6/zQGWQsIXoexPUdhQ/ndCjrogPsL4JIs9KmVfnD3ESJY0N15/DucC59M7U+ksLoEc/S/Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773669894; c=relaxed/simple;
	bh=SwXCtHOfs6cm13JbuW4SZQumU6b/BrAfOnyweyG4W3U=;
	h=To:Subject:From:Message-Id:Date; b=sW2zDf71d02BFfO31PMGAUqcGL5VOwa7abjYi1YRxDVzgDiU0A49OHqki8Ecf2tqT9pf3k97jx5CfoduZqehHxE3gQKluZdBH+l/g6qjbheFNEEU94g4DG8S7D0JMUSAOssmxwxa2bn/WTBq6hv25TxencfV7J1aTzfAzwoCP/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7cNf3sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7cNf3sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0036C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773669893;
	bh=SwXCtHOfs6cm13JbuW4SZQumU6b/BrAfOnyweyG4W3U=;
	h=To:Subject:From:Date:From;
	b=n7cNf3spwnonXMcaDgldXjwATLdc0uHoPLm9HLsxGo3dEHyiJC8FqLV4mt1jk6qRO
	 CoI6SDHp/LkXulLj8Unu5EtNeu/CEume7y57VV8sHpQ4ZQ35zjOyTxNhFivdl6WQJa
	 r1RQtBU/WhUDJOkM4lG/SWc3TzVOu8BH9fcNLwulxRvg/eqRJ4xkpkjozUZc8TA34Z
	 mykBiFPe6UnxVOzzkA3cKNXOSsvQN275arfb20tXQj152/kBF/mBS+ppwPGGZaDtkG
	 KbMht8JZn74As/u0l177974XA5FimHXIYGit4QiVMJC54HnSQ80vPX3gBDqr++TFbZ
	 e2ULz5TTOEUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0762F506D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366989361.853.5635311006376082116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6358b532c71a9f06564ccf0e2d7c6820f07f32f3e212e9e421eda7a5265c639c
Date: Mon, 16 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773669893
