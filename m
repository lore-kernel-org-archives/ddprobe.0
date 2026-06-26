Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA0A3B1ED0
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782511714; cv=none; b=hNjTbmSRH/IUEcqiY0xxWhBg6Br9qUL+DHI+txJAqzhQ2hzQyJ4voKAjKxs3snP5utoHOyI8b6+fmJNO7NAgMcovFHAaLRln4xutDXwB0ZFhKY4Fh5Do+MvPL0Zuo85A8gC6ofZUbz/gMzwzntbfKXEONLcK1UfPC6SPKzwjX3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782511714; c=relaxed/simple;
	bh=9VarRd7J+pDExRo3E94qwVUivNF7wCCZaxRxHy81GZc=;
	h=To:Subject:From:Message-Id:Date; b=Yfvm5TuJk5y4LO3pM7QprU+TMz/NC6oKgJ+P5pgc5Juo9UQ5o376a01IYhkM79W+zlPDCTOVo0xR/AuquSAx36NZp4gKLHf6+Ul8AIH56zQtsjsDNOiEL5RVgmog8VSJ29uEHst/UVGIFlnQwefpEsn8N7UmonOkOLkcqAR/uiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diC8GEkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diC8GEkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2F4C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782511713;
	bh=9VarRd7J+pDExRo3E94qwVUivNF7wCCZaxRxHy81GZc=;
	h=To:Subject:From:Date:From;
	b=diC8GEkSl1Mqd8Na9/AAuI+AAg1oiNfMjpnoobKp3lOkWO4eqxX1qt2hbhQF69jhH
	 +Ri2D7Ixyq6z1UolC2YXx/MrLi0HMcJdlqhM8H3VJIPWCEjD0PNoKHCg1wgC27Ci77
	 B9QLuHQZpPLtJylXf4NTDuzivmzYNbXhLgMEAMBVQVQIj+OQyn2nxCpqfnLvUe1fib
	 JZSS7HtFMxgZsQpwuiGKc7EjUcuqesSXqRXehma9/da6GD7QP92Hq00x+hWH6I+Clh
	 Tq1M4k9Z3ttpr1mKLXPbXDOH6dHBoK/fqtfBsTzcAzsPZcELeT2lOWIlFW4UjBfHHA
	 fRwOI6UGpcOnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B378BC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251171372.15354.11420268354551934481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ce0024e90cd2157b69944e1446550e11f621f12602f4afb8b196f08c777a27
Date: Fri, 26 Jun 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782511713
