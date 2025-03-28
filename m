Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577241922F5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743122394; cv=none; b=CVPNURSZWPj8lTAmXvFw17qHhPl1IFdpU8EbRxEMU+21UPzJkQjA58NB1nXz0yK415paA3m9rjRY8vnYlDL2/rNGinYG9nVFp/+P78iNWqXszHZW8GoDwIBH3n8QYf25GZ6NIVMba04Y22pBMVxaZEa/9NCW+4bFx5+h4ODhj/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743122394; c=relaxed/simple;
	bh=vTtemfPEmNHg1bfMMHAwQCh/z6hvgHYwmX3zKQCJ+QM=;
	h=To:Subject:From:Message-Id:Date; b=MkWm1QNPrl2xZkfg8SnkKpRgugrl3BeNwgxNf4Z8mHuyO32uS197fF/vX9+LrPh7K7gv6nK1+429dVnWn3aiFaFvvbi6rZm7y7LKMnAEvLSy5D4PaJTeQyJECYjeCrx9NdKxdXvOah3uzdfYqvCaPoZT/YhKQ2kf5wtNI4vFJEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itwBUYcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itwBUYcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E64C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743122393;
	bh=vTtemfPEmNHg1bfMMHAwQCh/z6hvgHYwmX3zKQCJ+QM=;
	h=To:Subject:From:Date:From;
	b=itwBUYcfy+vleKvarWVYSDpmFWdB1oaqfwel4W9KElSx+5DF/Xkcu3x6nfTqs1pra
	 b6E348cqqsKg7cCOC21cEzo3m2p7dBzMBB+wzcFXJJluJeIZXWKxOUbwEkWUCp2+r4
	 EB4YdCBCY3PEazHeUo2Z1okNu75/2ckJ4pmFU7rmt3Oh6YEKbkeyhqo9uBQc5NP8V4
	 r++CRvSs9ECLa/dt1xvCJn1/6htWnX+i94Raa0VRrD0cJIb4K3rMuNP+r7neCz30xI
	 cMd63DTQ3fc+GENiSIQwt8KfOpEf60Xfhv4A49gldYn7w1pTO2b9lt2bpPm8a/Nx8c
	 2uao1ihS8xt/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D77C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312239363.17500.3403670494992322416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0387cb799116bf90bc03aa27732020041fe340a11ef047058ca00e110402c97c
Date: Fri, 28 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743122393
