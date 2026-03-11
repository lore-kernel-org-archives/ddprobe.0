Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14712332629
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773241494; cv=none; b=Da7X45644l/W5gphfsMtjDBQ+XY5Jltai8J/O/4XQSoeqqQnhuVu+D4Mr7Zr0fGNl/07h+BJ6ZezD1SuXr5ElAys/9bdBXNogqOHjERVbY+iIdUcG9XRBZnZtrhdDTGLBUcXtDMjphKg0FgpO88t7DKoIbA9FsRlZAYxs/5O+Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773241494; c=relaxed/simple;
	bh=DZBW5c14i6bspBUmfPxqXij/5c/BthiLJkNLTxSYAZ4=;
	h=To:Subject:From:Message-Id:Date; b=A/NmXNh+WeJe3WwjNDqbhZ+r4KsmIycheowXmM0rUdgTDGHw5V457P7GD5pwqrJEUNXy5mad5EcfxwF7ag4ywO8ifgKx+5Cv1tkIvOdd2zy+qMg0U2XlrxsdaMTbtcykEYR7rOLWqtwavaYgIjiBr4IBbW+5Z63XsrUX6fDWMtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qht5qysd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qht5qysd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31AAC19421
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773241493;
	bh=DZBW5c14i6bspBUmfPxqXij/5c/BthiLJkNLTxSYAZ4=;
	h=To:Subject:From:Date:From;
	b=qht5qysdbrjF8C9NvfGZbAoNkFZCgbYXJjrNXh/U58zt2JgCkPCfLdklQBYHhzWIR
	 2HanjeiGA50XkLIQVOlTyfVGqLYbcJZjDTCQpMo4Ei40rCszWVM/rpbFrWL3t9vgTW
	 wWpcfYxfbkw6rLkUEI8ZlCllgIHEw0uDi98hSnGc603RgZ0cxZUG7fAygrpUQUsfW9
	 HLjP4AuG9Zx0+G4cMbVIOj3t8gNU666BwpcRfd2X83jZv0uXdb1iuMasPcfOTm+ykX
	 21Rirl6G4J6ycHhjEWlbw/VHm68BylF4wRu6E0iD6/pgGiYDCgmIMveJy0XD39DsIF
	 xdjIb2ymqIt4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9334B112583F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324149358.18866.9013213716625634675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e288cb97bf8ed569f1656f36895f043cb37722bab5ce7011aa3932497bc60c
Date: Wed, 11 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773241493
