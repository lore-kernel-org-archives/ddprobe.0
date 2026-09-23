Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350F73A3E87
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790149234; cv=none; b=Js4nenuVJtZakWKkxgCEzsTOIHZR7NP5H79WOBesrcJ0zVrVXVcFcaCtsu7s52T2iojO2yqqnrcDrk+dAQvqeMppiD+del6aZ3iJ4C3JmKahU6C4RRfnnh4Xpc5iZ+6jmmsXToIbt7UUfwax3lTCFnYxTXvyFdGnsixbyZze1pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790149234; c=relaxed/simple;
	bh=4qkGcmB6IcGtXnA9ZIKaGAjKu5E2kmgANRA+En9/NGg=;
	h=To:Subject:From:Message-Id:Date; b=mIvAPBal/H9KjTNmRlo6RqsFPZhgg0+3ujd8uK/4csysYzgDq7LqOQrJk9bLzVVsO7/W4L7WmcVYgFezUbuVSMpexRCStwBcCX7Pi9g5k1guuzUzQNYzofJBUq+Dj7NfZrn0No9J06+bsWIeeTKLRNJYIxd5RX9m354GoMFb+48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAm9wzL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAm9wzL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93DCC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790149233;
	bh=4qkGcmB6IcGtXnA9ZIKaGAjKu5E2kmgANRA+En9/NGg=;
	h=To:Subject:From:Date:From;
	b=NAm9wzL450d20myGz9LY8XTLwJd+CeQ00Ka5Ya6+uUn+pRmomgCAHCwgDI50+DaFj
	 qQ1MuaCKmQuyIon+3FF+Q7oJXTGD1eJG7vlIbGBLE5PgJP2m3LuLb2nv3NB1c3iX1C
	 FC7fyPDskhFLMbXG/6MT++rojPlBJQW+rnpuGNIcrdEpjRruxghmpGX4s9xLcKNQvq
	 osAZ9f4fMjgi9/p3cKvs0l7FXsUcyZcKTNY3upB/rMwuyT7nigsJynjdkCXPj0+YXe
	 VJ8kaUv1SGZ4ECVqz95IBmF46Ue8jVQmT/x4voMWNpuo2dGAlDR8IhwTMRyO9eIZEC
	 KqkO0ubSEhrRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F09C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014923373.8907.16573605412433929158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8a36a8d64b1a0753dd45b4252c48b516e3baa50c59c99dd79ffb93ed1e864e
Date: Wed, 23 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790149233
