Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3748A18D620
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747236594; cv=none; b=gkinwFmGslPS5+fWmJ/lFJJlT5GScm4b+FI4QhUkKvffEP4JD/yIoMevUe/uj5PEV/bvMiEniU3hcyszx4A9GgpViz40PsS8n+gaJl9ForlwnaOIJ/wfC53XhuZNHVZyj43SfMLr5DS3CfD4Ah4DglxIOG5yZPECXnkGY8z1kfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747236594; c=relaxed/simple;
	bh=Uh0l0J/htWOrvhP58/5YIwfZVP7wiuveWT9otmFnmLM=;
	h=To:Subject:From:Message-Id:Date; b=Jv2cxmcigGQeVL0SOVXOZ/pXSfVn0if+FndyJ8wbYKcSZB/eGH3pETb3v0qZDdkeZ3mGa3jq3UgDk7ZN0Xdc1DK3c4RlY7/pyKhNECANZjhyYLdLqMxdypHO9VfY+/txbv6Cf9tpspRVw7M7Td6Mj0cljh8nRLH+J/allvTMp2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hw4Z3+vZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hw4Z3+vZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E263C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747236593;
	bh=Uh0l0J/htWOrvhP58/5YIwfZVP7wiuveWT9otmFnmLM=;
	h=To:Subject:From:Date:From;
	b=hw4Z3+vZ1Yc9ZNKoUYNmnD+Ly9rlcSivln84+hlZNQG4fEXUT+bfbQI1WER+rywb2
	 T+PCdhJpmTHPAgMPcoTGqcKbYe26B2kJBH9TmLWH2gkLwv2HijaLO0OnyUmF0i/+40
	 5Xq8OMtCSZ51LpaJOTh/iEhzs6LmqFXNkXprwmsOFlPpLkwjONxEK8FupCanLOX/ZX
	 atzK81wQGmEWg8NvROtg0ahi/aIF3eh3n6/s64SgHAMa+KGK08PshUQMLqJYo9duOf
	 gOLoV3vCezbjHczPCipG8r3zKANE0Por7neOtNvAgyk8M1hsEBW9cPSYAb1QKZVwLN
	 bOaj1EusiOqHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1ABC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723659357.9387.14211500495495513784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1dc516c3982bbd897dbc4aff7bd68c7058950782deb7276ac48534d3bcb8a0e
Date: Wed, 14 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747236593
