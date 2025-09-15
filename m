Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173DF2D3212
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757923195; cv=none; b=El7ajZpShbAG0gScN1Sej6MRr6AxsqmWZjIKP4qu4tddkiMyCsbgzOBYr9V2A6YQP3u9Sig3HW/EfAOT3MaL/J8fKsjj3HiDU8ji8xEWZq2Nl/0SGtxJTbEteawanyvR/aChzRNZkFCkV2hsA2kfDMVBWWZ0NYXXMO+Fe9A9rlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757923195; c=relaxed/simple;
	bh=ltvxex+wO7O4Khvciwx45m2vn/VigICR+AzTwZGwTYM=;
	h=To:Subject:From:Message-Id:Date; b=RfCwt8GJPhIt8e55gFY40akPo8QmQ84rAw/Zsg6VmuO3GUyv5jTwGu7Ajqqik6CTuy0B1aBziE8cDpeZFj5Ww80qEP/vdpm7tlUfixeWSF5C7EMx1puMUuhpqru6QmaognL7UsjA6TfQZvOUsH26Y39lsHh4KDI1j6SZ6Rxkbuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQ1ZJ6gW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQ1ZJ6gW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A273BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757923193;
	bh=ltvxex+wO7O4Khvciwx45m2vn/VigICR+AzTwZGwTYM=;
	h=To:Subject:From:Date:From;
	b=bQ1ZJ6gWF4xlQgjCLZgqxsjA/2hFs9rBZxfosNYzhC2UCcXyXWGKoL533I37Xz4Vr
	 F9WDl07y0qqIkKmtznt6QKVStVKYy5nGzL/Pf4vDahMnJQCQiB9cFcAYI5f3CuIVN0
	 iAKDKRdZUJscDSpnGvRGUW7Cj+3CiIDhTiRmP/hQHmeEWJJVkQeHkf5a/c5V2I2sDN
	 Z01De2VP4yMdbrCYwoVvVKL/YgrtkSHsqxLuWwM6ko0xL5ZJ/ALxDC2iZARVUKIaVB
	 F8UcOC5BvPRRB8XWx/XpT98NOjQSpHwCgLrlzlXPYsGHyXAQftEpNZoecq29rdKfNO
	 ZZl00G3oj2FPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905D0CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792319358.21532.17619345963324062479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ee6fbdbe367e564d240ed77a07662e8e96e15626a3384cd9c48cf49163d70d
Date: Mon, 15 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757923193
