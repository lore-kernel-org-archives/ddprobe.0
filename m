Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2571862
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775947654; cv=none; b=FS3rTRY1gTJvwuarBzvV0JRhgT6wrX0NnBEI1YyXQJMt++WgBmKefRQzXdcYSMdQPFvW49wHHBJAHQYyfnrTqLcoC9oOjMs3cBRaC+M2bfpgoFvLXg3EeXxEyFJ5iw15mAgWNC6RKjfBsjeb13drVyDIiQovk4mzxu41EFBO9BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775947654; c=relaxed/simple;
	bh=nwSCYcz6OYvz9e3VQkamnBDkrJTo/pMt/7iJ3nw3Rgc=;
	h=To:Subject:From:Message-Id:Date; b=OaiYo0MOICPHyq2Ue0aveYSbDLv0PPJbqnLuAenlLwj6B1Tnxtb5IhuH6cXkoEk8n7QJAhfNFiGCfwFkHg3kJJnv31BYQ/5CjvEx0Oltop05URAyPmmNthqb63hEBEEU8qMXwABmPOKCN7YyUXGejzgjtuZviT1mNvrhxdKZ+S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaT1lNAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaT1lNAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22F7C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775947653;
	bh=nwSCYcz6OYvz9e3VQkamnBDkrJTo/pMt/7iJ3nw3Rgc=;
	h=To:Subject:From:Date:From;
	b=UaT1lNAcG9ka6DFJZUqarJLtLGs1zaBLJ3EbP1EByaiLHMBD+76J4HMs7uRHZbmb8
	 xi/hM5y6+dBFj/pAqlaO25+dNWpkHmx39s1fNYwm/lrNEuAU8CioAkzYEE+nr1P8me
	 6bPoXqNp6all9BQtGyAvKN9BGN2g38I4k5wDttKf2Tgc/Pe3pC418vZjiVon6vIsPq
	 vGQPV5kAp10d7VAsqx7kxVyPaxqi7TxNoJKC8xY5FFHxFoCKbQwSWm7Ls5T0I8tpfo
	 wSHYElP20BkskDfsa+JUzz02Siumk+N5eXvF1iNINJe6ToZszACxKCFK25QliK49NW
	 xfGzVedcCAmEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0075F3ED5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594765368.25553.1374551662484417431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac769b0001e06d45d4fccfddc362c3d03f85e132725d05efea2cd17bfa85ce63
Date: Sat, 11 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775947653
