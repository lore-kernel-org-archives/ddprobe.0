Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDED195B24
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718627903; cv=none; b=F7adN/o4BX2zPj28Hk/eRGiwTJfYj6j5uORxGhb8iRiWmWMsX4x+xLnGiYLxr0lcBWwIfjmYydBSxSpx5hgRlDkXyfgxR1VA+5UQGuTPuc/P5mh0JHFgma128sPAHM5jsaRb4d3cLC4MKFCGYXqd7XHU4Vv1tfw+Mb5VbNYFGwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718627903; c=relaxed/simple;
	bh=EVWxJFRxJ6F+03Ge1hehdXHqqmQbI9JeZ23Vn7nFInE=;
	h=To:Subject:From:Message-Id:Date; b=BeukBxHLWVszzUc4EaFgQVMN1zBUJVEV5dGJJdqYrz1atuLhFZTaPkBwzKBuE05/V6vKnerhJB8XLMwm/zW1fLvsijEy2kM2f9vKX5NxNn2cdQSKE6fITo0cJZvaTS8xKmuB4p6WnsJAONNp+09AuGwwt9me89wu/ozbalDIbT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwKGK/mO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwKGK/mO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22E6C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718627902;
	bh=EVWxJFRxJ6F+03Ge1hehdXHqqmQbI9JeZ23Vn7nFInE=;
	h=To:Subject:From:Date:From;
	b=pwKGK/mOU5LhJNQpogS3R3gRKOm9ctqk1ffBiJ4Mu2aJlRAGGFkxOhejqgbC4wLQB
	 ui14yNAKfF+/pWoYDA4C4tlrkw5t+VccvCoU8bn47gxLsMbjOa6fb9SD7W8g7MVME0
	 AHHotAXFFuPdRbeTyg4v5sxBdNNfFF2n/Roh3Uq/3TP/WvvrfOVqcm1Sx1ka9pWMdi
	 5c27idwG6JP8hxRsE7HMuh8GRdUyPwTWOS/+D1JLoKy/cEC9RrMdrLyQWAxyD0LNYT
	 pr3YZ6Stoo0Ul1JM1dTNNaevF3DBkpQFw1e6f/15zR6brqauQnGuduBoVaEbM7e75R
	 Yz7x2N4CKBOcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C24C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862790278.16241.1846344098204041029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f6d1cedf91f7da28ae1d6f623f9180a405c9ea0ba52508d49789784e99c78d
Date: Mon, 17 Jun 2024 12:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718627902
