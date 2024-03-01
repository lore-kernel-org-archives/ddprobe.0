Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1DF5224
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709313497; cv=none; b=mGVGAO+buv0O2L98rg85ec+tu3XeoWtgWvopOd5we1VUsxBZpMCT+2zICCRW6CLSNzFWDAN17EfmcEKj6NuaE1gFKlV+vgt35cHrmRqleGbYjp2LXmrFl/QUrQ8Vfi8FhLwWOTLSPD4h0tGlJ5DK9ixMal7HuCOQ4od7PHp83Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709313497; c=relaxed/simple;
	bh=ImnO7lfdIt8tOoWroqjhKpBpU9iXMa5/OKsqNfPURVo=;
	h=To:Subject:From:Message-Id:Date; b=hkxMZPdFXkB5CKdpFJlzz3p+8jVRlYP6T/i71xhGGlQwTwMxOpQN6BIkprjG/4ABAgt1nclnM5ld/FsoIzVE+PJrcwrk4BRrU8TrwoiEX0w8/SIHq8sUtw8PbBER6UWYBuSlM21PuQStJIA1XYqjMwvLxRuXjarFE+MOBnRg9PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4SkF6pM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4SkF6pM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84692C433F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709313496;
	bh=ImnO7lfdIt8tOoWroqjhKpBpU9iXMa5/OKsqNfPURVo=;
	h=To:Subject:From:Date:From;
	b=b4SkF6pMi2i3cuidaNT6gtW8UC0Fa309NL7U0IR2QnHmipi16o2N9Wv08xmeGr9Cg
	 1oN522jcMHj1zxwQq9p+chvban7IIgz/kFmLrZeBbQWXlimbkE6nqFrGxZ3RYkuhZq
	 KZtRsDlcpUXdttKYdL1ksAsNx0glQfRNp3yv8Vo3Cg16heQN5uqOPnz5Mp5lCBtwXQ
	 JwQpfWT+RrtZkYfeEHiSOG7b5mgWgE/YNz6wSI/qdYjFaCqAbXezSMZZY62lmdjHln
	 3mSjl+RWafbZlH+6VXnQPQ0W90LE0vTuTygyedxziCHHXCnbSzQAlrRF9Tglij9dZ1
	 ugZ4ly7zC6apA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690A6C5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170931349641.12519.880748541809688841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c6272458630efe4e9a5e837e5f85d3277297203144459637327971708cd4b8
Date: Fri, 01 Mar 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709313496
