Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DB610E0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720807163; cv=none; b=e25ZlMXaUDwKEUzTNH+kZ5wMgCobbcI6R0txLb33juh4pMIB+P9H3avRVzxQqMe+7ohQHiUh61yJFiE6StwyRqV79534s827D7TsRDO6Y6ToLNP/Ia3P3bU/83rsYDID9D2u8q+uut4e6SnN8LhZv5GLoMscxsGdo5Juk9Xc6fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720807163; c=relaxed/simple;
	bh=44Z58PwUZnUfYBOgyYDUx9pYRIzSzBHzoYVbDR3y+YI=;
	h=To:Subject:From:Message-Id:Date; b=ELfanXlkK/EN5GMjlgNJuFY/KILwsWVB6lz+sXFL+dAu/xxKkr2aXXt+hFpCL1U9JLzRAVpBnOpI7lxLSDqplPa+QDPCDJyXrclISjXnVi3nbVywrHRd6Q+9Q5MMNeRk13guN3M95e6d3RpIvkB7y0lwKjNAwDFIgrBeIzvKXoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGUGRVR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGUGRVR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC07AC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720807163;
	bh=44Z58PwUZnUfYBOgyYDUx9pYRIzSzBHzoYVbDR3y+YI=;
	h=To:Subject:From:Date:From;
	b=tGUGRVR2k1HO0lRev31S2Hf0cOKaLHL/7YCXQYeUiIIkqrdfGnwflCFDPEjCzvKRL
	 Dc7N8VEC1NB7c3QLU+x9PE/kxu76cT5/Wk9/PWGYtsquExR9nme8QZOXTLWOcA+SAK
	 oLe6wc/RwFXHO/RIrQ+5ZcYC5zFVTzd5w32nwwGORfUApOaRW3blVoqC2GA6y0Y+36
	 XiHL/w7PA5udRaI+UILV7SyEt1OD1jSWkfBY8sKwdqxhg7GGqUx3SzYHEqH7HnH+8y
	 fAo0QpcaiEFHL/e5R6Sq8HY/1wNPrWH+U2SdTv61a9mDKc7AZtcE1uR2zrLXEAkVqn
	 Gi9tJTnNp3nNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE260C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080716282.25235.11409170344336347524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ab8e4ef8af380246d3f448e5286123329bfa17cb9e7e8d7ed96d92061e6db8
Date: Fri, 12 Jul 2024 17:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720807162
