Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE3928DCB
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723328154; cv=none; b=u2PZ0PEX61X1OLgUmKvjfRHW8/r4JK2P2iNSTFggwKyC31KYk7+J5I20XIXnTDXWr0noqhIcWu8t8aT18zJ3XNfWlOHounmMJfgwSg3ZeRytvqjvpwO+JFlLcL/VkE06jBnz4NNf+ERBxl7MnNpxruGN0t1wmQC0tUND2HAaWRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723328154; c=relaxed/simple;
	bh=kuRaxJle7V9/waWv9BZcu42cF+A0uT/JXtvfeMqmLWI=;
	h=To:Subject:From:Message-Id:Date; b=YnhFZTc+WK0iTaMzwQeugtEF9BFQLlboslE2cgxMP+OkMkgIMqcafj8P3IRwMf5oli8Zn6VzfkYdBuUXO2VHO2QdAZW6+7osEeKYeEkXq2BxP3Ate0l7Osp7VU9wqfgrkXLz3bhZy21eNjZpaEuWUGBEnnVU4spP72DX6iOdqHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTI+Jw7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTI+Jw7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4530C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723328153;
	bh=kuRaxJle7V9/waWv9BZcu42cF+A0uT/JXtvfeMqmLWI=;
	h=To:Subject:From:Date:From;
	b=XTI+Jw7UK0kz7Fx1NRJltlT3YFpga97Z97FUFiT6KFPmZYg4PJQNS/fCckyBqW0To
	 p57x1waIJKs5pdIPk02Vi41K7gKpAJ3tCtf8N/v4fYie3PzFhV6KtF98+tpRmqgWAc
	 MY0g1p+hAXU5xHv0DFP+/IfqRW2q6I+m55w/jC3v0rWCqnqYtz8NDoaaOg2ok2+1Vu
	 g2o2F0h/ZKf342XzLzfQy5DajSPw5BhCko8jQg80gtz6Ray8jld8KuYfLa+MFlsahZ
	 MoP81vSOMg6JtqrRIp7vmrov3KIXILet870rVyuv8t1qgR3PrRkAnrvX0ndh69kk/5
	 guIsJ70/VI8pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC37BC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332815367.27798.12204028205914824861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8319633d81a6b63240cb90ddceb68e6aef5182bdc84b08cb376b9b4dc04526
Date: Sat, 10 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723328153
