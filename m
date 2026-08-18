Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5B02857F0
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787058034; cv=none; b=KlvFpzxceJD6q6ZUwqR4z73FsI/ONg61bB6HBMa24Ayf9JC5W+30rtmp36hJN64a7YYQXqQ0mf7h5q4RG5t6VX9twIdjy5VRXW4ypRBsv16mi0V0o1Ml+n0kwWYRxVuc54qgqyZpeIRERg4wTTQiJLGdbOhUAo80g6HF+48YK1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787058034; c=relaxed/simple;
	bh=oZ/6KnNEzQmr04cgCxOAO8O8gPm9/xdle5slzMl2UUU=;
	h=To:Subject:From:Message-Id:Date; b=nYVJEXN1+b27z/FDbDc5ViOfs0kK0HCGgH7amPTshOWmDuETx1+qULbA8pFX3hQDI1qKd4J3SA+ZHO/FieFkyWBdpR0jwXrl8x0ai/Ke/3HeFNi+zptmZs5UwLbkftIVSfnFoIfQSanOw2YXW5qwgalKORvP4XrUEyECM6sRjL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hB1vV0Eg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hB1vV0Eg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11DAC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787058033;
	bh=oZ/6KnNEzQmr04cgCxOAO8O8gPm9/xdle5slzMl2UUU=;
	h=To:Subject:From:Date:From;
	b=hB1vV0EgaIknO6rx0+Tc6xGeIcPv9LhkXc+z67Ylls+yEiqVuC8xecS9JmOCg93K5
	 0VsBULKumeVL/cnA457R8HCInQk5+04naWL1sIKViLazsLi0f2Fh+Xltd8HcX1na8q
	 y6txNhSIGKxGQkYrF1WKeKaqNpHQCf+7/ryb0iqoccE323IiYxQRiy5AvWlzMC5DA2
	 /ALPh9YCwcMMc4aFGMgb+FXWeDCzo4bO7+taRkqeGhus468DfI5VuMn6gAkIEhhi2W
	 tVFinOiA4UNNwlYQylO9TiAmI6uc6ztQWuFfrSNMmr2B5f7dXAStqA8hPCzBTqLFzY
	 E5+8/Oc/fxpGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA77C5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705803369.11089.15531062776808074603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febaf9308eba168a68ad1d5f51229fc0df25b4e4a11005672d3cb67bc14db1fd
Date: Tue, 18 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787058033
