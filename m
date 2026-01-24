Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ACB3EBF12
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769280834; cv=none; b=OxYCHpc/pmmawNSKqMwRcQWDjfaqFX3B/KOqI/PrXxmHm7FamLixPK+oQJhEB0cBCVbezm7ugGgcIG45uN2Yy4/i+nSnKpBw1x2wktG2HGRlyBmF3PIvKDIJElDw8xAIfdcGqO9gTnLrm+Mu+BPHqGuLCGTC1YvGnr7k7jkYslk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769280834; c=relaxed/simple;
	bh=D89jT6VZtnVNyc1aZP3W0O0r+cctJYaT1mGFCTx/B3M=;
	h=To:Subject:From:Message-Id:Date; b=imdJTeVzpfgtjJfCViw8vylhJ7zvXVUGU9TtuOyVkDAXJPkjA5Apslpk4K21FBBvLtFxl/vnRa757YF31cO4TSF3oJMBRf3NLpPgTIMJGTvzvyLW/6mQxyYKJDhj7EBi+l5fCyDQHFYHPz5xt1tA+njVqjhVcGVOiJwdO+VEgCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMQH+Knu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMQH+Knu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7051C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769280833;
	bh=D89jT6VZtnVNyc1aZP3W0O0r+cctJYaT1mGFCTx/B3M=;
	h=To:Subject:From:Date:From;
	b=uMQH+KnusW0nnReEsgZWr7t0ZkUcqQbaNeBnbnkrsjWUTuOC8T5NoNus/eL/gZTqr
	 UXpIm3cZnA4cSCvMXe/gEYiN/ghd22mbTEnTC+rksIl6B7dW53As7ZPaEMAnUj5Hvz
	 lorRDYCcAOi5dErhoIx9/PJfNSXHPI1tra1rtZe7YZLHxpf3AbmZqkh0p57ZoeqULs
	 KiaW2uh2JYbSiE0oUYt7rGZT29JxQAmOreZNVhDGEbAF0cYVdWGp9UtvN/RUVUjTKI
	 7PlkXsTXx+ZhM7+UF/ItU3q9+IJ/0ADmJoIJgLFEZkyYlnvBPy6c8wM72RpqA+qZOF
	 RlkI7Jw7CXiqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95223D715E4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928083357.21598.7860123840708723237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5afd94a8bdf84f73117d3f6d63fae06705960d661395134132c370a79ce208
Date: Sat, 24 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769280833
