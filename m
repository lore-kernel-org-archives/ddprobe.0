Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BF2B67A
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747705194; cv=none; b=EM1cURJ4p1FUtz0bXCTUPtjM0CglKMpah28/30L1B7La8tp71K/XYfTMUFdrCjjszjzX40sXHNqi3hv2++c5bEKVB4Fz/YyulqvUAxGTN8WDlvor/URmRC3xPO5ZbNueCrKONP5QBFobADjELZypRyKWocbDYrHQ81e5GhpeMLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747705194; c=relaxed/simple;
	bh=8phcMJVB0gc7lEixMig7a8Z6IajRxUXSeEt7c9kvK4o=;
	h=To:Subject:From:Message-Id:Date; b=PjmFw3znGCoFygSfGefVMxgMvDk3jgEwGmIAJLKcDBlMIvWO1LY5vz+54Io+7R6/cT0qgbbXupbF7brTexe9BMkB83T8MjNf4vJXvlNTSh091HrwGt/OPUw7oEFY3jAZI2zoU/WpuTqiBGGVmKz5KWSDaq4MPPX9JTJXiM6c87o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/fpCA2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/fpCA2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747705193;
	bh=8phcMJVB0gc7lEixMig7a8Z6IajRxUXSeEt7c9kvK4o=;
	h=To:Subject:From:Date:From;
	b=j/fpCA2YiGMMneWkFAhhlngkSEvesuKqbFf1wVppcbWjGjuSABzl5Djczsu9GGzHY
	 ZwuPRF42ZiW5lXFPenUcl2kIHSzJYPA+3gY6O5Dr6qIbKQSzlgFKoytYGJYlLwhpbz
	 rA4t3Fdp6z5T9crutjAFvkdH5oYJaEQFpOvRVzIFMN0c29bDgVrUre9oa+Pg2E2gzt
	 ZcHKs6VgTMq3VgDbm5rmZv/7HUTjqGn9PIK07H6riTiRKFk6rUDd3b+8LL09JeVSXX
	 he/sJnmsNxFyUeuaQjABx1rjhXHPn2FhFML0XD4/jhx3FWrhTMEJXmMj3V6pWd5AhM
	 GIw6I0oaXdecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E991C54754
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770519357.376.10830559576899819635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943d16267c03c6d104474233dced22ba957d00d3754730e6cf1e2b6663840cd2
Date: Tue, 20 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747705193
