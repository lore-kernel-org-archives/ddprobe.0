Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8AC3C0C
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744907994; cv=none; b=dl2LNGtidZtQ++nXlSZXltVxnIiOaJeyv9lAejikCt5Oy8c0i93VHTuMPrH7LKNjZbsCbOSYekzrhwcNNnETIj0+/QgWCPVL9NkJInHakeEvbf4uawbXLu7zArQ5HwtBXsE3i5vZqbh2SaNl3blyMjthLqPiQ/uG4oILKhBvqj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744907994; c=relaxed/simple;
	bh=VTsaKuzXtu3UeEf+WlG+E+qi66hJdKdwQFAaTPVyNOU=;
	h=To:Subject:From:Message-Id:Date; b=ji2mUf95l+yid7y5358CLsXgKT4/YNnIXx5sfj6RxqK7ZUnsttbRzefILZrwZlujnZ6K+mlcvVcBGlBkqfJdvUTk/x79ozSQPCKoHOUhYuu8LBp2Bn43Z14RD25ivIQmiwx2EbfWDpjbmrgCzefLphpIaJbhjPT/qZQg8bP/tiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIR6khNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIR6khNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AA2C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744907993;
	bh=VTsaKuzXtu3UeEf+WlG+E+qi66hJdKdwQFAaTPVyNOU=;
	h=To:Subject:From:Date:From;
	b=MIR6khNbbzHOMCoYW46jQzfU2n5xsvlVgqklJBQW853kIrkRyQu3oFP0ni3yC0G9x
	 UHOntMMlT22r3BRAeUWP1knJYYxvrqdZdBeWj5CA3KbttgVwTQvcq3b66T2lHCwE3q
	 HYAY940QeTKBpg/DSm4QQUQ8x7gRzNc0nmRTSNhLHQqES0Z8b7+5PYLOvwEIDF2E95
	 1lyMx90aTno2bYkftm0ffpRQ9BohRq69e9UFdpcuBIgjKGzNoeQWsb6wYV8dSRpVoK
	 a93KMMdJyg5xdd1MWCCHUyRz0luPYNGfj7FGhV3BptMwn4ZxXrHHW2NThjyjMm0noC
	 Gf23SKlf6MucQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93564C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490799359.19816.4186683346878332441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3748f18df9570710ace9f08bc41ce8165b9b5251d6b5ba3f80f9b0933ee94f
Date: Thu, 17 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744907993
