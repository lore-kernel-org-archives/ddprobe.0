Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6513559F5
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777841854; cv=none; b=J+dFRLaRuGEOCVdPLsawbs2hToThxfqiwDKHES0w2Rw5SDs75wf1lEbRNPdVYP/GLJKPuMJADq1ti4SClFeWnMdx5V41+3CW7JSlGeqe3EE/cZ3grTCd6hfgb8t+lgwLyuSLYLn0668/AeiQ3ywnCjLl5J1hHmwyYAYYp0yZOf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777841854; c=relaxed/simple;
	bh=kNHpersXws6W4PgnyQGEsmwVcY28Nkz2ujF2wSZvYn8=;
	h=To:Subject:From:Message-Id:Date; b=LN/WAwhn12H6Xuq2UEOnKU93VSa1qWjlOzvnoK2QnWAnkbyeI4RWr8Ex2IVEn/jWzMN6XSplR0lmD7Nfasfq3nGio05EZ8JO84JF6VYAs13sR9TGGLlxVCxl2EvQlpVWK3o4u0nvUkaSVjaB0GWq9NOi2TLzNCeFPrFTdQ6kTf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dH5472MF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dH5472MF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC21AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777841853;
	bh=kNHpersXws6W4PgnyQGEsmwVcY28Nkz2ujF2wSZvYn8=;
	h=To:Subject:From:Date:From;
	b=dH5472MFiE/1zyByB1uemkR7gPA2LdnXnF2SxjRV1T3oWzSJGMrByuDp2sR87iciW
	 2pi7kgEo4gtiJO3grk4TYBVb0njWmuGWpO62nOsub5/M3F3V+fad7NEm6uKPQj+a6h
	 HJlb01B4VOF5rlEFPTih9JUEatWU+TfXi0BI/Ba7S+JwtgmRCN+B1aJGeHTcTP/XIe
	 CKyLyweX1dB+f5Muz6A87pjGdrH7x4POwhhTsvnYogPlvDHXQyqjTjDc98zo69v+9B
	 aW5aqU6lJY0n/YtwDKiXfDDQ26b97jJuPva3MqxeRvJqkMZCsZ1LcbRAD8VJtZC6oZ
	 1qdSrFi961tZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEED0CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784185368.27795.10159481491776207696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f3c6e120d12ba75c15c6a533655cbfff357d44566b2d9b56e762989f67abf9
Date: Sun, 03 May 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777841853
