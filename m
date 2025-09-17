Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5C230CB2B
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758113393; cv=none; b=H/JzMXtLUPmJeTyhK5swWA/WMJQUjwnhqOJbZq2K93pMG43kJn1OlNKQ5spd63PWI/M6NoJOpWK7lz2rxzhC2huPL1g5/ZdmgQcaJ/y2qjtCvInmRKxBwgsd0mrgGUcFMBaaATEe4PcWUlxoTbFRP6FTkMlgc4XaQL9NW0d4ytE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758113393; c=relaxed/simple;
	bh=BcpBqXjfWU71A42m0CqQqRHURXloJaALUwJHxlvEmUk=;
	h=To:Subject:From:Message-Id:Date; b=SUNeCXAqidMnUg36hpENqG48udOUF+d4JiqJ5w7X8zhaVbK5JSZzS17GMGG6K7MykCaxEBz31NX0USxggcWvtkjo9HIz6A2vpEwo36LXjW6mwBs91+zfDmm0RZ4B3I+bhHyiXrmAMu8QRpKtXaZ3U7jw/cwWen9f88OY1/spk9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNrTSP9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNrTSP9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE12C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758113393;
	bh=BcpBqXjfWU71A42m0CqQqRHURXloJaALUwJHxlvEmUk=;
	h=To:Subject:From:Date:From;
	b=gNrTSP9XRT9U5Eabtggz/YaWmyiqYBiqSZkow11ApnnaNgrg9aCBKieE3GUA3zKzV
	 YFk+7fMet+A0N4eFi0r19eZY2izB47Wzo4wZb8my55Aq7uUXM5iD+zOi+sFMWeOFDL
	 B9jwv0Wxtvr9cNuF+95FdVb7TXEA908L+98HJu/Qd7wKGKXAgZJcaV0THPKnhfddnw
	 muILm93oTrrVX3dR5inKWCK0V3dZgnZrx+ogvWqdbSdU8UGokEgZLZL0wj+kBr7jHM
	 yG01+vn0FOe/mAb2o1OrmvpxUEvoKwyPjFOrMC/BYn3lUD/cTMUBtL2eixyNjzI4Rw
	 ljLP3KruiEHLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0ACAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811339357.23818.17285108678803136277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ae61e5775ee26f523dd67fd4e07c9d53fd2b3efca59b7f2dd54f16929ccc7e
Date: Wed, 17 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758113393
