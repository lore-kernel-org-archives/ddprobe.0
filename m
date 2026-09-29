Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412B9495AF7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790682634; cv=none; b=Nrx0MCwmtx1o7vq/WtftB1/fjOMKQPjDmvWHrPCfT/58D8TykmsAIvmpRF59LruXhB7dtqRdhzJXCGmKxXw7yXepAvQO60iqjTdKOQMN/7qWZNMv17mgpymo2ovsbLN5O5SlXlby2bOV3RB5BUyMO5658WdB8WRTtZfpmU+cvb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790682634; c=relaxed/simple;
	bh=JR8K1B0UQLVQm7gN4vITB8S1xnA/AYLHS4t2SShdK74=;
	h=To:Subject:From:Message-Id:Date; b=stuWj8PQdRDITlOrq4yUaXuGZ7GdScV7w6pTkgeXD9gmQkPGduw11ShRa/NG3winqaUbh2N14NVPsn8yHtkvGpFG7nWWIzbMWDMnZGb5B9qH7zSxkh7H9oto3876LxDP1IE9nYo4QG8SMkvqJ2AAt8j69lx4eia37NMMKsjeYRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIE8ytjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIE8ytjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0F0C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790682633;
	bh=JR8K1B0UQLVQm7gN4vITB8S1xnA/AYLHS4t2SShdK74=;
	h=To:Subject:From:Date:From;
	b=cIE8ytjh7qKhCBpUqnXwCiRHZxi/KXMXiLrQerRzInsgJ/PRlEwhTd5E7nXxB+SS5
	 loJPix6vsAeUaaSJm7tgq8OretOvD3boRiwjiyzYYqTQI9M7ETIzCatdimBOBJNgfS
	 VCgPIleUNmcuazryk1S37u20ci2Jd0zshr0HBucBs0a8O2mTgFX3WxckcNSsj/nTn9
	 Yp1HwXh/i9qOb36LJHYFMaZuQOXC0JhXOuX1Yfwo+DWNHNNFRlIdYD7d01Wtrfdlri
	 OuECAY+AsgUDd3XYERSSCCMakS8SAB7bKHLj1w5cUy+Hh8MFRZNwbT1R1CbX/dFdM1
	 agVh050fxY7jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A991BCA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068263368.13858.2277011566500296613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82985227dd932e008af3244a4fffd494f1e1f19507c2d1528638ebe980cc2292
Date: Tue, 29 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790682633
