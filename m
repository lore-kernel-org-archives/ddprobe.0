Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593A276402
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713520763; cv=none; b=EvPC9bW1Cg0iHMWFqtyA9wDqfD5+7l2KjKEWuJs7MvXf6NxN3TnBS86x4Mt190nW2EeC6fvCSluzjPEZzjl1Twsc+6XfQOFU+n9Fkx/B79g+kWDxYTPBA74CaDwJzCvHdnXtQnfc/YBpABQUCh/m1HdM9DpfTigqfjITVTsJAJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713520763; c=relaxed/simple;
	bh=tgVOPZZpf5WZjYRX4fDAkuFEjvz1PNs8Ew7UtXihAnE=;
	h=To:Subject:From:Message-Id:Date; b=ZZCroJPcrIUur96cSmGa35/Y5+HL4mfVCADt4dogsgPRtTi1+Sej0AKDswQKafEGoCp3UUm4+Mn3Qg/7qrR1yDBZO045AcD5zJFODsg1ZgwRKXxOhS7ahrm+XZj3Ya3M6rrNBQmRBst6PssiUZNjxYO31GLx++GMIHS8wSAkT0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1tbW7sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1tbW7sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E55CCC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713520762;
	bh=tgVOPZZpf5WZjYRX4fDAkuFEjvz1PNs8Ew7UtXihAnE=;
	h=To:Subject:From:Date:From;
	b=u1tbW7swLk+G78Ly7mCkIWLDzRBugGXjhl1IuGvM3YOV5RNjR7MYZrkBaaEVZ0MRw
	 L0JMjY5xUxqwyDHdjawNsV14nJahdmBsuLcul1vIacuh+yigIXf4vfVGAmNhb3ypSi
	 0se7aRd6JNimcEJJcdTwgFPQiLMaWzivuv3abgnDKFdQFvIV8MkqRm5M8IbxX/Dwmu
	 9T7IFhhsW5VSLPe0Y8s0uS5JxAW+DkFNWFQxK3r4gC4Z2UF2mCMfkvsy5ZaktMoOmS
	 N2KYgkFYk4ROwteP7UNxk7iUp78GNyd9GVl6GhEovVwntaRqZoS0ZLuc6bmlR5fIm/
	 9I1FEsJu+/0Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0699C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352076284.6143.7437002959842705025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fb86da0f6d137651d74c46aae0b44c3e8cd96e22920e109deee5ff775c3574
Date: Fri, 19 Apr 2024 09:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713520762
