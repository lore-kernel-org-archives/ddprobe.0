Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343983BB40
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777267654; cv=none; b=HK8GWntywElvWQxs6h5IqP4qyDQ5Uast69bYqTJtp0ExueYdNUFp4m4xIfVL5UDwstp8ORO68Phiwes0NGkwj+DCosKmvWLphvH4ivnJTjAJ0bqhitOmRNSa21NfEhafnSlA4cEoNCQV9+m4Lm0uEPCf/0ywnU+DaUVzMwZhj/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777267654; c=relaxed/simple;
	bh=ypQbLlIADOCtpia4fUArwhTRBA+SoqcbSeoMFg2Z4q4=;
	h=To:Subject:From:Message-Id:Date; b=Iyhsbru5DA7XJ3ax7lewEofORWidHr9miL5l+1bffGSgqLt/6JtmCKpwPb0D/aGr+U+u7t1J0BmyPl8eKocaAtFkJ7i2ja9YmyAYAs5Rwhk9xEd8iYjuQtHDSNjL3g4qLhopupCpzuLusauyKqnht3cVPYDLVjVUoDA+oKuJcYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4q2D24l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4q2D24l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B0FC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777267653;
	bh=ypQbLlIADOCtpia4fUArwhTRBA+SoqcbSeoMFg2Z4q4=;
	h=To:Subject:From:Date:From;
	b=N4q2D24lQKUCrFxdsJHewdb9TSnAimprpiCn4QDpnvIGvN8y5BIWZ6BIG5OQVKCBa
	 3vJ9pqvPM6xx1qpUy4qqiEsp3ZsCE3ZqzIo4wWFpN7wAfAPCN9YRbkGsobm0emNqHi
	 z6v2QSnxha/w7gcu6/5vVyCdVJM6nsRiGZc7D7wogKlX3bhXl+7W+yjTk+FZw/aj0/
	 B+TpbT5jnl8+bUopEK7HDFWDmnyVQZSG7NOYXPevKs8NDvs0Lf1M+i6UI3WUFiLDtr
	 bkP2QkOSVcxtcYw2Mm43z4hbBAjux2+TtJ7VJpG0XaoEHhSTwhJRNsRTmwcPkRwBtG
	 R+0kgrVnmmlLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2560FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726765369.5779.15947216973322474452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6da1382ecb8f1054f0132bb7e678d8e1151e9626668dbd8eff58f2155a97037
Date: Mon, 27 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777267653
