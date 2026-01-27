Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235D1D9663
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769477634; cv=none; b=F+ClTGf6LcbXPqFU3ahkdVne+553ATT7r0fx6ZWkOG2p8VWK3hqm5a3FLL5yYmlZgVlR2Qzf9jd5IQVGjHzULXjkwKYFRrqA4LU5CBGC3PiuauZCTKHPMKfGZPyqIXhgnvNS0uEIOol0l6nHJQLP4Z6qWbTcgHinurEnis0HB24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769477634; c=relaxed/simple;
	bh=EtqQnEhlbjIKnY74Q78PJ0jSKnG7mojM8czwouBz8Xg=;
	h=To:Subject:From:Message-Id:Date; b=Dcnnz7dMnN33kSehFSmuGBHGQT3k/v4b1WEer72v4Z7SFjHtBZk93xQV2X3bEJWMgPkpKJd7V8DvcjH4139gwN9h95VLRXhe6yd7YW3CbHaK7tF4sbsP+j42suqNDPJTfr9+8Ge1h3+ikhXFyIwFyf5YclK6tGvMxJwH4zH3rfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+sZxYDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+sZxYDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FE8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769477633;
	bh=EtqQnEhlbjIKnY74Q78PJ0jSKnG7mojM8czwouBz8Xg=;
	h=To:Subject:From:Date:From;
	b=K+sZxYDE9SYGM7CZzPO3k/307ogBdeZferiiJucEJHxsOryeu/0nxJn6tea0BfXqs
	 uT8cLfXaWC8NCSBKewuDuxcOHYjGmxrMrZZT+sYi1t9KAHdIG+4l7K8u/0jtd2wcj+
	 iJWAfPP1Ba4S0Ljswr+VWXHem/iG25sB73PBFebCER4S9rF/c+PqHKNidedmUTennM
	 4FKBcBPzVUPYfQFKkh5IYf0glLVHBqJjDRl7L57aUb5uGjjf8quwArkRgzlYUxBlJU
	 6Qi3STtXmjthT64NffouWuDEXU9iqdbZCQEQQmUl9OxRh3nYHfHrFfaKm6j13WjSlC
	 U9cQp3cUW3bEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B43D1951B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947763358.17753.6352520678808526859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9ccf4f6ad156b7823f85c9cdfc6b54cfaa503287826d581e528de2ed2f77b4
Date: Tue, 27 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769477633
