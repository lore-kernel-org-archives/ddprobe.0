Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D011EEE6
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747184395; cv=none; b=F+qdRe849UkuX+CgTEenToTbTpf+Febr0SUOa3pPOP9r1JJnlsUCZt7o8f77AlfLybxJytVexb2EXy/J9pNsiX5tjwD0Ys92ewG3yGfWzAUr9Gm3LMx/+LfI7e8xmHvSDpgAnGnII/epX4L1LrAeZE73iysiuh6H+FIq9888bi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747184395; c=relaxed/simple;
	bh=UqNk7i8ULGdgWa9lXjrsMaQDKN7xyk2c3G4LNOw0l+A=;
	h=To:Subject:From:Message-Id:Date; b=sLUMzbhnyBA2DDvTKQD6MqpvZIyT11WRT16zcZKE3nb3oJHhovnVYdPjIB/ELla+JZ9GwFb9aNtTrrAdfVewObvz2+OZWzjVPlvYDFPrMy39TIEKSJ2jkim0o9+3FQy5yZJxLWFyM2FlCV8IoiulD5q84fCrhFdsop3fJdPOQIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OStkkWct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OStkkWct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F99BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747184393;
	bh=UqNk7i8ULGdgWa9lXjrsMaQDKN7xyk2c3G4LNOw0l+A=;
	h=To:Subject:From:Date:From;
	b=OStkkWctnLHvVlXCIW72uSNk7ZsLJGq19EENEHGuHpT8qRSjav5jipXuOTLzjgoKn
	 zWF4Nd6cCWLlduZHJ0PS4YHtZqhFgk+YeJN4wpn+x37cOe1SLUpZmu8MmbK4l57rlP
	 vU9927UiYrgFI37C9GAM/YKA5W6+TAqY/EfN+mogNp9/XGZKTzddDlhEVFQpq5SGx/
	 MmqpKyFOhW34CXS+Kzc2+ZxaMldXTO+KtBf5c42Fs2jaIW0Vk4XdVMKmqOi4oSUsqc
	 Hd51n5OGMXPiJjB17KIOuzIgwDsiQMW2zKbsLoIxR3aOnRjM7IrWh2x5bWhvxnlUeC
	 ZG9/b4+/hqzvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB71C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718439357.3277.16505830137380197110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca48a71f739fdbfb9530cdd9e4040e4760d0d6c2926d8c266d5bc9dd344feea
Date: Wed, 14 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747184393
