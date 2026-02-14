Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168E9288522
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771056894; cv=none; b=jJXS/ZNIdMK+j0ksrkpVrmjXily713Poz1aUCxDcwDsyqSmpPAf6HsDHhy1bWJmAqFrzIgBMApGiWLtuvEyMU1WoDQKEF952ha8T+tyqFkbVUcLVhldRmpK3TqFvCO7/vqgjg9pPx4fP9kdSRs0Y8FFgrzhEUI6ghO0ZKx1xdxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771056894; c=relaxed/simple;
	bh=O6QHFghQ4Fzd8183kCvA19fy1pLNHHY82JlWXv0SY38=;
	h=To:Subject:From:Message-Id:Date; b=pxIMFk5uFqTE//M05M1XZdJoBW9PC6RXWRWEb1327KZE2//rEKiF/fO03dJ+2TwA0P3Zurkh/lVIBw6HbdP//MZXy3z1LpoHh2lba3YwQLvkhFjqJgI/YURal+8a0e8KOJfvgXbRI4q06HEB0+paMau7t7MHrBuaOTTxStuHUWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6gshri/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6gshri/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1526C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771056893;
	bh=O6QHFghQ4Fzd8183kCvA19fy1pLNHHY82JlWXv0SY38=;
	h=To:Subject:From:Date:From;
	b=X6gshri/wLi3WDISfBPga80vvgs/2dp8WfkWjRb3iatD+gBTZ627P9o+v7iFTVKIF
	 +JEOUcIZuI+QqRJOoR/LYiZAXuKMoL7jsDg+2pI8dwhO8kJRvx2oGTFX951FeCMS0V
	 SbmVoviADslDyLE5nIZ629s4JseGBh64i3g7ptMxOo6yMsmYEi91ODjb/r9uE3kdlN
	 v07+fjPrK84702D+rECfO53chAhMLDF0pyZjXKVp9ZKtVv+IWMWoAS+Hp0Ng6innQB
	 Io+WRz09QCtGQr0W7tT0fUPnWDuVKXpT/p/mFurvf2WZ7iDGXDHnJcekxzwbmR5P1t
	 4kFgpUsqaKhzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6BBEDF142
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105689359.23972.4902077256075833809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b0da08ec61cf1789e68c9af42c7403a3b58f002ecec1ee64dac48db1b83749
Date: Sat, 14 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771056893
