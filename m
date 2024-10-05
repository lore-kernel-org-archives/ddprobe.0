Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C5CC2C9
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728142555; cv=none; b=UowuT9MkcKPnafE1nQP6JUzcbQzjdCFFbuYGzM4+meRlZPX2T504nyaz9NQkHhaOGhZ09Uwo1VdojwTUzWVFOBC7mmeDIIRbXGF7kkfK/wi3KW3LCfR+3yujnWy4ebASbxkNs0RBCImiZD+JQaaqBNyWFfWZWSn/wCb+JLxkbuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728142555; c=relaxed/simple;
	bh=jgedBA2xinHLdDWUm/gbFrNLqXMW/HC9l3RcEAwhbQA=;
	h=To:Subject:From:Message-Id:Date; b=AuBSwvuwi3VsB8whEeC/3h0O2ylsJ7Hh4BKaX/FFM5EloYdKKPyG3n/OEm29+PqRPo3W5a5Y8D3rw6AlEPnqWpZXpTHwDvJ2NBbunT0jgchPZopaEUWylrUiwKQ27cWpCPkaPbUf6CzF9wyK6nS8lWghfAkGz7lr0Cm/gQh4K10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htqR5rrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htqR5rrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9628C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728142554;
	bh=jgedBA2xinHLdDWUm/gbFrNLqXMW/HC9l3RcEAwhbQA=;
	h=To:Subject:From:Date:From;
	b=htqR5rrbsGb7ScLcd2c4ig1hp+WtdFkKepr7NSdUs6V4qkGzpK+20eI+jKo0Thox0
	 Qn7e4FL4Fil+mUOx26FPaEnBhUFCOyxGePeMSX92v/mlrBoZrLrY5yg54/s+wmgQLz
	 SYBRabMTQyUQhssrSTdamRNXN9OU4TH4EddJngc/mYyrc13B/rVq8I7f/WhegCy7XV
	 Ncd7YCqG71eK6Yhqb9lN/6fL7rSwU6NQcOza2Wf1VcxKIcvJBiMnoQYWDjG7Hry5M0
	 UUKBctcGUmXagzAZrCNsy3Kq9P+Hq3hnl7G+OglEnqXA9JQ8M1uV2MjiqtVSm9AMKw
	 t9NmWVirDaVRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A796DCF34C4
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814255360.24550.14216999487715516382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97b7e866bc53a9e8ad97fd4a553a8b940394f0b62236a2371687ab362143738
Date: Sat, 05 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728142553
