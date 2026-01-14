Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01952C859
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768416234; cv=none; b=EQWZ82UXzOQGqC8qSs6wf4BPo/mrRWk6jDA3PMVh5MI5SxW6Hbmmz9cBNCZeDJVa6DfiIhwafWwj6czbBcKSaI/OSGU6ck0pZR9s1AVkiBBLyGtmZTY5yywpeAQAZvGzkLxk3krTMxTacJNYUg5hAApyqbEmVsk//ASh72A+two=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768416234; c=relaxed/simple;
	bh=Tqc6Pmbm118kggIyjeAQoySHOekkqhVQ9NoNqUMnaIg=;
	h=To:Subject:From:Message-Id:Date; b=BZWHQJaYWcd1qHl9LpmqGCLBIidtRJ3vhedKGjMTR7KQkWQ7aTqI4Y73hmMJAFuP6PfVhtyKvy9c5nFdnDeaDWvqNzw7/EFP6NWc4zFYHFWM6OtGRjACGVpdUhJ2IuOxyaMKMwEDbz89MYh3eARoec7BZAPqKNhVuPOBAifyp2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnBLjvDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnBLjvDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A252DC19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768416233;
	bh=Tqc6Pmbm118kggIyjeAQoySHOekkqhVQ9NoNqUMnaIg=;
	h=To:Subject:From:Date:From;
	b=pnBLjvDBpgQhHVktK4aWPKLSPb5TZ6hkxvb5fjKoBQGJZgxBz2k+YIYFZ3JXW86K4
	 buvamyTiN5n6DShzIb4bRfsrRPH2OCdGSJgl6MdkPDqenDb+HeaoCH9hKvZZePwsxp
	 KgD5/Bl0oLtNgXZ8VoOaYcMlq0YUU9h+uPdV8ei8WbFArWWGt0PgWRVA/087lxS43+
	 6dbXaizbeTiGRQc/XLksZdtUwNbHhigcVfr2uy3B1LJbwLctOto0AKcKLmortisAyG
	 EOdXcJsF7NovwXSJtrJZZH2yZr3Ksv5puxC+YWtsLq68rlUKVYDXr9O50DoPs4aQOB
	 Jtt01nPWuZa2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D16D3900B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841623358.19583.16691498606857994776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7981d9b86ef8908977be93ce151fa090bd8484a72bb3377e32c62f634fb688b2
Date: Wed, 14 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768416233
