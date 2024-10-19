Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1893F1D1E89
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729325154; cv=none; b=FPIvQb9wXxLcEf8WunZ7+MC/ARa1YqMyvkQs2BDgX+B+vnhyu1JHcww8vtCSZhbc6IA6tdHD98XmtUO+EOUFUdZNRTjrRSO1XHE+N07kqjqLHsVbujJXp27FN6jyFRrU7pRafKhnVwT6zcqEs1Tug2gb8MEmxYQv66BNPzJchUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729325154; c=relaxed/simple;
	bh=c7RV1ImMrqt6h451xT5JPeDOetsPMwNqZafJf9C12SI=;
	h=To:Subject:From:Message-Id:Date; b=ReKD6XHn/fC9ktgVlmlzYAEdx8HsZNjWr+/IpllWW8KeutGHy1AeVWvmF1HC6E2UGiY+AV4BigesjV2VAUGuUalIyC1ADetrFCJw24g0hEOmpZMX6Tpkt7tVSTeysUFOXyBSmdW93nTbG7NlD+wNcx/G82b7HT4pS3d8Xz39u/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6TUganq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6TUganq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD8CC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729325153;
	bh=c7RV1ImMrqt6h451xT5JPeDOetsPMwNqZafJf9C12SI=;
	h=To:Subject:From:Date:From;
	b=l6TUganqv9fzXIb78G9eypGW8Auf44fZ2S9vjlroKr9aHabgBIOtXHNLjZ4pyY6Ph
	 mCIC1Cv8vwk1gfZRR5uXFchZU78xU2LhPs9DHVfgHUiK3CTxryW9erPSfbTKnJehmJ
	 d6j2u52Y7scRwS3wkcj6Q9oDLvua+Z42oTEcmQ0P+X7LMtS2yI2VbUIImJbsk0z9YH
	 eVJ8K02Gix2CULiRX+PgJXXpIEXAGzBq28fYNQ9/mX9CEGt/SMHg8Etjo58QvLY8te
	 c/+LkjhPAlpsXWe8oMCJ2g5LdKPupQA8LLECoksEti3oaHd6Bixcph8lzYbKzNtSEW
	 F3E8yJoHmncLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA2D3E1BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172932515359.4507.1825173630532144175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368bdc873c626c10b517e0d29e223f0f6869cd5466638d3e288c19b665a98f43
Date: Sat, 19 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729325153
