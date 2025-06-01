Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403922DCC10
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748765395; cv=none; b=BJ+gAZgwk06X5kB2YGJ3EA2Xx/jUtpIVU8PY8Jb3SoxfnA4DntbXnXAjTwkkIzaYxtEsjiJhRXnC7JOApHDNnasKqksXRxa2EBTz9zh5uSknY5PSKXhgW1wH5jfdH/fGmlOivL3cHcnl2aitfASH+7P8anfr4qqSmbk/dY+RxgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748765395; c=relaxed/simple;
	bh=eL6JjNNVyfKphytglvfzhBAt+YxzSOR3dJJYJf/gqV0=;
	h=To:Subject:From:Message-Id:Date; b=Nj2KIfBMmVq0oY8i5JelNu3eCjgEUhJbIIC0c8jwg+K1PRlPNbuEhpJBiqSTmpBJgd//UfDQlgmbf61EfGRBN9SjjfdpmyQZQ1YK7rOF9l/iM+Prc37CXi5fAr3ZAfn7K9inkTQSkrtu8jUu/Qr5e60TEt22IGEl2QH3MJrSVR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHVUnvB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHVUnvB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F03C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748765393;
	bh=eL6JjNNVyfKphytglvfzhBAt+YxzSOR3dJJYJf/gqV0=;
	h=To:Subject:From:Date:From;
	b=qHVUnvB7nSnM1FsSDnJTwknVXleXTL1k2utBMWx3SJxh+uLFRAH+4tNOIuNrNbBnE
	 CDM8WyfZDdKjuVqZNjpXez8GQBK3tIYepWHggql+PdQM0Nv0Fnf9PEttSBeJcnpWz3
	 oOa03pUEQKRREdmqFuDI65x8OjVuKDovDpaWvC3kVJe7/gyVEPt2nV0VKHxeFdw4dq
	 r7YsKdAfsyMLiIxrvosTw4pjwD3ADNNaRy/9Esu3dsjzSRDNOIrFscGTWZth3B8H/S
	 SVqQcafe87qGil+REpIAOyEaulrAKF16WWCS6KN8bn3pqXfcIwibfqTD0twRqaKCNo
	 yLV1IPxfcU8Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB5C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876539357.6224.14653790265309983866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18bedd7c003ace5225e5574eff20d20ca0a632959357602618cbe21901caa2f
Date: Sun, 01 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748765393
