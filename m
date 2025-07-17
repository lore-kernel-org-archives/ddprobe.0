Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A58298CA1
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752776995; cv=none; b=aSKnACeh/3Oqal+L9gnCPd398meBUYvR53smjhxqnkvlZwycp0hMrbQVkgX57wz/ofmmjI+06kt5uOz9NrREnKocNGrbRxUmjIqWMN3sQ0tfAahH3FI83RDHUDjpgrCoeRWq0a/P0AkcgZ3PZkwl1fdkRPOqsEGAAeyRlpf92MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752776995; c=relaxed/simple;
	bh=SFhySc8RKY0Zpr5SgFjx+irzIHkIL10irlNkPH9iPOw=;
	h=To:Subject:From:Message-Id:Date; b=b8Tn+tF7pZi5X0rkkjg19Kxg6Az3TnElOoEcEFr9XVzBqRLV0Rbzkv9BKCSCaioeDeijV2t+l5uCoLWKbvNJ4/bynxhvTQZ/6VBpQhkPQPgt2LxEphgo/OAFSCUD/H8GDKjRlf5PT2KuKEXZHo0rANAJIIKetI0EeTU5KuC95pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tc0q3n2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tc0q3n2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E92C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752776993;
	bh=SFhySc8RKY0Zpr5SgFjx+irzIHkIL10irlNkPH9iPOw=;
	h=To:Subject:From:Date:From;
	b=tc0q3n2tjBoqb/7sxqHX3ZqDER4i6/dyUlwF6gMzx07+SJb75NA5FOKc3ziA6eL1A
	 zkWpk1ieMjQbJOU+cJsWWDCGNDHfjHpvL7B+wrlqRaHaW7iZRPGRYksy8PYxhhWv+9
	 LBJdQ6aQPlBUS7v29dG+EVGyOoUeCBgva9dZmpaBDwwaiPXCkCftjsQIHZahGbw/9i
	 yFfgsSPnPGSN22jHBA/uxSm7wjtuMSv6TKdbiUfASUoyM3F93A+jC+3PQsFFdOw2Sp
	 chTtiRQ2QheubuCLoo0bS3TaWWWYStXYBlm7+Q2naXhzqHe1txcZ5StyhsMQ2gNyR+
	 9r8d0Vo0yd73Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFDC83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277699357.14236.653311402684156408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9155e7e21897f34f7351fc4fe5e76941e2c6e57989ba92512f175100112ef7d
Date: Thu, 17 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752776993
