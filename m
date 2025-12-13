Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2F94369A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765586574; cv=none; b=DobnIMGUtSCn3UqGMMKc1WzT+glosvNUDaq0uOZRNDnI8llJqo+TdMXKq+f043p5UHhO7HegxnCIllmftDFrSEC7J9kUeKccr/vogF//BlKrOLlkqUZr8oLLO9ZwpQC3zkh44IvbTLCq7gvpQWuqjFP5vF95ESy8vv1vYNtxpSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765586574; c=relaxed/simple;
	bh=2xaYpz2kluAFPNfWETuz4GtZTtGmxMTZhbUQE6K69Rk=;
	h=To:Subject:From:Message-Id:Date; b=XflpnC0wi8zL/1UQaTwUNWLplAYdfyML5FmMpd4bomAaVeYLzLOkESmMX1ak+jm1FMncjVkU6bFM4RRKniLLTZhJC1ahqy08sKXlxlm/5GJZlbeDex62oD/KPhMVLcVy3HAn+DnmhW3r3iLLjDiXLWLDw+wyJM17jBZpqknVaBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O43twSpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O43twSpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7309C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765586573;
	bh=2xaYpz2kluAFPNfWETuz4GtZTtGmxMTZhbUQE6K69Rk=;
	h=To:Subject:From:Date:From;
	b=O43twSpxxHuIvUdOemUwyFRJzRGhb54fI2d5b6Fzu8/gJ6dDz98sUEkhFFMe64AGD
	 d4n+a+Fkh371TNXnr5tcKYJKQ3o7iaTyUlgmSdsLgghQPTe8ZMwR7CEdFpg+jfcI7O
	 ZzMKAb1luAJ3JABQ9jk+HTvUX2iN11iWWBIQn+oGc9pB4xJZkIAfqV+B9bE27YLDXU
	 gJGJGGZ2R2vFORO26WNhf9EAttkJjfxg2nzGCC4U5S611whLGzIufdrMXnU9jVehvF
	 xQwd78jiOB5Z+gCPb/7kibRNR1wI3rKFsd0JakF4SYaE9Kfb+jHzPEWw7pKOlhgD20
	 4pDoz78hSIdUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93200D59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558657358.25128.6175579931601719122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d9bc9011afafcd6cf5e681f6d955e68829ef9ca6002b899a844331458764d3
Date: Sat, 13 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765586573
