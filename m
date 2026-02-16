Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3004F29992A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771222494; cv=none; b=KYfIIeS7AvawiI6Jrbk1VfUXrdSPZsBUdKN4DdEvEZqhXtjQbWjvhkgZI60GMUqomPY81sITHD2Pz1uFFWJ6efyHCtSuXZR4HdhKUN3wVRPAB4qOuYsMOrcahdQX15OfDNAnukl+L2V0nnBs+F4zome42n0zEKSwahY/a1mHncs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771222494; c=relaxed/simple;
	bh=lhXuuOab5sn8wTqgzklE66gBcXjEVAgfCxvGlBPYIy8=;
	h=To:Subject:From:Message-Id:Date; b=q7CQMp7+81VMUfl4rHbWBRyoZAFysfyDt7rY3GUKKv9GhQh5AfDeNUbqAFjaRFWtJmPApd43/n8vj38NM3jbJTgW2vHtTaNcY2lngIUbsc1XfpdwYNmAj2P5KbwVZLBYBvQ4RIK35YLULYR9scZMLCfT5l1iaj6FK4Ys5rukVJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaG/iVRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaG/iVRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5127C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771222493;
	bh=lhXuuOab5sn8wTqgzklE66gBcXjEVAgfCxvGlBPYIy8=;
	h=To:Subject:From:Date:From;
	b=GaG/iVRWTf2ETc4zne6Ruj9TzQubGY1/iWMxeStZVnoxbbXBAHmGO4V7rtFLfwVUW
	 ABTC8xqcFgnLgsdpMQCglPuFcippf0/LjJDvKiqGRcpG5b2SbMA4FcGCiQv4fx17eD
	 CHf6RmYr2dkPQ5N+ujmn4371lEHhV58UN6mRJjQpJTfnrDla+01OThIlpu6HNAZNdn
	 rt54UIhlCneh2fTfQYqtXCXGlHVgTvSuxIgrWyJmcQAQLj3fREcpeMEzHXQqs5b8r+
	 aPtQPQZttfBsI0brH6uiVvmpmvxyGFD9lKJiyv1BLb6ydkCCTNvrJci1ksIGN4MCi5
	 Gf6BefgPO7qKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9DAE63F25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122249361.996.9293024144086181727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351f3de36eee0fded96b35a1ecf2d7ce5a00fd49ff34098deb32453bfe0d9cbc
Date: Mon, 16 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771222493
