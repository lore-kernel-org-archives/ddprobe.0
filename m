Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259923DD520
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792018234; cv=none; b=RPFfHEc7ObkTBqv7z8os0GVlDepfvK4A1EkruzTv1YzavCo5wfWqV/cC5UhoIfDv/YTdHW0t2nnpqN4PTvNziYmG9vVBdnFu+E+/si1gi8MOowuguXyZXke924Eh8DwrWyj5MtWL7l9pU7rNnaiai629rUD1p/US/XiAlqwQoLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792018234; c=relaxed/simple;
	bh=gTzMgnKX77VWItuufxlxf2k39p7W5p3i2B/xW8vzNV4=;
	h=To:Subject:From:Message-Id:Date; b=GIxMaD76GjblKnIS0qPHHUnal03dHFUOeNtbKiwf8O4liuqZ66+qVxICfHZo7ZBSRyhO0akHTS4UbnAFIoO4HD9OQc56/oetfUXDxLF7P2OlUHn/1u1cNRPs6gggNgmOYcLLM8nfzpja64f3n8Kdesq1z2PHtdBQEvydRnZipD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CC/ZJ2WX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CC/ZJ2WX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05C8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792018233;
	bh=gTzMgnKX77VWItuufxlxf2k39p7W5p3i2B/xW8vzNV4=;
	h=To:Subject:From:Date:From;
	b=CC/ZJ2WXD5pUpcZ/qmacSpkF6xNgg5pERLXczrNVcoxmgEi4vea4ofTLG+xLA4Dgs
	 fFXKX831vIlToO76yMp6ZAeGYoCovQyu/P54GQhiko70CQKHvEhz8ZkzKtWMDm/YVd
	 AQlRUQWDXERTpQkvmcKBwtegCh8zf7HdgUjFuBdeSKMyZCLXllUb804aPnVSc9oLGL
	 M4J2DKEL4ULrf9PEBdaV+cfv+17uOHyD/M2hZwMMj9of6EiRqSptrCoBaq9L6NR0Xu
	 j6dMR+QTxztVb4lxunMK/S9X1sLcMHKcwpwFW+NldBo1/H27umAG6BPh3pSdDJ8f8Q
	 /qmrgOjEffqSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0DBCC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201823369.3117.10641563863531573920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa5491f88eef84fbfcd4813e10dec0df38c3389eff822e8ca02618710e5b773
Date: Wed, 14 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792018233
