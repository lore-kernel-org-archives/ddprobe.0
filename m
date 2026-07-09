Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF5E4195BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783619314; cv=none; b=QqjTlbFPo2UFHPk2A27Ur5zskBJg3OyPcJiT277wxxAYP0lJYnNMxLW9MieNne2Ra4l+xzUbqb88L7eTT4+eCgu1/GGya4IXJ7KhXtZbPASA9vxZ4d3Z7qgdbPq/pLZ1bqlF67OxTsh/XB+2mmGV+TwoLqU8RLNnMilUFXPkjZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783619314; c=relaxed/simple;
	bh=EUcRW+4NFlg0YxSRRXncpN75eCVi8Ga8FWTmW9IbHLY=;
	h=To:Subject:From:Message-Id:Date; b=MLW4CtMHRGXXp2o/JWUtSAVfSzHYAofB7H56Qs60IzA7hZfxPHuTlKb9me1fQYAIbegFojsLdAJL9iuhvzMiFXT8ErQKsyf7bQnnMrM4rSONIFmzR//w7kk5xXWk7kJMQxw/55sWbRUqmM/EUIG5CSu+rrh7tsL3jzoudnQIepY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5eckhKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5eckhKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA33AC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783619313;
	bh=EUcRW+4NFlg0YxSRRXncpN75eCVi8Ga8FWTmW9IbHLY=;
	h=To:Subject:From:Date:From;
	b=r5eckhKoKjCEsStmR5F5c/KIT38Y4TJXA+iGcCwNoB9bmCy1N1hF/G5YpfXqqhhtx
	 C34YKccE0X6mkskkHANUE9D+t2DzNwxNiPSJA0a2QJKTs9K9PKb7y/QFAuCF10b+58
	 +L6j35ktpxzBd5r9714NLSq9diyN88qswDDEfUForGAybgas7zu2s5/J8M2JGXmwc5
	 5Agbj9JkQlTlDZNffVT70TZmydpdK7GnMbmXzTDkZuRylbHuqsTDLiz3o8AxAmT+xN
	 sRM885dy3WdDWznt7HL0qUFtjV2xxgwsKaHVfjWiFnwLXdCXdAyh3rQ6Alwavl0FNx
	 wJcjpAj9ADu5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8778C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361931368.17076.6051280246996272841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1daa5bd9dd7047a3dfa8166544627d5a91aff79b6f7be729921dad69126a18b7
Date: Thu, 09 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783619313
