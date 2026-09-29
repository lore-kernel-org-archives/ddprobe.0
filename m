Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE7720D4F0
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790648434; cv=none; b=pwPYfia6i5WnG9teAfULnJzxrfroJx3Fp6K/LHYIY3AjS8JtupbxSVYGcJQP8R8H0D9d1mTBhNQmjgC2VlVEY97UlIPsX0quXCCe9SB3t28TaXctnv8RY7720OD9svc3YGH8a23NcOg4Z97L7ux+7n0/ZD62oRsJSB4KsWECoOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790648434; c=relaxed/simple;
	bh=TSUYHAL7Q3M4EoGr/dzv+ZIAvbdc8woBqF3RRm4dBhs=;
	h=To:Subject:From:Message-Id:Date; b=A1KqZrnt6MRUdy33CmPm1quVILu/aL+0L/sIfMb608ibF+tdd6ILcEaPdSbi7YvKaGbT1FR5KJCpjOq9y05DxqH2yyewb2c5BTYacwOo8w8bw35pmMf0H19I9z6nEKzBfOmDlXSqbbnI+V09RONseTVLfh8inARsnsqWND0uR/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INmCiCCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INmCiCCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE7FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790648433;
	bh=TSUYHAL7Q3M4EoGr/dzv+ZIAvbdc8woBqF3RRm4dBhs=;
	h=To:Subject:From:Date:From;
	b=INmCiCCWL/liBLIWfxOvVcZA8fqwVYt53Fc/9OfdJ0bb55puv+y6QHjb2cVmAPIZT
	 5yjILUDIoY9+wclyelSJl2fFylgPsctgysshx5ylVC2eydS9F4WWoLVbdWgoGvris6
	 rRPIN1n+6/d0RoWAQy0hpPR3Ob/WcbZnxbJ6BRxzRfGcZnQhQjwzWDqyoxdvBb9+AM
	 ZhpBhfp45v5rDrZbD3ESy6U6V/LxgbuthZ1hK3PFx0DElQtvyqGcuDnVVzfqCNv5Sh
	 iYzjdpqLq35Bi0YPvVDKhAGogmGmPl7aF+AfYOxu6j2/tcEbPSGtRDKi6ri1z5rJD2
	 RJ2DTebWFgDlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A2CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064843368.5820.11526060426117005949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20378915b6f0f5f0623d0c3a2be825c122ea7f1191cf33dc4fd2537362896622
Date: Tue, 29 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790648433
