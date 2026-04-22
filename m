Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E893D1719
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776859054; cv=none; b=rhzWyDhS9KACMRLH5HTOYTErKdk0wWGJSLFJGTZpcBqPbMjuPAeVOmWfcC17+o/2qAhmrwKkoGkpy+6lZ3nHAB4Qn97jO+bkjyjg6RkD7rem7jz2HnMPsnSQgIcVHOY+JFief9CInyL/k9Kmw5GGiHZFjtvUpcJKPv5v6XSwSN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776859054; c=relaxed/simple;
	bh=dwbni2rV+XPykaLIILI3uXw7Oy8ZMPiARNf8XiA5gqM=;
	h=To:Subject:From:Message-Id:Date; b=AxXPNtKRkoEBWIhaggggQ4F53iJQrpxO+D3VJL89WCv8U9Np3ccsCSCwbFequrAVqk5h9h8DeZ5r6WLirrGI/cYBkZe+vHMt+MGkgd4uMsJo4Cm7OB3h6ZCi9OCd1W2scBSjM808/AALneVRAK52Tw9kgvAktTodA4JJSSb7THA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8RbALNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8RbALNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F0EC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776859053;
	bh=dwbni2rV+XPykaLIILI3uXw7Oy8ZMPiARNf8XiA5gqM=;
	h=To:Subject:From:Date:From;
	b=Y8RbALNGOwouFSDTsVSaadMOpPhbtS1JgUminnTnmzJrsBm7ezqu72MHxhnvXuSBg
	 gEKm79fjwxUN5Y486Wv1bSuSLIxX6WUUwFN2MI8XkdyqbIPUMGOBhXpaR8K6zbCa+v
	 f3tg9CXiWVa00RAm8h34LIm6nkHV3sy+2mKYHF1ot5mvM/EFu0fqltdkLTjCgbovuj
	 VOjJ8zjxgWhvqN26Uz0/qi6T5dankGjzFurBusqOLK5HIRaa9ITKtZNWo7aT7rzotT
	 TsZvqHs+bHJOLqleY85ZVyKMZid62i2Kwd+C4xsDRxs+byP7fz2/zPq7GEL0PU00XZ
	 cZlGgBT/N2xWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9418F94CBE
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685905368.8225.822156173022201946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afdd4dde8797153ca385847d89ec288fba0c2a4ac8316003da660f4135137f8
Date: Wed, 22 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776859053
