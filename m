Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BE01EA73
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752149995; cv=none; b=nJ2LxqcR7FZAhEJZsoE2awcu2eLcmRdh7lGo4VJ3Z0ZTCi35n7lGwQZtnCMKgb7oza2HtWVHl4VqFzzp0TaX1WC6/qWG/O7UtNRKNFUG/UWyyQPfYugS7QeMlNIj2lDhuco8eVIP5L839vA8EkY0VCErN9S77U//oCzVwpphVJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752149995; c=relaxed/simple;
	bh=uaO78WjaD6CZ1KMzNtqogcHNf5XuL+7MIHKbvNW6G14=;
	h=To:Subject:From:Message-Id:Date; b=EEmDfWAljhnYOZI309553qGKZ73NUSk1id7jQO04NFGYQcAKRtG+lBZSLAuyArLwHVw2QsOzCFc1auRNK2VLnvcBMBVUly3nBSSztEsR9mQaXKeNAuf7XjfkPdZCWRIzg5vVGYqGqNSbvZqOQwbfJj/Yb9kL+JYjM8sIQwDiMC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6EGUwYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6EGUwYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0201C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752149993;
	bh=uaO78WjaD6CZ1KMzNtqogcHNf5XuL+7MIHKbvNW6G14=;
	h=To:Subject:From:Date:From;
	b=n6EGUwYyII9MZJ2Ci1pOuWfclA9FEUYqBOX+xmm2Tz4i13akWzYutbM1RfQQSN5g8
	 vpJ3sNw6xFTutrUrJuugIJKaWjFDzrn1YPPyD/vAuOhgylO/f1/jd5tvyeBghFE4qF
	 P4jSzyjhsak6IjrKzm/F4G3WLt7l7GaRVzJ30J1qf8GuBpIXfjaVPRmGJc4q3rq5RZ
	 dR6WstuzVSnEIP0jlIndhNI/GMy667P+lKsWsYbbAEfXv+uMrc2KHnhBxSjv3rh/UH
	 eBRHwqumVmK23VK7Ir2RiacjQKFSsfUJcr+GLbGW1zXJjcLFykZYMJNWLgBgylNhRk
	 kSbYS5ab8691Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE34C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214999358.13326.12211441049084522869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e422ac572b6eae648d0a07489af8ad5171464a92f6593776fe6c9aa4c686002
Date: Thu, 10 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752149993
