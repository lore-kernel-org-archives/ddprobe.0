Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A74F17CD
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715650343; cv=none; b=mQFNprwTFq2N8tANDmIBJT2fgXGJLCYkxlDjUDNuX15cUqpVfKHyxPNTexVcyMwLTARiXgYZSJyhUG0LLZ9SFl1ER/iP8tq5X2suTr2RP8IBiYnIUU+vd4PiX5Bcetu/D/K2hP7Sy54vzp4ngBN1F7HDaaLYTLZbDf7bXPKozNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715650343; c=relaxed/simple;
	bh=lcR9YJw/O5i1K4BRfCjmDMD+260hanQrLWU2lIcEMKU=;
	h=To:Subject:From:Message-Id:Date; b=EDuguefGR07rlN5vpVgHVWg+We5gQeieS/c4FYR9JsY3T8MIa14xC3K2kfH90h69xGXMf+dla/522DmvKAV13lM24NzG9p3kJmnPHT/2hUJl7bc2un14mnkexvNxLTt6KA6xtFEHOwE11fzEE2ufYy4Uzsjpsc22Hm6KDcmvtxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRAY2qAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRAY2qAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9951C113CC
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715650342;
	bh=lcR9YJw/O5i1K4BRfCjmDMD+260hanQrLWU2lIcEMKU=;
	h=To:Subject:From:Date:From;
	b=eRAY2qALd3L+AA0iH23Hr1ZA8VL36+/zmFX5lDzUlT5DGfUk2Fg++TsNY0KeVffOZ
	 qJGGeFjyxtxy8IZFs3BFMYqji/HRdT4Cv1FUhPrhwa1wiB56+BUybRnYbCtruLZgGM
	 L5sJ+u7PZMiC1O871aKyMLszXcUAr9vzVmZeJ5ozZn39y/GDu4Z7wsuT7pyOhv0MrV
	 Mq/5MsP+W7o0dbiZVoc0FIaNVyGAGmp16gCD7LnDM4J17kEmhL6fyGvXTG6WjnM+aR
	 MDn5TAgMGAtEAHjW1xRtovFSBPKpuoVmnVH/fZ2+PqRxj39/Cxum2D5oqIheuuUXWe
	 yddtAOBsQVcng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C762DC25B7A
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171565034280.25031.11493957249753987146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417f302111a5327e0966209fe763c1c00e852f53e926ad957e13ef33f1049fa6
Date: Tue, 14 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715650342
