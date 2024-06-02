Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5419E20DF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 20:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717361723; cv=none; b=KaSeuDHK3/pTHzbu1HsBZKxsx8dzJU+u/O2zAH29HiUf056nFf9DeZ1+Vp+Av1Et/Bbl4dUHM2O0MybpBhG0mBct/hWCcUDfN+5tl2QIAbBdhYVy5Ahz09QHmnhXBBs+DV92acXL2mRv+SQVdzHKOIRPQk8CgUr0TLVV8jlcMXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717361723; c=relaxed/simple;
	bh=3NKEQaHnljYrjyl3vrnbdh5L7BaQ4zDnlB9q/w/3CVw=;
	h=To:Subject:From:Message-Id:Date; b=Mhtiw5CtoPp6NnOO6vfG5fdeRIjF6V7vT5ZQTbPABO4thBrheI1zc3hIuBvHVzbgOMWQmbeuc34QixItS7IWurDIH1F+nnCNkeCzlaGDP6dMna3m508OG1idss6trOgyOwxoxaA0rUkgNAymOc29xdeGIVnKJUHfdPHgny/tv/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLqZgPaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLqZgPaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9EDC32786
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 20:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717361722;
	bh=3NKEQaHnljYrjyl3vrnbdh5L7BaQ4zDnlB9q/w/3CVw=;
	h=To:Subject:From:Date:From;
	b=nLqZgPaRgxgwY3fjJsok0eiYU2G4IwsrljdFmo622akRZebQLXspCC6r3v5stKGV2
	 qpLU/wPO+lWKriCiCYkipG/21pShVXdFkYsdj4jsLzoOJNmsvZr5OCmdrl7JS0YfKr
	 mcehhpzzyvQ8kvbm1looR261GScI8sjOUQoUzb0XpGaGyTBaZMBDVLfYQpCoYFYWVQ
	 +T9Q7gIg8GFEVvoyOWBwXXMKk/NilJC99FP5Rf4u490FIm7vKNztm6nAYvm8nJw1Ta
	 EuqK2gK2SPFPMvz1Tw+v1hViJSb/mdz2iK5N47YjKUxh5esv5hRxVpncIkRcktAT8T
	 TtL19G77CuRPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCC0C27C50
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 20:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736172276.6543.5203539552381043456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8aec9064fee2976f095918d5d91175375488bc57ed5fed746c890bc4f414172
Date: Sun, 02 Jun 2024 20:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717361722
