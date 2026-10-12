Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6486523FC41
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791767434; cv=none; b=bbgY6GG6LatZ830fO7GoM8x2gqHTeqVnlpOMEc9ZqGDT6mjiDVj2/txbblW9RNhnojE+hMEP4IWaeWgwpeNlHcct91gzjebe4Dca0nCWO/+TpxA95qc2YJQ6aYXROy8VgJKBY0TqLq7QiiEhJ8IFmukAZeC6DUzTdB5kvoEGH40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791767434; c=relaxed/simple;
	bh=3gMReIM+N06WmbtvQO4iEeFMZMmKkXqAgEhOhW8eV6Y=;
	h=To:Subject:From:Message-Id:Date; b=XII8sf7KgLwsFZ3od/h2oNVKPmVIQ1RpYkv3LCLMurF5myXki7TpSF4I28Qq99QM4HgT3+8tkr2+Y4DA1kUUteVfMKjmUFfNxBAio1kseC6S31/55GMrlzkMXmpcDz2z0DR2e+QJnw/x/sqi6QU3aMJUL2Y5DWwDKrTrJ5VbJqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mf/bm2XX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mf/bm2XX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4125C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791767433;
	bh=3gMReIM+N06WmbtvQO4iEeFMZMmKkXqAgEhOhW8eV6Y=;
	h=To:Subject:From:Date:From;
	b=mf/bm2XX17cV6l+A4FRxy+9YHDIuLIHGx1dMxQu6tOzOZZ6nvyrlxN6u9k1ZVJrtt
	 w/LQVllXuDluYrTz2Paej9n/3VZlpEGQJFCrrhF8E7Qfq/CqqpOnZnQZUSeqREUEXm
	 heQyg9CTrf5TzU0wlaJfkddNerDspdBwBWR4RrniS9VPzxehMjSpkr2wuCWv41Ffhu
	 uxQ0VV1y5Aoa/2YAx3qr4Nu0pwgIlMrhvD3hrwSGnq5QzVo3hHCFoKAKENCEZbxJrR
	 zUTvI2vYNmp8v3scgzO8E0+kE4lrehwcR+mIsE+pEvmMGRkb7HXOHfdN2+Vm/+rtTo
	 DvaU0s8IL5pJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CB6CA9ECF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176743368.9436.15047831361626916991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41269c7bb45abe074b2ecc99e7f16445dd83e2b0220595e975e4191bf6f8a12
Date: Mon, 12 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791767433
