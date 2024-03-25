Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B234176554
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711367897; cv=none; b=ceGuW1Quzr5wETjLAqcaP8c/CKnucI+U/bJ5IUqLdFVdMQBxCadVNKJA8IOBOKqf94/72qlR19fa4L7HkuPa3p7aI4JlvQ9IPiBRlO3OxuPZlI1h0jTpmnPIi/mWwBXOrdnhc2JyRpNLjF8Mz1VsnJhElBe7vprELy2jJHsqaTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711367897; c=relaxed/simple;
	bh=GD9n/F5PFlk2iKdszpId6Hc2BtvTBonva3qQu3JQlLk=;
	h=To:Subject:From:Message-Id:Date; b=OUs5DbPlUr9Vlrt1BnkCJ2foUcCMv5mCxuvaM4RAhiOdxTcAzQDdxnTTyEyyVhVTKemdvOQSj2ErxmEK6gnuHjEUE53l2HPNmnYaolJ+V63pPjU7+Z1huGYeJY/eG2UNACsmlhaW3VX2+buZZrwEoiicF1ojX8iiV0WxvIH1uSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+dHWpbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+dHWpbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85196C433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711367896;
	bh=GD9n/F5PFlk2iKdszpId6Hc2BtvTBonva3qQu3JQlLk=;
	h=To:Subject:From:Date:From;
	b=i+dHWpbbTclonMFKC9aD/aBGeGf8x6qTcewJKytLrTWsLE1LtZiQF0MMpTIJ9whlU
	 01DDlf5PonDF4ppLorLLqbjIvPLVexso1pmUZGAByVO+UW13mE/lyFkxBTjsAv/c1q
	 xUuE+9tSnFEzfR0yT/q5HicVnDSpR021F9629nFQIgMGY66uuvJCOw1GKjYIEongEA
	 AFMx6KyfTL2bhsRZs3mkmLMzc2VBVG2K18Q8xulePWBBLMcT7+szRVx+DSyLoWiZL7
	 I3EFhdROpSuaoEoCdoO6vmiKGdwZ1+UGttbnCFIhVbmEHL360a/yLD7aEhlr5sQipe
	 AVALf8YpzbhUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F327C54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171136789643.31017.12432617017342579558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfc01510732ecc93a869512cbdaf22f0e13a51edb9f4183f9dc635542fa7d5b
Date: Mon, 25 Mar 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711367896
