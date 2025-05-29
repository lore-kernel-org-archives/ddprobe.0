Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC951DF73C
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748501394; cv=none; b=o+M+v7njTeaQ+4PYjVNPl37TrWAYAoAgV21Ny8fJ3f4Kj9IQlo3ZTAWLHwQL2x136fojJVQvOpCdR8o/lXKvnrrAyk6ThRSYrwjVnr4aQcoboaPpu6MLfSZjf8rhswPCWdfT2xZ1n9TioiU8VXUvCKvPt5aYP4ji9640lfh2DQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748501394; c=relaxed/simple;
	bh=pCvo/A9miYw2zaR2e+g7i1SRClU+bT8OgP+CWg5MSZw=;
	h=To:Subject:From:Message-Id:Date; b=tM7CRv9piTh23sqjGjVWa78AuePGePFL0Lc3sk94aiWG1OSR9PF7knA88szut4Lxd7Uh9Qt8AoO9iLU3rN/+s8ek9JxjuvU9twB9uXAusq4C4uYMVGG0LWv8lo4wMFPiL8ekTHTMimMH4Pqm4CzU2iHdbnFgSbZz5hPix8ksdt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sopKyAXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sopKyAXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A557EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748501393;
	bh=pCvo/A9miYw2zaR2e+g7i1SRClU+bT8OgP+CWg5MSZw=;
	h=To:Subject:From:Date:From;
	b=sopKyAXGbr6DrX8LBSj0h3I1pLlnJdM8TjaeB9eW6LouEgNeMIY1mR94IncUV4AIn
	 HyEspcoVDUYEnkhy3YLgWZtHEiWXsenaRfRIh1ugAsFxU104+P4c7dsLU1Szp8JN5J
	 1w82ytIXC4vpTO9wKqB6HqCA9croyEI65Sfh6+9epaI6MJc3RWRnvXyR0334w+RywM
	 aRrDSLA0Lfv5IBbIN5uuCj9MwexQa1N/KzjHtl2UfGjit4tctdtevVz8uP0tjlJGvq
	 pXMmWIyw/6d//RAzJRoV4l5DLw9RmjzYECqR3i621pMdInQv9mPKdrqso8IbYcbOvi
	 kb2SU6mjh3RhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E6C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850139357.28981.9526724695253622279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de401a61b3b3f5d944fe0bf5299c4e86bc3d8a500c1c2fb3b9aaafee2f52d285
Date: Thu, 29 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748501393
