Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8FE2E1F05
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763680914; cv=none; b=Y/TK7hLv7yzfaQw7LNF0Da6JK7OQpfGNINe2hucW8vlNlmzftXstXT/VIrqZiMl04b3GNg6biP/0y/sBtV5I93jou98mHec6WsvyfFgVmNTt9XLyoUD2/8iXo1e+xk6lCVQxJmwGXIskuTNV26GXjU52JWdDVNkk4ovwszKYs2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763680914; c=relaxed/simple;
	bh=qysFgjXI0fDVK71V6XMmEYDuJ5+tXJR6DCqDINLTW6o=;
	h=To:Subject:From:Message-Id:Date; b=a73oUw11qYeplrhXz8/UAkW8YugqNqLyy3VlEf4s3rgFwT6jQEKUxu/QydOLXvHgSug6JQLMmqL7DMX2doWyeRO/w4U8S5wFZNB4LRXw3vQ20zgKY0uL6Lb4sICEVzJjzuWEvD3pLWoMJiNBMtXW/Y5rawlF89wV5ysuhrCeKwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnVD+XRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnVD+XRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A910DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763680913;
	bh=qysFgjXI0fDVK71V6XMmEYDuJ5+tXJR6DCqDINLTW6o=;
	h=To:Subject:From:Date:From;
	b=UnVD+XRg6PJ5nW9yfFWSOli0Yq/qU1lRINpUcdL5igO/DUMxkM8D6OOywU3C3Y47i
	 AH0LinvJNNaVpfQtdEt43BdtaBBPC2/dvQ0N2nhAEMh8R9peKJElILPpPEp7Tx6O4W
	 i1f1mxudU/0pQChqwNqA8Vskpm/tbVOCBCJB8GOfaf9bNvpMzfYZ2RSwvk3dP7o/Os
	 /wPLQ5Z0pTzAuhS5Nsgy1oU9DiiofXY0zj5i6iO649MbAVlfDQxoVnAVGsoPYudo6a
	 pJQfZR6aaUocA3NuYnxqHGwjvJb/cqdUlh3GJIr3v0LgeYopWfv/+idbt7LFbKBPGV
	 vHb4ZbzpFaMDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94474CFA454
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368091358.20403.10552814476815861949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44c42ae974c07378904622a71c1f2b344222292e9f9f6b62845e4bb63f07221
Date: Thu, 20 Nov 2025 23:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763680913
