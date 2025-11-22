Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8E227A12B
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763804514; cv=none; b=IXvceaOKzumgm/Q6A+tZWrvuEOFMmacPtALfbIIYLZhP9KFJodqw6I7X7FiJKY5Zy/8MhonUhJq67WZ8Gti2Vi9D9jsHS7o5/NJYWyptqbLidC7gTYHplipNGbYb5D7Ti27Il3GEpVj3CN8pOpzaBhGR69QczAENscN8zlMuYj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763804514; c=relaxed/simple;
	bh=Xkza7Cdhti5M2d7esYe/le5xIMy+/k9dIJlepgPbh98=;
	h=To:Subject:From:Message-Id:Date; b=etWrz1ZxvmCFsk1nrpj29Mj3EDvBgYsnWINTrEvpnhjbhCZjNnjP1uYqOjCicWdrs8Ck5DZS811c3QgUZgTzltaXNP0CCOYkuPBvq+v0xX6nNZ2fuaKW2Z+uTPlmUu/aJw9PsM+pCytabRU9mq3OGUsJw3wzn9XhYr4rMX89+lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NH4Qn8uj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NH4Qn8uj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7DFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763804513;
	bh=Xkza7Cdhti5M2d7esYe/le5xIMy+/k9dIJlepgPbh98=;
	h=To:Subject:From:Date:From;
	b=NH4Qn8ujLmO8TgZUQ9ZeQvhvySMcQuwxlDuaYORzYVxwrSYYRmJesUxMIEYGK4zwb
	 Etvz6LMvftA5/MQDexLRTtou5STsmWSYCnliKlNgSja2KOkeJepS0QLYo8l4x7SoEE
	 TYCmKASMEfpBOhPMnf02hr0qiL1JZ5hbVmZwd4T3rZZUHNrtAB5MqOA8WvXnrSpx/Y
	 zHcwzgW8eo/ASmMBjSwwAgcTyUV4HnFo4YnXkKELfLRMO26RvcabWL7CiKeyPPsquT
	 9Omla2JElX9+pFQ6fBeO6frF5g6hW6DW85aaDX0PtiGZGVa0Cu47pzMyDTVInsaA2J
	 Tgpp/CAl8HGbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EC6CFC51E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380451360.22736.3812629215078999362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee50902b10ffdf55e261e550ddea2ae7eb2d978b2e02692a91443956c04d17e
Date: Sat, 22 Nov 2025 09:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763804513
