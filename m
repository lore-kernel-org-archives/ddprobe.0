Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261E43EBF21
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769343834; cv=none; b=JnSiz77CaCkBcMgCwCy9EEof5UI1jPNqZYs+rHcbO7c2UbZw+O5gjDdUMQhMR2bBYPM1YQef7NJeG8j3H6c5LJLQVclyaPyIOk+T4JDbdxnMGUKoaHlJIW6Q50eZGqj4d49174MxFa5IHL+LCbA7Mz+TPbSK0kFSk4rARZcZcJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769343834; c=relaxed/simple;
	bh=d75PI10Xqk0jYsO9KZzIoUlUrsGb66mVuYkwUsNebSU=;
	h=To:Subject:From:Message-Id:Date; b=pJgvW9szTgDnB8R2y2CsTcFclJP93Q2/AqCs3IlxpQHUgdPl3ZbGGcn5nCtjeIriHbhFqgha7k4HGpTWV9GPOiPw4ZX6rHESSk8hIHbbz58aRH+5HNuRCvhJdPaJC31heaUCCe6FurzJbl4J1c4atdFF0Sdalm0b2usamG/1Rsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5sElSax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5sElSax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5588C19421
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769343833;
	bh=d75PI10Xqk0jYsO9KZzIoUlUrsGb66mVuYkwUsNebSU=;
	h=To:Subject:From:Date:From;
	b=I5sElSaxlqMObjYV+duOzvZnRi6wJfVEta9jI+h7qjhz2R3sgCsq2CstKgh2hmktk
	 Uj84KYp822HN7j31+4gL6kSRu8zoNxpwE3ROeUmjij0/yMFjVf2EDeH4Q8Xm7kpW8X
	 e4uGdCDviMIRx9fe5JO/oLd3c5EWH/GZJEeiSTpKXFs5dpEU4svB6kf8NpiekPm/vw
	 FomdSfDi9kutSQtRadd8e6J2g6eXUhkQeGmMlZ1dA768/iLC9smTBYzAuLmsvfIFX+
	 6IJvxb12xJ41xIQLutKIMWfvElogWCxatxvzczRQW+zKVglsJnDi+2d4Ijq7t/WOft
	 VtWVZ/bLV4ZQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B0E63C90
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934383357.27069.4416418627299242841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3942a818cc7d966054870bddfbeb2b1c4ea2dd9fe7a4961e70edbe58451244d
Date: Sun, 25 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769343833
