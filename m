Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13161772F
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710660497; cv=none; b=ANXX5Xa0KiJIlHPto8y85pwiCLMusUEpqi+LS1bwyh5xBABihaWjEA11aRpvYgwEoBU4X00BE6Fedrjk50Koo4N+/dvznXwCNQ/Sp0TctHtoPe2EDOkpJ+1Hb/bucKlgoEgIn8KTVkrV47hWe4KcUG1va3com7ce1s1G9zDi0LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710660497; c=relaxed/simple;
	bh=7eCxcpEqhlBkS3XpCzEFVn8tWbRE5zrFxptTvf/dm3g=;
	h=To:Subject:From:Message-Id:Date; b=OJIxW7EfS/tHnY5gdGarvh9oRDyxPCdPemQloGUiaMrd91B0CkZK9nPeHX49ZkKZO2A1988lrxWXcTTyUk8nd5rsPw6A5jlaiFhNmuQSH71P6KiKx0L4cM8i6Qv2Newv5RMFkAlMWgHWd/HF981a9H2JwmqBc44q/Gcr0ichjYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckjR7B9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckjR7B9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7555BC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710660496;
	bh=7eCxcpEqhlBkS3XpCzEFVn8tWbRE5zrFxptTvf/dm3g=;
	h=To:Subject:From:Date:From;
	b=ckjR7B9zgGAAPiZqPtEiKcNU7DV3/wBYiTOEm/Y0AzojeBeLN8XIIL2z01cusWOJJ
	 thEsqJ7jLkZjol/zockCDYHYjqgOhvEJs3dPLQPHO995WbYnyVbYNZ/7kxfUNDYU7Y
	 Isy7T5CytLi81tBUXspChXSnuZS4pgOvt1wunp5LK7c2zJCiaqKaYdNT6fv5YfBcMX
	 NE7OuBT+CR6l4Vf+PLcbkCcGLPBhG+v7OGwPGiutmKCgjUVRNzqnk5ouLqmpCduqjl
	 fp6f1HRic46vmf3dEbzHbsZSc8KOPmD3zbZzL4MTlFgqL5VmGCATPGtpSASRgdUcY0
	 jS6chcWmn+71A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630B7C54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171066049637.26405.11432113515498114619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf92fcf3fae3011218063472d76311ee7124d87615fc86df676c8e3e9b95e079
Date: Sun, 17 Mar 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710660496
