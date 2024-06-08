Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41104847A
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717810643; cv=none; b=JIZ7U7hXkrO1I48WrYhlq2QHeI0vrX9l8Abbr0ErONqBMmi3GfP5yAZXagyUlwGq1YuWupRGCsNHK7WzxqTlb2wnG+B8GmeSN1NSkbtNmnsWqZjoYhz2G8Sbq00+dP+jeEPaMXDDvYsWyI0VE17cOP2ph+wdX+gQVi3mgJ041NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717810643; c=relaxed/simple;
	bh=GEjikQKxch7ROH8PXJw1CndXsaddHn5iE2hqIRa6nPU=;
	h=To:Subject:From:Message-Id:Date; b=FtalXdGz+VUopnnR0xA9EXmAapybhX9S20VsZEFdRvr2kc5vymUFP/fCHwaFE8FA9RNDbXwelt3/2d10FjxO/Pk7qa+Cq/PK5bAyvCqVHRn3hpo8q5GMHG208AMEEfJ7TiInTgp8eJkDXQ8F0hoVAKQJxrbZziLyl1vv2jDWCk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXoEOg3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXoEOg3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6563C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717810642;
	bh=GEjikQKxch7ROH8PXJw1CndXsaddHn5iE2hqIRa6nPU=;
	h=To:Subject:From:Date:From;
	b=WXoEOg3eLxAB9r3qNHGmL2vyvqZmctIRKBnTDOvEml+JNTONk1ec6KhDD0uRGyxzw
	 GxshbUBpSvuJTxqXx/MC2VLWp76flM+hkr4pLcm4QssdOVuzCj32QEgyZnt/ucLFUh
	 hLM1rVHAj8KVYV+qpTx/JMrpcEbHnIf3cB2e6WW0NGqrZxhsLV3uRc/LEajyuUdFfb
	 FSpjw9QTDFsAObY7HKMFm/mAXaB8S0VdWfN1sk7ai83n+FaNmGBG1kNuJpNrO+W+L2
	 lTcZJjhrWhbcE1utzoibYUR+LvJ1oxjNqocWCrTqD1UNrjumGh2rJF/nyrbDeA7ikl
	 8o96RE1TasHRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31CBC27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781064276.488.14307431132782224612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8665c92ec81c9684ef6776db66bd1748b659d4e47c901bd0ab4eec234e76859f
Date: Sat, 08 Jun 2024 01:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717810642
