Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E8F33997
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727649354; cv=none; b=MUZDgCBTuVfvZNmd1+wua2ykzWRGXNzUeB/Ao7CjGq+6wdii5n0sm1Wls+u7sNng64cM6ciCYv8pBnPjZnQg9v7ZzwSQZsTyzwUFQxup7YONjuDwbA08Ti3etQZzksAa6QMgszN40UtgA0kvBJ3fAThVUAKJO2V+syGHU0P/fjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727649354; c=relaxed/simple;
	bh=6+mC4Nai3ith2+GrKzJ2/NxakOtQcCTYQB4ZlJLT2mk=;
	h=To:Subject:From:Message-Id:Date; b=NMfhMJQ03fUlpau5euflo4PuiXJsu2EyjynN8aJnyCUF6EA4eXNDE8QuLvJS67ubWzElWJg7B+1ZXQ4g7O5Xbk1TAVqVRWmwrL27YgqTPv+UoMLq9RICkwx1ZDPeTJmK7pAZIhJDjQaV+0hGP9zlbxT3Lnr81ST/uNajaJ34rs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yi3TASQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yi3TASQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F02C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727649353;
	bh=6+mC4Nai3ith2+GrKzJ2/NxakOtQcCTYQB4ZlJLT2mk=;
	h=To:Subject:From:Date:From;
	b=Yi3TASQlAH9sv5miVlK1n7rOzv+uRqvzuQ+fVRj6ap46MK43B1++4HuaUKGlVXBWk
	 pvDSjQVnJi9hI8esLkehIGh44OkymQVu9jgpVcd9kyDsUBJfz9RzDKZ+63VMLF5lX/
	 JeMsT5dS5CHdOy9nJAijzijMWCpH58RMOhzOaUL3MHxrg6Ku4UbIHhpMp0LLVxPMV1
	 RMv9+zeiXF6b8YLmoBzjmnq2OqTcEnp/Yv21VVh+3Y8BSpES4jD38y82OlOsrRRv5s
	 w7rXRaDve+LsCfaVBc3Ds9Cvp4fEQJbLXj1dijIEXjr8X/icWNmJrNjMYCQ7IgFbiq
	 nOS6iKhr6tx2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9629BCF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764935360.2524.1942447430289125497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c804e83bdfcbe025b86252920e0ac69db6ca922616a2c36365ae264410e9259
Date: Sun, 29 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727649353
