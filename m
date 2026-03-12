Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA9B284B25
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773318894; cv=none; b=ZUcy1QCVaM2tB8D/KOLRnncSDRQdFGFkHz7AFxs7kAz1KVQl6IHShDIxhmBfUxjRSUv2eY3/q0jPYe+Rd5enVaZggem+uyndfLMG44LMKLH3lkE+b/fEvtRwrdcEJGp1CIXXvGcVvZoiWj/Mgw8VG/+1ciYiS0fz99cCd/y5Gc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773318894; c=relaxed/simple;
	bh=HD1lbBzlDzUxr87RXSN6npEOiiIShjI5WrH93nfQ19c=;
	h=To:Subject:From:Message-Id:Date; b=Y6QxZ+KFp3v3QIf3ggQ1h0QxWK/YUmRWLbZkL16SV7SjVlHMTs/eCnJES91Rs/4zbu5mDTsJgk9HIcsQktxhEQQd1HfNsFp2gN1pi9D0y+X94MVqisLBKI60VSnNw3PjHe71KUQwMPmZKLiMOzrA6iJgqRXgJOT38vlC9sYUEYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUqOA5at; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUqOA5at"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA70C19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773318893;
	bh=HD1lbBzlDzUxr87RXSN6npEOiiIShjI5WrH93nfQ19c=;
	h=To:Subject:From:Date:From;
	b=rUqOA5atoMmoEKWZRGI4Yw7lDYwfRyLk71l268tDoA9k/mF+uCy2aVfc5/ZGXeqiB
	 gaOT7ppVT4UNfq/uJc8Ekt/GhudlZoWWsQDcJqDkfzlUz+tqcXDtjhqoSzWH+Fx6Yv
	 DlnzeHYpKvR8HmkXsSRG+OD++/wFhzjgBhY/VUI9aGoSLm4xieG/fKrbtATQM0x5BQ
	 XbYLlmNPu/hYCDdKNCd8UYrebjGxqvaFqOxYJfRe+ck1HM5DtJ/Omyb5AsLHVgoGGy
	 szbaVZVQRZeebz45i6H18Ew24iqEq4NbvjDW/ctc4LHy1NqfRVoF+c+xapq2MnKq8o
	 snB+YGbyvCY6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B9105A593
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331889357.10886.3986663918390162887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0604e615d9107e61f99a2bc1a8c4ced6b52c70d40bc3c4c9485028020ea80112
Date: Thu, 12 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773318893
