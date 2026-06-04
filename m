Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B792F9998
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780592674; cv=none; b=BkNQime+Bu1z9WrcUS+rESnHAGh3RO9DoMMKCjASTkaopoDcN8i3Wmz7pIDP7wtiD7EloFD4UrJmhWrH+yYVf3JxDEYc6ZlwQOClFu0hmNAxVDW0g4hcOpef/2qc+9EJ0RSUYjEjuOuxKz/qMgGMXzFuahY/zBcOfI3/MotTfPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780592674; c=relaxed/simple;
	bh=euj2oJad84IkCZo/N7z5glH3CnisEiGW/0dm5TGtuVg=;
	h=To:Subject:From:Message-Id:Date; b=GBZ0vuUlpONQuKB9JnpviJXfbr0rZppXVaBHjjjHyDb+ZvcUIYXt5QXCXYq2cUQV+20or4L5b99OI+UjCRg9QmhbIokl65BNap4wxZa6mP03CJ48q6SJr9rFu0PJEM4nwtKaDlPSmBBDr1f1pCFUL7crJ6GjIK5qFeUkyd+42qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu3RJCGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu3RJCGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80E3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780592673;
	bh=euj2oJad84IkCZo/N7z5glH3CnisEiGW/0dm5TGtuVg=;
	h=To:Subject:From:Date:From;
	b=uu3RJCGVsSIvvAqCxG+m86GxVp9AvoRZEtWQzX4kvt5FHIwh2bKn4biXD4GRKvOA0
	 r9co8AiJCqXz1nk2dk8cPgLxY8uSbWB2J82hmbKUJpuJSEjEi/V1ZW3ErNgtdVGcQ7
	 GDEgsCaRq4Apto9fXIePtkkQMmStFB9+Wmxau2qObCif5vjHMQ+PGKWAp5cglvR3EC
	 w5It9RNFwqQPWHZX3F24lwHu4a4U+cUMTzPHiuxydBnx4PRc6Rw9UFvXtg2bblP5hU
	 PdhvoHYTKFtXTz17Iix4DZxVwqqP4ciiWtj277hO+wRXcFu4EC4701nuCVFRn5L6/p
	 ZW3l0yAH6hskw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4B4CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059267370.29318.10079766757358187095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5447bc852c7a259cf479f6e9df4240328bba44aeca074856d75fa7df23379bf
Date: Thu, 04 Jun 2026 17:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780592673
