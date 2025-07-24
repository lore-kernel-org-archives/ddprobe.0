Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BA1257AC1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753354194; cv=none; b=kxhoJPRGT5tUIbDShM0Wp5EBVOwBdyfKdqyHaHnysR6JSc/sfVj4v6Mh96a+YBX1HEIvJ+UqAcbirWv1+1+FhO4cu3CBMhYcMXkAYx7g4OsR6l3RXjTG/1O+kEcrv04QGnnnODXkf6qJHzqmSjwaIwU37OoinJS6/3V/5Rndkuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753354194; c=relaxed/simple;
	bh=e58oaB3vmLLANLzkve/gZA1UJbNi+szs+UfNrsNcUaM=;
	h=To:Subject:From:Message-Id:Date; b=U09Bw2Z7jrvXDXgHIIlV5K4+m2gvEuys0eoRSmDIfbTBy3lqdi3gjozYkEAknOqrr00Mzvr758T77u0xAHD0zlmkQNNWwK15fkqgaZOnDEc4fLolmQyEcS4EW3D6Vsw5938+V7gWcSXsd+qpPBZzxnaXoEmDlU1vJyYIS4/UYMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrhL5j6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrhL5j6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C768C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753354193;
	bh=e58oaB3vmLLANLzkve/gZA1UJbNi+szs+UfNrsNcUaM=;
	h=To:Subject:From:Date:From;
	b=mrhL5j6yLiUApVQvUPcczHFq3sNBKdsQ3iqom/tFBxg/ri7MS6iyKDBrXTIrF5+V7
	 MHpn//FovOcs1OZdaI28EP/YhkZzCp+Qc/sl0g5pLkzCi+roNxLVJLBYguLZLh4KS2
	 IeOqTjeLxgDCAWDPZfVxPmrVvtPsVG2ZQeZKkLE9vL4Y7DzrH18HN8LNofXwaiyp4k
	 dyUEuqQKPrqkqOVHdlohXul70lrRFhNlPl/RRZAFIajUPpv31n1CobTQnQHEG2wpd/
	 /tlDfDno8vZ5Ztifj77dbdJKe8XEvWS7IpNFgSJZaM+VRbVKJ59SNIL/K0PXGZq+5b
	 qU2dbWANkjBNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E41BC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335419357.5259.11780992596642797379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b724c3412ea43ab3900ddfa327f9299279284cdf3f2f1e7d54751b36b186de64
Date: Thu, 24 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753354193
