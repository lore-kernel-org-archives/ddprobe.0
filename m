Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C06B17BEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728460554; cv=none; b=cd/KVGY+ck+4F4GZDr37150TR2ZIZPMJpS0W2MRZzCpzAzKIRxh6ZtKRdBzA1wBGDR5rAlbkv55nqgtFnoy3P12yOwEkM5tUcjf8eiS+bHSPJxh0tu5zWRInZMWrEZs8eG8cSAxYfxndijassx6dJJz5zoVo48fxjUTZCbhLRnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728460554; c=relaxed/simple;
	bh=opj52hgRYpkAJ6FamtQ3663IZH0Ow7aQXLvSIH7VptM=;
	h=To:Subject:From:Message-Id:Date; b=OyEiUKKTM1FIALjuewQ3qtnEp14DRrH2GlsMCeNw9YVuRwvfCC8OFkomEBdUrf5A9686WrNJSWQa4+Wc58MfFa+2okbVoMioD7f4oZ18JPkG9AewU/jDV8ub5PctgAG0ceZjLZ3uD5MaMckpggi/wBk0cWAJfl7Af433/jk5bZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1cT2rlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1cT2rlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EE2C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728460553;
	bh=opj52hgRYpkAJ6FamtQ3663IZH0Ow7aQXLvSIH7VptM=;
	h=To:Subject:From:Date:From;
	b=b1cT2rlQuXqzqlPNjxJzD1s4x6z5+1wO0QOXGWiL5rlHoyqPiDtJt3ofpN/DG9WGH
	 zob0JGFM7Fyo8EltBM7ruUQbRA8nFCmNO5yWJktxbg3YzB86MFyd+EuGXDvojxerSE
	 hhdhlvIhwdV9YIl7yxd6mt0h0nGr4dIt+dcwt1xPKyNOcSBF+p5ra0Wo9Vqu5jQOBJ
	 fb7zqGyYQ5e2vO7Bz3O7KlT9tyGRjdKEypQ9GGhwTd1EQMrW0AZUgD3QNsOqjPsp7S
	 8We0t8H9Shfg0dhmm9T6cmhx+UEtOOddJKlAWs5eF2f1uL5Dqj+267gn5tkn+GrzPw
	 9ljWstjmpylHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E56CED621
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846055359.12180.14788306354841537674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9267549859a16dc5a96aa84fa0f4039b6ca6b6711d85e62b87bbe2667933a66
Date: Wed, 09 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728460553
