Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8A61581EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712692697; cv=none; b=TVF4SNI1CuxzKJuYVcuUEE/vauTQnP27XSjOgVJ+/sx4YQC5dNEoOUxlzE97ShgTWD4EcYteoQDaV3GRjYlGk/DgDNXKgbdBdr1J6oQgMUA97hVFBgjMT576CuN6IZz8fBqLO/1/W9c5Bmj2k7QEngnmqWEcWKisuzUQQAgB1kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712692697; c=relaxed/simple;
	bh=gbR5e4/SjO/plXYb7MBUM+UIvZ3MIwGLeG6ypEzf6Mw=;
	h=To:Subject:From:Message-Id:Date; b=ddA27D80l6laOjq9ro6cA7t6bUWwh44nfYuC1TVu932nt5vt5o+Wll6Pa4WcR0SSiN7jOGXYFLJxGKzSo8B9mF95mMZa/MF/hE1Qk2mYsiFakwTNiSjDb2edFfUMP78LaaQV9dZGoxuYfhX/LID1oPpUnLshFOXJIx+51HeEv14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvqNCG+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvqNCG+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DF8C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712692696;
	bh=gbR5e4/SjO/plXYb7MBUM+UIvZ3MIwGLeG6ypEzf6Mw=;
	h=To:Subject:From:Date:From;
	b=tvqNCG+zdL/+JyrGJSM3qq7VCr+nPVP9o8LI+uMzrboZSpvE2ZVYwYGywLWo7MfqV
	 7VdnPtYcJ0DJQu52Ijfrrt80i4Od389CclBiFSLAPUA7WpdBTl10ks6EbCp16syA+h
	 j8Cn4ZPQ6oFPcozurulTGo6KGMlT6AsUs5eLpaptBiTJ5gdBKB9V2w1vdJNTAOrZZ6
	 K5mXMZF9EC8AxoocpMGZb8UGHmMTDnRjV9+4gXIsZOi889CZ7OmMK9W9QmJjVQFWEt
	 euO7aTC4zklW7ZdPRcY8EtTlGCix9qx/nK1gdXg0GeKTCM7T940us4SSkXGL79Y8t1
	 Kg9PUVRO2YpNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F844C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269269641.14740.3580654088611657587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca94c56b2a13e8c740e20a6362390efd7bdd5d25a7cb692988cf2f4f1bde23c
Date: Tue, 09 Apr 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712692696
