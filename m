Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718F51DA24
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717955843; cv=none; b=s5RSM4b+3Fjhb7Hm8hbnQ9DQ1wI0Fxs0cDcwq2Lr14rwqFDBFYruw+f+2NGeNGyKfF0iGClUdjjDfBK0LmWzrE4R2WP0tqtOxn7X/NPNkjwYA63AirptSGvQNUln/AjDq4+aUoFmTuzhJULWMNFG4CJgFZR9a8qB+XjB1Q5/tyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717955843; c=relaxed/simple;
	bh=G9MnGTYKE5m/V2V3semtDMcHu7u6IG5vT6GMZycUeCE=;
	h=To:Subject:From:Message-Id:Date; b=SnVMHcU3ZzE4Vfq7qO89x2UGI9yvgSOP3+HomA72temAvNPR6U6Ww5d/+PRYy0oFFx8P6c4uwNfLvrygCrFDbu4kTr+6AF3/JkIBiuDK6vNXn+A3nUI1G7FEP9+2UujowXyZN9jmr8koti2xtPlHz53FCWIgWKAqexAiK9z3Mnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qW02xmbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qW02xmbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF444C3277B
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717955842;
	bh=G9MnGTYKE5m/V2V3semtDMcHu7u6IG5vT6GMZycUeCE=;
	h=To:Subject:From:Date:From;
	b=qW02xmbdPGoZlobpovepetK33r/kkk53m6r7D6AuJq1RxO1VQPfrfBmBR7fZAGT6K
	 i9xG7ajvVT3Ng2jMwjDBgDnJYURavkXzgp6kfAJoRRw4ocGuEnvvvsAZgMSUcvk6JA
	 7WJCyrmycuXUdWeLtDyN4KPIEWiZvPJMrZ73GqnebodFBBjeNDtSWJ4+/mb0qsPhZR
	 qu+o/eRvHlOASukPlgV3/gDSepKncgGjWzhafQDtCa04oCKnj9gCBKc2eXlPdpRnQo
	 zOirbjCOL8JmKGrZoNnpu3734ZyvmPLQwNaRgvyWHgDDebM+7LjvIqsIiY/h+RoqVa
	 ABIq/0BtgZNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA525C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 17:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795584279.16803.1139310976503290638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b69b57d988f01d063f5444bcb1ca76a37471536ef7984424e206670fcdc8ff7
Date: Sun, 09 Jun 2024 17:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717955842
