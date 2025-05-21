Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289A242AB4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747789194; cv=none; b=Y8Hkol6RJteoCWMIkN37Wir4Du0HAACfwVUIWvlorGOUhSYAfONWoLRbnJ8UUtJlZc5fnRV3ovLWRT9mrEuomoN8V1uENg7n+MNl0WThYJGIm6NfGQyRM/Gd/1TUoKjQHSEBOz7ojfY3qUNSMIN7a+3V9xY2Kd2hTtWJMohd3kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747789194; c=relaxed/simple;
	bh=ZN7KScZY+kv675dBuzdX8Kk/Xek0AOzk5t6jl0xD6fw=;
	h=To:Subject:From:Message-Id:Date; b=aVdlbFDLMJHZOrhTJNaKARz8sGGnxRW9VjR2KikM301NHpAKLdtkRIROvFL6Q2GEGxe4sVtsJDaWgP6FoDQR2p+8vkARFD1gB8THxpAlaf+vtFgaAF1ANJk4OOACr8KmGCTW6yuItkZZcDv5uTRY66yLtif0lm2OdFIQFkPnUVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohjDCSKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohjDCSKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4638C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747789193;
	bh=ZN7KScZY+kv675dBuzdX8Kk/Xek0AOzk5t6jl0xD6fw=;
	h=To:Subject:From:Date:From;
	b=ohjDCSKuDurD7J61jvpt9AzfAAopWoYtkYORwamhuzyOJXRhbz6yjPTx3Ih/tflgw
	 OyS6YbaX5GKeKuezs7ONGpFAGRqtGY2Awg2cOfU/JSLfrO+kt4Uph35BYa1Q9ZX1/P
	 np4ayrsfht1PYBI0ZouNwZAc1ocam/bcYo1UMIlAqHYBTReNvHaQN2VPjRa4bEjORZ
	 J/q91QCjZDDZR20rtKwyP/A3ILKwa6Ixl47Rad8305ly9dtlO3ybxXzcJQ5HVW4EMW
	 omYMCOcXy5ZHJRrUsLkd5qFpv4FRh5QmK/5QvT4K2zRTxBg5OZOGSTkzc8u434UCSA
	 i3vo/25dpPK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BFEC3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778919357.32000.5405521607666775207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4708125429ee9c14f49b3a880a16ab5b6df7ecab095f5ddb24f703efc5ab396a
Date: Wed, 21 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747789193
