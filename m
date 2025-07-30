Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C88A2512FD
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753861795; cv=none; b=LtyYIUCrRdzS6uc98dXlA/MaGnDzsPkyFP/fp762Ijw3rjZe+tKAVTu00E5DI+mVFafSpxJ3D/EPcGm2MLwOK9eGZy8N8MY7jc2AZ8nAfHJZLe30hgJHwvJBj3pjzXcXRF35rw717XO+HMetWyTX26dOc9jgaehgIArann5PNtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753861795; c=relaxed/simple;
	bh=J+oroxXVyQ8ErukSnuoOGJ7Au6KniUacr3WFU7NIYZE=;
	h=To:Subject:From:Message-Id:Date; b=Te5AQlYfeE+BCzhKvR7hz1yfC088/ccx01LHT5ruRD06xYrdF7AU7WMXlgPAw2HTOvFtsopx9IZRr5zncv3cmWq8p+iIC72jWxJP/Ql2JrLLcpa6KHAHrHeVT13h/t8krkpbg0JukhmhlT7aSEtebhMCHWwiemfroysYkXI2aa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibroW1bp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibroW1bp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1789C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753861793;
	bh=J+oroxXVyQ8ErukSnuoOGJ7Au6KniUacr3WFU7NIYZE=;
	h=To:Subject:From:Date:From;
	b=ibroW1bpytNQBZWL9w3WLHvNZ3XURNogIX+ti7L4Ho1OuIxChJOhFXa2B629GDCgc
	 EH1OCPeC4w1hdDwKvv9Jr+kWPvvqOnNFO9drIpXhWX941ZKeD9hHUI+xhMvtGCcwmi
	 cx/rjoUxYGNNKiUTLvQYmQ2ZJTbacX7pJmLKGOJFQ5c60oaNcA+TD1njx+4mHtwVWk
	 T9vm+1TwvzmgQ/CxZnAgn5WKvV/U8AuStmQy+9fPWMB8OTGPH7goEzo7mvanMuK6Tb
	 NngDFVdS2uM//t2iF8r4+SVZOG5iPK5P7/k5Y//QxXR/WRTrVUnf8GonXwU4SCJyXD
	 68eB2Rc3Yagww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F6C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386179357.7499.11637373849903051357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664d12e7dec01ac0187fa88cd31009f64ec7d0f6abf2c060ac0968f60f824253
Date: Wed, 30 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753861793
