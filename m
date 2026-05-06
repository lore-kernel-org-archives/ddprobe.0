Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F47D2D8DDB
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778036254; cv=none; b=eyFzxXj4LmnqWJaaU/8bIw6AbcGlcjxSfO4qeE26g6c0x9a1zbdnedQGI+slMHraGjqAgh4JhUR+dyTwhwdqWFr78/ybcx9toOmH2CDc9VKbUfQBWRukgPE8+0ER0qBSwy2St/WQZVJTrxzae9CNA+PKMIM5Nl4lTCNei3k4yPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778036254; c=relaxed/simple;
	bh=4I8pA2zcmv8SML76wl48GbKnlfpxxPJX2idXjKzr0gI=;
	h=To:Subject:From:Message-Id:Date; b=WylmFm8B4jF29AilJyGmvwPSx1fix96pilwBU26QJePDZ2o8Q+z3vcjReWqT2t/YwxWCiRzOGX055TNURnynghOcROr/+ZrSvbEF8MtBTdw7NC7YHNFxYw14q6a6Jc8tsaRZWcR5XiSS27ogoEzYb588cGfmMneO2LFAUd16H0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQYaH21G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQYaH21G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF67C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778036253;
	bh=4I8pA2zcmv8SML76wl48GbKnlfpxxPJX2idXjKzr0gI=;
	h=To:Subject:From:Date:From;
	b=rQYaH21GC11f6oVy02YtY/A1iveRM7UNQrz+VG5mG0F7Q5BfomiWVuMpt1QeFMaPj
	 bbZw7zfnKmep8q7swqCWca5a2xbvx7X4g6YU8dwM+jR7fN3UiYl+uYPMZRUcLzKmUj
	 JjvL7poQJAXcM7hf9gLn22qkD5u/lQQARG2a0XDW8+/fAWJSwwFfznSaCyrsy8cbdM
	 a76Io/CkVrOYUAKDbSlfu+4mgdEsZEeqOAAa3c6xKVuQsTnnWcPSKLgLTRkfyVGXMp
	 XAw9zU1k6uS9ficcPUpPqTBHV0bFe52fHVbElW4LqljvMsX/l1n2qo4Z53EBFksqr5
	 DCTJbtRyz/UWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11D5CD3427
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803625369.27728.17329298420811028358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8543762b57ca5f0cd4aba258d247e5f62223cf898313eab002335d44a8244414
Date: Wed, 06 May 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778036253
