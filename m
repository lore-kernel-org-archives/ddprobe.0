Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E293EC2F0
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773849894; cv=none; b=VlUNg3Tc3Mx97G1u9NYnsPUl0n0kz5a7FWvdtb90SpD7t3oYDR4dmRj3CZWzdVGXKc48lSkhejpAAWcghu8lXa5mhd9+VjiWtjU0pLRClDWT2fTvQR8wECL0C7M9N+5F6mBqABrRzmzMXCRFEpzTiXDcZSEuptyXa2C8owGKN9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773849894; c=relaxed/simple;
	bh=RgjeuOiBWr1I+faBFT9MuCD+6PowiWd048rHH0JRfT4=;
	h=To:Subject:From:Message-Id:Date; b=gnzj/FV7VsqUZNE2RB4fO/O9pw2VIMpXGF7jxc+yZwMWZaZfzSh2q24JLTNp8tEspBaij25svk42SwC4qwNjnir09aku3yu6LFSeWx0LLu3DsYP6k/4SIF0XWBjiCQ8vqa7/dRi9Y2Ki01ADtkuKo3DfFDWvEM4coBZFcJMhgRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtKcbxA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtKcbxA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8957C2BCB2
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773849893;
	bh=RgjeuOiBWr1I+faBFT9MuCD+6PowiWd048rHH0JRfT4=;
	h=To:Subject:From:Date:From;
	b=TtKcbxA6sSAa30Z9dmvfmjPrs1H30v6DftnzxBNGug+jtj8yLmtn+bKIsPUq7gQzZ
	 10rnmHUR0fd2cL88xyCd9OZf7owmvzqW/CtOVs87+iKJBuIKIqnmzsQfX2YcsGzZ/N
	 Yvodm43I2BBhZox+wYutsQLtgblLfArhkO4/szUHtlMq54G2XWjrGU5g4d5e34ibqZ
	 Qw6E48ep4cKWBHYQHlWf5gF9S1YuPLsuratx6ASaVAzXAk2zB/lecwcOHt2g4CDSB8
	 sM1mpgKo4Ko1zLVHyozgLE+QIX7RMxnZOua/g6YaTBXgcIdS6eeTWjqmk4h4fbg0mG
	 SQJB/LlDr8vjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F7A10854C9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384989361.6785.13432854187030241892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d8fe96fed22b6d6d1042b867c3e7eb1228a4301e7a70d318ea5290f3c11102
Date: Wed, 18 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773849893
