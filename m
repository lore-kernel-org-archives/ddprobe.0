Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1721233AD9B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783627114; cv=none; b=ihQVQxZVhUvPezKLg8uRUiGca70Vto3nMFvrWc6t+K1Yu6jWRSL1Aowo+cpJiFrUj2r/h9R4UXWgyXzGR7l10iGhAYeDqUhBwTkbn6s60dwuO2Md9eqsplTDWQd0hcy8QLKkAjY9ZMkNHQIgooBAeOodVA9MfQIh4rGEGUYaZZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783627114; c=relaxed/simple;
	bh=p6s3yHfgJmOs2xmNXg828Wr+H6UpwIV/1ubsrqh7LrM=;
	h=To:Subject:From:Message-Id:Date; b=EA/HjQo70lksCFYvr5y9NBzVEsQFupRjM7Q/QyCZJnA5xYghnOlBmTyM35AjoHOnkUn98iLL6ZkFB2BRkHuV/EpwtY5R5N679PP5/G0tepGXKBvNFn0Z0IJeDCWgLt6hmJ++DxDsaepy93r5LN/nbjgxNc7pulcy6xSuKHfv9fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XK+nDIM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XK+nDIM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC30C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783627113;
	bh=p6s3yHfgJmOs2xmNXg828Wr+H6UpwIV/1ubsrqh7LrM=;
	h=To:Subject:From:Date:From;
	b=XK+nDIM+Db/O7xjNh5lbcHKdTxF24sJkmSzdDF+xTszm2Jko6RfbslG7nX+zwI8Nm
	 DT22li0HZj4das8KKp3bK0ijrc9A/CkPzO0jzj1D7Fzk1AO5DSWx+dAMJYxMtWG1mN
	 sp+ROvzJeccB+yYsLZ0XJ8YRFVm7sacMW8crUWtE5JnT0ohYEgTIdKOwkl3baRRs7I
	 aSYdduNdHY7FOAvHZEWGzfg7/zyG+NHzoa7Rma0Q7cX5DASRBP6z/+BAcm8TUlQRyH
	 26CqKZ+wlYVYWM8cCGEQDoJRlRTO2ETcGIG5mKAPgWbX1vRnHzihxhkt66kriZavxX
	 GWRA95O9inwtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86B3C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362711368.26674.6225344491631200852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5afdec176e5e0f5e209fd840f4df0d61369963ba8f01b6cf025152937faf2a6b
Date: Thu, 09 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783627113
