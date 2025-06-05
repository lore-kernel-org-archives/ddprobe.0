Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE6B1A239F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749138594; cv=none; b=nIRqcac4WJHX9YCQSQFmZl2jrP2MocHqv50pW3/il8riS9e+Jei1PnUf5s5qbk99TGVv+XF4KBlx+2UTrHyimkZsDuwFyq+pI5LTLH7OnViLUZHBPS9+MgfmY6bV605KgA0vI/0zB/mJY0M+dCDfh63km6LqiTVc/jyPv/QZrGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749138594; c=relaxed/simple;
	bh=ZZ6pB5DVMO9yvjS+VK191YTWEGPbsQjcA5+qHXQo4Ks=;
	h=To:Subject:From:Message-Id:Date; b=BQ8PrWy5txS2H8a2RGTA3dS9nlpHbY5OWmAgOOr6k7h7+fLm3GWYgWYDOi0hr5mxLgvil8uNf9cWhG9aDdN/yqW3ISzQ+L+AhxYngMPQOpzH19DrEG7b7+aXD9xHKU8osikJLQEZxtcVQSFGrz5W/KHi/cz80hm9O7GlclFZ3Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNbY6vyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNbY6vyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0906C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749138593;
	bh=ZZ6pB5DVMO9yvjS+VK191YTWEGPbsQjcA5+qHXQo4Ks=;
	h=To:Subject:From:Date:From;
	b=bNbY6vyqFv0totUvRDURMuzRIQHZKJLCRVv8QDOxyS/GpCEspNwKz1y/RrlEovzPi
	 qIMA+5vLjCx+2VYqKRFyYHqbU5zod+BlVhFD04blw1TkPo3l+opGqQb3Zj6jb29SeD
	 Fkc29bsVg8jzpFOpatNyJGBfNfbD7W/o120faFISUMkPxp535qpS2nyRtM2Aab6a1H
	 AID5afS1jM98/frKjQWvvsTpE5CILLCfup3fDdPIU1bvhe/pYEcbHMDCK9rMOnHQt9
	 byRZySV5C0YFth8cELMwvrBJ55cF+I7514PNIqC4nFkZ8OKfUo+wl2qdkvkArAJQLA
	 aDmTecj8fppSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91169C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913859358.14609.4664735048786844978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd6761fe23e245b1555515d6ab4b42b9629262cffafd8ce4fb5decd13a8ea2e
Date: Thu, 05 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749138593
