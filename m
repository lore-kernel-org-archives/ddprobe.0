Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5A6DDA1
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717005263; cv=none; b=VEf7khXkMIqyQZc0fqJJAkh7MFJYBBElJuS4zQtWdEuNuPuePzMO7nVh4FD/mJudusmXMAH2bvSLPZr1do6mBLH7g1FzCcAQV7nrwUnWXCR3F6f7SAm5IaESPkL63JqP7ipqB38ZZFISvKtC9xRgpQwG6Qkbfu2g8AC3HjmA2sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717005263; c=relaxed/simple;
	bh=moMTYCKo6WKuUxhIE8NQJMnBNkQ+nUIubK6TSfIaWxI=;
	h=To:Subject:From:Message-Id:Date; b=tXVIuv4MRn5QOb2Y3OqgcAahBP2aCLYfF7xw+5yoBd7VlN6p0l2Ug1R53d+pKNOKVuo3My8PJw5oMdr5a6ZzzbCNa9e+ylvnz1dDdFiSoTF8yb1Tc8iTQv7oMBGxCx0cRZWjqJGy8YusaTWJmXZJyVtRsnokOUdR8zgMHFq/Hhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNiamxHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNiamxHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC775C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 17:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717005263;
	bh=moMTYCKo6WKuUxhIE8NQJMnBNkQ+nUIubK6TSfIaWxI=;
	h=To:Subject:From:Date:From;
	b=jNiamxHqDnFF6ckGBI4mUZONp/AUz9I0oywm173e7ialfhpFsdsvfwiowskYkDwYb
	 XWMYZtlQkJbSJqQdCRgjOZNTqoLCOWthkANYzHckvqZIFgX+e3sMWgEM3LT+56Dqu9
	 lSWvaofOPaStHqKPaNm0wUOIQ4iNZdnRSPsgGuMkgFB+c7JwSi8GazrMARxSLVV5EW
	 miaE+iXBR8rq291UpeOf+BPeJQfSBGU3xY3OPf60nFh6EcBiv2OIcvT9akPzqemaxr
	 41c1Rfvx0fFU5IA7Qkp4RxmpJsRaczfo0JlCPZKxud42CQ8kN+MZf444AUNNh6m1HN
	 cTqNIMkcCgPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF91FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 17:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171700526283.27722.15354150740822262800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b971f94dc3250a1cb1f03a80937049fcd3e236210ad7636c2f1b178fa2971c3f
Date: Wed, 29 May 2024 17:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717005262
