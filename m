Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3FD24676B
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748294394; cv=none; b=AHEnpyaSUWfkSA1MUrqlvd63Rer23NQD+l77gXKceXwff9pDJWVa8pbQ6Lx/CXbA84Hj9hVujC8k9hovN+ySrfogWqyThmsS5f3FT45OpEkdXbpnYLelSvDUe/B7Yso66u7odHuCow5CIm/rosV49M1DlsUsOmM7U0Xyk8/2yxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748294394; c=relaxed/simple;
	bh=ACu05LLawtTGFgagZVJ/Fp9fUaWenBOO6WNyGgd8MAI=;
	h=To:Subject:From:Message-Id:Date; b=gXpTxY9uXRNoHniAgrsMt6xdX2JNRrSO9wyLdp6KH70KB0x90JYHkeE/+OqykN2ZLvjmE9CleYw5yLHfrv0qdFVJ0SVgjQSwIorJaoDzeOEYYOl23O3Yb0lhzg27bkG5NezydNm3cY0xgshBYf8DNpbjyBe57cIyxQLPabpmms8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrGZVi2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrGZVi2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0124C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748294393;
	bh=ACu05LLawtTGFgagZVJ/Fp9fUaWenBOO6WNyGgd8MAI=;
	h=To:Subject:From:Date:From;
	b=MrGZVi2Lko/l4LiEPoP3J0IpGztIK6Gf9rL+pQyyhpRPv/mKtl0Xwo1H+c3588ys/
	 v1UCSGCJeQH0Z1ELuAzB6YPqhRgJGfocOvRbX6HSEIpgcSWmnNIQlOB6rSnA4WBz9j
	 byMkq8/IWDM7hLzYTtZOZUg7zKoXA2Tsp45pvAQszw67D/2OOHGo25H6aPyhgXxW9f
	 JAfTEsSZiyPyEFfJ6yL3CKeWacFN5fAiQpI0y9i7r6Y6/+dK8mMQ3Bgb0bXVz8TlyT
	 97u7sZDesTAvUiET3EjUr8ycDgzxZRL8h1mo8aWW13SwRKZCinY3Yjgmb8T++4GmOF
	 hco/EVdidyLBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC6C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829439358.29652.3121679948030465160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84801f1a5f22e3669e5adbcc8d068b01a961766459bbddd08be6ad5d96d1c771
Date: Mon, 26 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748294393
