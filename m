Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3305618F2EA
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739779734; cv=none; b=WRn1fUWYK9YMgMEIvkcUyO4NCTxXWLZQzcIO4dvS+27g5fdfGV86UPMDWI0b8y/NzRP4fjxuI74j+ZLOE5SGMKd/f64EFA+feseIfY/Xx6T2/lk8X2KNGYQAQgl0a+k+iuS9OeTvIqSEOYFZeTtmeJqC4kcn6s6EzIMxeU1gf4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739779734; c=relaxed/simple;
	bh=3p9381VTeote1s1fRvclGM3JYrjKGRJ0kQacYd/8hHM=;
	h=To:Subject:From:Message-Id:Date; b=fw5YvDRfP9/eIRbEbXcNUY+oaB8kj7NqegzoxKLm20anxAo3SL8QFoQnuZeY0WppkYV9uK90DxDWL/4OclsVGqgj8nKUVw01DInTW87oOb2nqnvr6VuxmVXShU9aLMUseqc3KghZDgaNJFkPE8LNWdeQIX3yQoNyVQQp8p69H0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLLl5iDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLLl5iDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED8AC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739779733;
	bh=3p9381VTeote1s1fRvclGM3JYrjKGRJ0kQacYd/8hHM=;
	h=To:Subject:From:Date:From;
	b=hLLl5iDpctQbO1rn8E/bv4YiPo1BZ6i6BIo4P3Rf272y1KlHz1WQC40BbALYyDwPm
	 b9d6jtZL7WtSthlR+p9B+ldkpdkLRWXp5erXRmWTbzt9a8tCTIzj/bcIcSGZPqfKcA
	 PBrZoG2tsBvqvhX6mK3KqJxFwSD7AQuKs13QHoSgUdeZgc8py/ZBMoNRLmBIIQ+euC
	 D+wLj1yJvb9mMaWSgxT9rfXdGzYAQdH0gpKQUnLbJPo71tZ4psgvaEwWQtJbmaAhy0
	 1ZZnn6aVxBlFZEWLPEhRrXAxG2tQkTt19LmDs9s4zORCaGf0otz01SZQgZ+H7G1y++
	 YVhjgrmoIh4vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9926BC021A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173977973361.10285.16294077948648183959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2866cfa53ceb4f3454ce8e6e260ec60b38a028aab972e4fb84ec0fabbbdaee57
Date: Mon, 17 Feb 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739779733
