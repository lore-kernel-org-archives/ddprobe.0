Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4684E18C933
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784344714; cv=none; b=PqC48X7HzfR/AvaJGTu3WbFTm9BgSY8c+1Ccky6Uc+Kh2uNjVp//qTeSYmi1C4lWq6N7XoB0d5vG/FNJBl9Erj968YHeEH8T/g9Asf7vOHIcTEtuxn7wuNy+1SHit4jg2EwehS6lR90MEa0XSTlR6hF2FFvYz7s6XvleRhWS2Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784344714; c=relaxed/simple;
	bh=how53Ee3wm9HFqvRWpwtJGih0wga0nrP0WZ+wr+HLVY=;
	h=To:Subject:From:Message-Id:Date; b=kttU+FmiybwVfBh3FUNUQNX9X+xM2LvnoHixNUggPqSJXNRxsXRoXwcgdzXBSzNY5/5VhotjfnWPYX9Ny9MgLfwGkz6dtFPdiK9s6Tg9sUeQ/LThz9aSqD4hsxSo3r/8O6AOzf3IaMKQMIbZ+gYjgcP9LXTjY/VSmh9p8P2pw9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmbdfsUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmbdfsUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD6CC2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784344713;
	bh=how53Ee3wm9HFqvRWpwtJGih0wga0nrP0WZ+wr+HLVY=;
	h=To:Subject:From:Date:From;
	b=cmbdfsUu4cbC0KX2XJSgQoVxqFVJvI+Dh+3jfnn076cYQGCo+Ng9s8avWW7sdh+um
	 upI9QRd+CAlDK7K+SzWSSkddYAGFhn9Q25N8rX0BIFONoRd7gCBPEXh3UrrAuhAKJE
	 GlU5z3saqTIfZ1Quo5oZsYgRMbMNRvlzgs3N5X4usxuSvP5Z/1rwnfflIXI5c+sNK0
	 Cw2FP+RE6gpefuyWD2+PRuPLqxyN2stqDOnTHM2i59UU6nNZP9A0uMVHwT2PhBt53o
	 BuvjDmf+nM6KV27bZ93mN1HIHRxypA+igSs293IvYIrkncPVoHcGwNvUf4xUocxTEI
	 8HxaAprn1sP0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86CDC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434471368.3968.17171244726455089113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce7653dc90421944c9b6e3eecf4fdceda40a7cf773528f6c28ff7ebfbf7bf36
Date: Sat, 18 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784344713
