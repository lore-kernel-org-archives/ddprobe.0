Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2525120AF73
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736783154; cv=none; b=sXa76S3FbViBhhQFzhOngxbbZUtKTtTLyYnB5KdvRjeK/B6KkxD3/oYbjzbooX4zg9nOz+y97gwsuuVCZg6/EY7Eic6UfeFKWv7p+xowKcfoDjO0ycRPHTWhARgRzeumzZzvI/4BoeDkmj3DbLS65D+3apPwhxrbHJhc3ku/+N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736783154; c=relaxed/simple;
	bh=Ph0oMzZHcRzaMgzfRhl5rWdxfU+2wreF7Betpy3nBhM=;
	h=To:Subject:From:Message-Id:Date; b=f0okzV01mCYWxYJgmPbdSUTVQx6sw4VOs1E8x+QoKBJ+fx2ZFvB2WSUc/VE2az+1AL9N4c31r4fYeDyPXhYVwZHTDpoLs7NYYPKdu3S8pws2sgZrnMYmv9nYPWr01Ti12JkHQeIg1cfxZPXb7rGzOcW7nZ0c5gUzbLku8m7rPGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9H5Xnod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9H5Xnod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FCCC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736783153;
	bh=Ph0oMzZHcRzaMgzfRhl5rWdxfU+2wreF7Betpy3nBhM=;
	h=To:Subject:From:Date:From;
	b=F9H5XnodXir11GoKutw8jxojC6mFDNTgnC6OjC4nyEhdRczaJ1M6whQv/RfOAbspS
	 8ZZslfmkp1Y/wahGrnKii/w8ubhxYWz+dM/Z5fjTYpchi+rV14Vp6mG5uQtoI1cGlH
	 Fc03voYuflxtrJJ3L9SdaC/T/c8Lm4UgI39h1JhdpP11FUvf+ihqtIha88vjUmVUh9
	 0MH9nsnlMcf3vcbzLKpt6STPV2f7gysiTfnwsTdrJm295eQsKr5w5HYWODuOYrVoh0
	 lmrzxdUNuPLXreYPMisZKgCMjRVkX9Pv7VbX1UEDktuoB77WQysBA3ofBUg2BWpEKN
	 G69/njbclmj0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F20C02184
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678315359.29764.12053140537409725687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794baf59092138030b00cd3de3c34839689c2d85fb1e7b0bf5d2abd7082abb20
Date: Mon, 13 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736783153
