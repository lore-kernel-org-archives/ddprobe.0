Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC81C205E25
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769605434; cv=none; b=sjZgLvtNvy1iU0yxQAqSBS0FNBsNOyOnN+6ZV7ZjVFQrr0PZF4FaffCzQzcnLHWE4Tn/0z/Vk9qpHmxiA3qqfmiqACvnAaKZhTqRXGZ9ZSHk03fy6ytmOagplCI8gxzMzKbk75Abnx9JHI4Tz6DowKVqYfnG5V4hu0RT1tjHGEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769605434; c=relaxed/simple;
	bh=pQCAebVE8jpe/+QofYwrBuJaj5AgDjKq6i4ZfI/gj+I=;
	h=To:Subject:From:Message-Id:Date; b=WEGhBSzIGKnzSE/k1u55wKlniB/Onzi3D9HY6ZKxhwQ7brOa6hzv4hjBrN6ON4e9ETDcwUOh14Fe5UFybATtD0MbpFEPIRsTbHDKEo88Ew6VIiApOeoD+TKwNWYCPCepxYOfePogfJ7VSTfZdQJtS4/PoN+gaFPMLiNAMpR0HcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVaHpVON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVaHpVON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93B2C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769605433;
	bh=pQCAebVE8jpe/+QofYwrBuJaj5AgDjKq6i4ZfI/gj+I=;
	h=To:Subject:From:Date:From;
	b=GVaHpVONJTOzCI4jw0TJqV0wHFfgn/2ckq9ybzU1h+GJq7Rcqe8jaOBL4xo5AXWbZ
	 EfWDPOF33GZ9L+VV3+7MARfNZyvk4E89QBIA3rdhkJD6HlE3ZjcHjCJmu4Xd6XSMTU
	 dhoXftx3VCkePd9q3uecoIRo7Vqudq0xtvPXJHvq+a1mjl6hhyL5WGzHAvpTW3SfNZ
	 8AKwdtfQnFMpIbr+H5rX/uyIB8FpcWjyqY/+UsE3zM5wM/WdaXOCe6q5GHm5AoYCM9
	 E4edXfDnNdJG2ScgyqAeHf3n9hD3egL7Ya1KbGnjHjpM7sJ3Eq8sQChe22wL0yEkyE
	 uLhV2xGIAEKyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EBDD25B59
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960543361.6361.15990517930382344165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bfb0cd0a62f6f27ec030121099c7f398b53cfd6831b372dc6eee80e79743961
Date: Wed, 28 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769605433
