Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E8D377AAD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784357314; cv=none; b=YlqsNZFqXA7f4oBFVB1yx84mcqZ7yxBWW+l4MRuKb4oIqSLa/QyI5N22uB5xyUE4+0X2PaNx03e96rkCQez3vJs6Fl8mnjywWo0PCO+Z191zQEP3QJcxi5fzTHtYVVhb/y/Drd8KiG4XKn9W55B8eeJ8IMNbpLD67HAwLYVmtWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784357314; c=relaxed/simple;
	bh=L3z7dsWzM/wL0mXKHg/NNmSNciSg2QQ8gH+mJFLQXtw=;
	h=To:Subject:From:Message-Id:Date; b=dnVTLsw8Rab9D+zsHJEOu+/MbVBcyP2wsBYAfak5mw6u4BzQLUbHyieTGo/pRuqUiYjnGJZ+NUcFqt1d1Wykx9pQPZ1VK55Okep6YFVJOlELZR8C+YyJt1MoD1u2Pbuus+7yZxF6oTuTN3LkG5QVS19aR674+n+iIOXshv4R3WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzG3GqVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzG3GqVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1013C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784357313;
	bh=L3z7dsWzM/wL0mXKHg/NNmSNciSg2QQ8gH+mJFLQXtw=;
	h=To:Subject:From:Date:From;
	b=fzG3GqVhurIVvsc4eqNxnJqNR9kcNaTH1ceJYqcLtK3tPbF6UOcPyfeeaCY9KcerV
	 OrJf5+VjV9N+2S8E8NiDC2PgtZmmFz9ShcQBSj5v5GRktgKTrmViyHbp3wYf6/pSRU
	 qgcFTC3WBkbMK80eYsR3q3gkMZGDa/EAPffW49eSxj+SQWFrrI13OXJNnh+2zq+Ysu
	 2i0CxMIBIUdrHoxfNRgzBebSTV1CtP5bQA8B5IlVUXOJtz129RY5EYHIoz0OvOi+Ln
	 y9PDllYqrUKYA45wD2M+a/1R64p34wCjq3KjuOomhUE7ykafmQvSK4iFNG8Hihokbc
	 GhxJLjsiSarIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDBBC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435731369.13688.6926357825910823601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06254a432bb7179d2c1eaa464ac02ab17c27daba52dbd17395099f0d3afce6ee
Date: Sat, 18 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784357313
