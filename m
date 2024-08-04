Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4404679FD
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722749154; cv=none; b=k+YkuV/pBYsgrKBG5AJp4BOzuEbTwZy3Nd6O5dy8t5X66XmbTAYOhQ7P28Kv3UOhN8fJZnwmE+dOltP4Mq2cHanhcAeETojq7tUmuHv96P5Eh3xOItefZOUAryCdHrHes0fdTLtP51mrYpfuD6cKz0/eY+XvgkUhubJdGCScVoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722749154; c=relaxed/simple;
	bh=CxOQCoDnp/lVXvxPkY0rjCBVQSxclgoehvZTDvDPi3g=;
	h=To:Subject:From:Message-Id:Date; b=nmcpcq0026WV/qAClaLJtHV4jl5Fa5ylcY8Mc5xxgLLZoMTAav9u+jCXpEJQiZtl3yV+xx995JyjvXWzUatDumb5NkRmb4JVi//zps5h7y0+/q+3BikAEVMQlmA6ASmtNiqCFymvaQvDaSZ8peG8DhfA9uLcJavMGgbwwz2Clns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXVd50Bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXVd50Bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B326DC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722749153;
	bh=CxOQCoDnp/lVXvxPkY0rjCBVQSxclgoehvZTDvDPi3g=;
	h=To:Subject:From:Date:From;
	b=WXVd50BndUYhQ4xZ1gN9l9kKLwBsb9FSbkRfQgtLm2afO/H3jIlv6CpG4sLgdkLso
	 frkxEQ2rUyNBhCUaJ8KgTU69bNLlBEeS+upmveUfTFFXc3d+Fhg5IujV09AZl3sAkI
	 HrNM9Uy2hGaTYMXwCkrR1u+5iKUd5CW12ue78qyXpOYx+DEDTe1IHk1mc0sQ1qTniX
	 dWQ8q26IR6Ac/1VVuJ8nIvZk7WgFEUp99qmMOn/v6aP9ZTM/tUWfq5GqexxCSeAk4r
	 v4s9M54DjRKIRXdv7IVPPtjYzEPFKipSunzBf0II5cEHW2iu1N+EvxE+uhIz814USz
	 5M/dmRWHVPiRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B815C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172274915360.31814.13159328729977688899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f4d708a468d5043a3c0c4d78f992c52227fe9c5c66c43e00d926247b6cd9b5
Date: Sun, 04 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722749153
