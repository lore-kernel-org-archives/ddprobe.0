Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5697B86259
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713266363; cv=none; b=jYmfwswIYTxfAuyRkTDD/JdAc+cyOHJ1GGR+cl6gLmnRrCCPKW43pc5Hk0BqHEntjD4RXwJRmivoGFwM70WHaD7/P+WVn3012wGOPCVCrKHEnGB82Ok5Q0hHwN2e++ABbVadr5o56dZuV61XsWt/bsDGOsxqg3A+ghHJftuhhzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713266363; c=relaxed/simple;
	bh=C/vHb35z/wr5Kd93qWSKtfwiIXQ2oh7gsQHato3lJLY=;
	h=To:Subject:From:Message-Id:Date; b=HpUwgjAarzWKtNkDEA/xCxvIdKOcHYK/ibgM7xVuU4W6akr3/PlSZaJRKExzWV2uc9NF5IXmiJO5UTPbTdzfbL5XMcEvaLmazQgoBIAI8HmWqDcARGX07ADpEG9WbQF+AytmfDFAKdt2UL479jqF9F/Qa6U/NmO5JyuXxNj/F4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKL6EnfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKL6EnfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A2EC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713266362;
	bh=C/vHb35z/wr5Kd93qWSKtfwiIXQ2oh7gsQHato3lJLY=;
	h=To:Subject:From:Date:From;
	b=tKL6EnfZb8c2SyggIKTCAcLct6IgR4+2nAAqdiuOkcjCSFYsrx3n5bXl8iofWvwWr
	 0HKiS+kN9ArYINEUG6jUcG1tYflcy9l569ibw9UHuJJrfCQqax1n7LWHsrxWwHCXZq
	 VE/V1AAj43e/8EFk42oIUKR2F/hNZqwUcMnUcZDs9EppFuvNMwSnVzByoUF8sTmMC6
	 w2NE5sG33z9z6P11ysZT4AGGw3UTui4Ru1k+O2waNVW25VbxPbe6YW3lWUeN10STHY
	 DGmr82nb0LYKHgzLmW3Nwj/5Zh36Y+5gNea1LL3yKH0glSn2HeqDeDLLcXBlD96/GI
	 0uXQb+uOz7A3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70F2C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 11:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326636279.9140.17313980637020750304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70900734779cc3383db17f4649f93bceeb3c9013ce209fce81d1ebb0560b4c63
Date: Tue, 16 Apr 2024 11:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713266362
