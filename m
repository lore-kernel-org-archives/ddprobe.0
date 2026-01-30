Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF3235E54F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769777634; cv=none; b=jxesCRQwZ80x66MU18AhyuqOR0KSRj18a4+LS9OkR1uxbKYJmFvsPVq63X8k2q9m0dvWjttMEaGzGPoCnwDpnrq4nH1Gn6CFU2q5favCR68bwEaHgO/QRl3LKLk8wAzT/nA8z7I6Hrl1egzD8vG6ODhYp6Kl6XcwI0jz9p+NuJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769777634; c=relaxed/simple;
	bh=bSwSJVM+kf+djrzePgx9Jm57z2I5n6lUOjJdCFZ+mXI=;
	h=To:Subject:From:Message-Id:Date; b=M3D96NWDilsM+cZYZjCQKgM2C7E8MtA5RINRb2cdprvHjS/UWSsa2+zwLR44Y9IOuyOPxbkTDujkUpA0aDTy4IPZryAOp3ShRyVa/D+9pOLEYAugulhAUUg+0Ph4gdtE3EaDk64z/JupkTYjzymL1OUx+SUDMLq07Rq/bKbvgy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5ox8vfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5ox8vfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A38C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769777633;
	bh=bSwSJVM+kf+djrzePgx9Jm57z2I5n6lUOjJdCFZ+mXI=;
	h=To:Subject:From:Date:From;
	b=L5ox8vfIk+Afs7KT8f5gYhjAGTfSEpcbtmkv2CfqhA3/MiJrD/X/wiSmwgtSIe4KW
	 3fmWQmnRge+qtz+SVqrfBfOUpwdHVpwCh4bsG8gLcseU7y9/XdACnpKQS0W/DfT5dz
	 0QnbGIOqqEEKICLVwvLKAdVT5OdwohQy5SEknHJdFyCxrcIiSo1sRuE2kljO/+Ro+Y
	 o6KO6jinh2DwiZG8oKqqLj1+mKjCG0UTz+kyLkzaqIqp/MnS3UgMEVI+8/fXN16VW0
	 gSo4sGRpgXJP2i/GjrYJUip+Avz8E4fMHSuOdLuMcRy9T4Wzhj7NL7EotTYzn5KztW
	 DMLMC6TAN3+Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303DE6BF0B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977763359.15012.15603521237534037269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbe60ca382e2132c6408bd2c4b4826f8c0cad2ae0a626e3921e190d7df9c0f7
Date: Fri, 30 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769777633
