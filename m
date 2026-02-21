Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14060308F26
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771701294; cv=none; b=OCmV//joCrXUCEXUeWOXwLmFh9ZXmqfvOkeIT0a7Vfg1o+IMunVdKo9YmL1hiYol1f/oGVa90M1xu9wiJqM/l38aPlU/defq09TU7befOUIhVSUs/lRQzbwJdCGBwZUlkwitrN8kK1rDGV0WygFS8ralbM5pKxKykOej7Mxuso8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771701294; c=relaxed/simple;
	bh=ZseOp3xbjZxt+SUEbAawjU8GB7U0Rpz/dfoeFRnVE7c=;
	h=To:Subject:From:Message-Id:Date; b=fBdAsRUx9InJOh4OA8iJtuCypnef469EomLteQmCT3/BHMuCsDAQoly9ol4dbdvFJTaDh5xAdKjLaaQsUk0tp35/DnvLxou7tBXtEJhEA6poydYf6xBlIJAmGEdsvcBizKL3WJPmUbYlssneRfeG7789z/WhyCMy19fI9ymjjfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWaBWS/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWaBWS/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00E3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771701293;
	bh=ZseOp3xbjZxt+SUEbAawjU8GB7U0Rpz/dfoeFRnVE7c=;
	h=To:Subject:From:Date:From;
	b=pWaBWS/UeBDAXM9x49SN1jyKA6Kb7zYSiZEkBBJvL/Hds43agKdB0Lu3pTyDXGc3F
	 zOobejtWelvGnWJXwAxJoLagxfhFD2zuD21sPfItbkvcTygg2za1IBDqTwW1luwU7p
	 xctd7ulHutdHlxtG+9zP0JkizBZqnE+bo0kR4ekZlrvpKTpKkFC4gLKyfG4io/bItI
	 6+wMlEht9IXs6eUUD+U+0QvfRNoCSjHh79s8h/h1JBs0435wTQvFNlWIINOh7DJLIB
	 PUfcCtD6X6BZlkRQ6bUn5vSz+IKdOovSiJxV5+AiaPOv8wj1qb7Um1d9x7Pcaw5Zzb
	 rWbWlG3r6+VvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB2CC61DFB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170129359.10541.5020587752318927300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efee949740cf73120d4e56739f45474b6e419cd91177a6fa221385485af15194
Date: Sat, 21 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771701293
