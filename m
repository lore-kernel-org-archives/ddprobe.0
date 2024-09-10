Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3294A1E498
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726010154; cv=none; b=TyOx4G8RKu/GDmyIPD3Gbe1QA955tk1KxWH7S/k0myKY7oHuBDsV2T4nLjl6Gnj6M5KVxh1uvttmQwcZmzZAKNTOa0/95QBQ2AI5sbSIOEMo6CPiEaJzsTz6hx3Zsbq3Lbu5TEVOjkNFInL/H1CcfheueyfLF70YpyRrKtqWj7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726010154; c=relaxed/simple;
	bh=peelJaV7eYWCHXx6QmsMU96CsHmloZDTZ9DBVOwNqoc=;
	h=To:Subject:From:Message-Id:Date; b=t2ukxm81Ld1KHUw0DGfCNCnrlWPIYj2utStLueAUqzK06mWXn/HkqmFrdjEAFx/QJv6GPH5ZiMZg+JEN6qKCChUt2x4WLEYAM6LkASQErLKOvXV7c5Gnnk/cc9d1S7qLd1JW7tK6ufRf7X8bwANercW1p1iyvKygphzO0MrGW7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/D0qCY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/D0qCY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B1BC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726010153;
	bh=peelJaV7eYWCHXx6QmsMU96CsHmloZDTZ9DBVOwNqoc=;
	h=To:Subject:From:Date:From;
	b=L/D0qCY7A8He7PQz6rZuEx/MCHY6T4jt6/SmSWheUu5YFxpMnNYz43rLzgh9n6wik
	 dpprbY9U2lt1kz3Yml7dXiDyvmWAR48YHAW2lWUn8U5RP68EttEK5riRs7k/Ijk+PJ
	 2G2316SGsBCc9tbgvtYqSL5Qk99wBBRI7qDRwKW87TWMLdizygVskudZGrdsKKKGem
	 Lu3WpGWfzQChOfTodaE/3W6w43WCLlQ7EEGdcN4ENVHXIuWLPmPL50oWldH3AciBwG
	 8SXwJht9M8hCWaZWgeMgnwv/8JKBLyqHg8Sqrx1ipf7Gp8zcgq/hb4KYdmPE20lgU1
	 tq+tHPA9mVaKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C76EEE01F1
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172601015362.17329.1334889556328478096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca514d41e5eec5302bebec651ad88cd753c94319003d89cf0043e0b2ea61990
Date: Tue, 10 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726010153
