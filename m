Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF9D30FC00
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762355394; cv=none; b=diXDWOU/99sJjxrxU5743BIWDAAAFuZ4HZUIxFltnm7GgQJu8S4ZjQa8qusjHF8hjSJneRgf5raHn7YgQSnqrhaMJQMKTendxjm4UIa76n1V40JFP4FArb6zZsOrcUbxD8cIQLsd8Ey5lzbnuufPzwLxSsaseEfgLS8oUGa7Qjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762355394; c=relaxed/simple;
	bh=SMsbdv7ZAJXYgjWufPGCqr/JdqiTmNjYfhRR0vbO7sU=;
	h=To:Subject:From:Message-Id:Date; b=Wb1gNOpHF9hAgnnBujaBSHQTTA2yJHe72kkfLphC5xHH7FIJHFDxcO3OjVN5U9NeNEucz9upNNsbSLmYUcNrKgM4txSXgbtuU8FdNpYOjRClbBXW6/K6R1JiPEXk9x9v1XLl/FJKyPYF1ClTig+mhj8bMo781vRn3y/giLnTXus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iq1vGIAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iq1vGIAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9977FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762355393;
	bh=SMsbdv7ZAJXYgjWufPGCqr/JdqiTmNjYfhRR0vbO7sU=;
	h=To:Subject:From:Date:From;
	b=Iq1vGIAhDcZI0s97ufc1pzEg0j9HwAPDsS0Tn61hyPlCnP041c5y63BJIIc8FWcWJ
	 jw7zQFn8WqQpj7YyR4/JunYZe2P4RJXJuorPhTp/hNwJ1E/KdVjUw6ZniXsmHlnx/D
	 y2TVSa5P0kAXCjU7cGveMTnAGOJXrJRU3sE8vT5exR2sFDuJW4y37lSN5pMXPM98w4
	 HPtgSa4zIdvwVduNa1FTCNnIwPA7Bbtg9NLGKHhLjE2f4r4aJjh1rQ6teiriA72r4L
	 TNCOFCQOHLeBJunujZkLJcNPNdnIoVYYTSzZ2hHDUAPOn19Gv2GjdGl3RTtY07BHZx
	 thohPG3PWt2qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F211CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235539357.22732.9639540075223410728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f396b075ac73ae94268d370f106aee96978feb237c986fbf3422b53f1414d7
Date: Wed, 05 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762355393
