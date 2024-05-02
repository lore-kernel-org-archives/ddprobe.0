Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6405A17997
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714618343; cv=none; b=RRmLpK6G7HG370f+HDrbZamZpKNl5N7Gdn0ocT2sQvx238Up8DVFrisR6WJhzaBq1Xlzq4s3AO7xZY4Vaz4FH+Ez4THUaJ00N/yt/v2bGKwdO6cAa9nCopnTHO33tI3O+2AKVFBvY0S18palQUp4mL4AkOBWz3iW/T9tNoLMQRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714618343; c=relaxed/simple;
	bh=hcxj2Q2+7gkgo3l9JWa7PRs/W8q5WGEAP8c8TKsiMfw=;
	h=To:Subject:From:Message-Id:Date; b=PUdT3WzV2Ok7jTIAYRJyCEpUO396Pb4ORpxeTIl/6Ep3L/OV+m6M/epyjFc/rLtsw2VIdLzkzU7h2Xzfl1YWEG/v847hbawtkr0GkLqqFtbhhfK9UsGZzGik8ny27QbSuHtxoN0tFbupXVdlDbZ4xcDlijQBPO+PWIgzF2k0Qb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuvE3x2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuvE3x2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F11C072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714618342;
	bh=hcxj2Q2+7gkgo3l9JWa7PRs/W8q5WGEAP8c8TKsiMfw=;
	h=To:Subject:From:Date:From;
	b=TuvE3x2CZuNk9h9EgOY2JKGVVPuAgEFRJP8SvRdRwQM2N5Ezb9jP51uZQMHmJicZD
	 11s2CksixFbZSJIh4FLTTxvJsQ3oll0kcBNhCKmIPKqKEit3uwDaFZ6x4n59rpewwY
	 tyvuJTgFjvpS+O7lyvd1jsEhoQ15Qgq/HJ4EglR0dqchE4/xOVkb5LTpMB/Pup+bST
	 Nu2L8WrAf57kc3f3W4fBR/zDhS3gdt+akpIVj6iSGsm9Zj14ZZYdvENPm/Te0VtCu2
	 CW8nrNnYdZEnhBeRDaszvV9NAD59CcUJtyVLOSsYvnx2/6vkmypEl0pXNm4956USeQ
	 igfqkfC+70Suw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE03C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461834281.22080.17718253218068428516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50c31476d6056f4949971a20410bc2842cdfea8ba69c0261b3e3ee7f820dfd6
Date: Thu, 02 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714618342
