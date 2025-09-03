Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5C119DFA2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756906194; cv=none; b=rtPWOCBYQ03iuL1++8txhbz/haWx36Pujcit6gI8ogiGm4ud6hyLvzwFdz8jjCRnWgZh7GFS7eGqBF9YJG6pIGUfUK+LWc6BqklcDtPmjTKdendce2UMBzqSyywNZH2Op1njkOwtPDPaSEKjWor5rx3xzX2egKDW3bjG4cGbW8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756906194; c=relaxed/simple;
	bh=c/DM5EW9+GgMk6huD6RbcOpQyp/v/Lb+2dh87c/PZ6o=;
	h=To:Subject:From:Message-Id:Date; b=FsR5+Wfs1NEwzi/AssfrAKY07tzBcFup4qvm2sABDRcKPT3UeQ2ZByqt4xn0RSs6FdUg2Xu6Nd8bKw4P2ghfn/xL1g5p5wv4cL8g+9jUgDJPRK1meapX2ckMbrO7SQ7riye7H8o/LV/Lc41TxLPjHcWooKfGqp5tgVwyUZqhL7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jG/ZbnGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jG/ZbnGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2ABC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756906193;
	bh=c/DM5EW9+GgMk6huD6RbcOpQyp/v/Lb+2dh87c/PZ6o=;
	h=To:Subject:From:Date:From;
	b=jG/ZbnGRmi25lUS0oz88v7MnY+xLALF5zP/LVeYGA61UhMR2KQR6DNFb1xqcEeV6n
	 DYrL5HNlw0Pi2moWSMqGmWiP34H5+tmnL2V8PMiEawXkIQJukad8hDu4H8P1vM8E41
	 S2e7NyEc0uFskmI3Y45YkWLx4y9vGZ7w51hqaYZ5ItvFXmAQrhqQnDe9bYdQ8qkBns
	 nUHAIF6ifl5H/1e3ZM2JTEiu9+FuynkoKxKVc1+vmTpF3U7S/xY0lWw0DvLVg8DeKO
	 T6pVZ1puHe46wHx7j1nQGO2QkTP1MsMcnFJd2togq0rV/M3FmszElbdoubCl7QF7yj
	 KY+MQoZ4mYi0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90274CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690619358.26382.12469988567387669244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053dc34e728951237dd1a94001a32ffb0addefef22fc70a8c2af9dd4c723c410
Date: Wed, 03 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756906193
