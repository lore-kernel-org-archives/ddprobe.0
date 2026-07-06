Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D197A3CDBC0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783363715; cv=none; b=ZntZcjawdevq0OzVqKdWwqzr/3f9/tMdvuY/lIrNlviEdA85ipZ3/PPI/uq+L/E9k0gdAv3drO7h4UwmDTZCHQhLnW6bB/Qg6ErMcKvpwvoU6dLpQsjSjx1/JOKrURgxm88Yph20sXS5sEpqRMtri1j8314+3n/hoKKCp9OUXy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783363715; c=relaxed/simple;
	bh=3J3D8t1TTUbYFdA3ZF1qYQFyq9YIcRjGTYQqtvVtzgY=;
	h=To:Subject:From:Message-Id:Date; b=XU6FlM6u0wf/HCWj83Wb/9XPoU2t1zHNqAhDVO1iHtD9kRW13uZhE+Iw3stFigSwyQJ3QXIDoVInd0NM4bbUs05KI7W9cKnsITfpU5OSIiHWrB9lv0lbiydz6wiFntzNIUba43OmBux2Rl0h3NW7PepclgFAMNWsV7UxXBOylmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rriqrnqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rriqrnqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2493C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783363713;
	bh=3J3D8t1TTUbYFdA3ZF1qYQFyq9YIcRjGTYQqtvVtzgY=;
	h=To:Subject:From:Date:From;
	b=rriqrnqGWft78RtOoZYSnmI87m8lKkbXQo69Obys1RSz0fPKLu++Fa/BkPayaZDOR
	 0747xN92tctwtD6FECJsIyiceRmTTCyYw+GlqLA/tmtUcjS/WMkFEtqCa0QUrHyDma
	 PlX7PxefkjmS1b6jO0b3uETiaSCJMv0jcElk+g0foMYA1JQaKEilTryat9yxOc27hR
	 B8C4RHvQoT7CObBWmxEKkZmjaktKlGXuziYFoFpOLMDM2S00FZuPo8YAF0CvUrBWNA
	 Sbwe5JsV4CRYaw/R48INTj46jrH61nooPNQqoXlZ1y26Sa6Vjdlr1tBQZirfH/6MdC
	 yi9ruv6nZAHeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE759C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336371370.17479.539884776910342430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f06634b2c4c8ce749a3f04b9a783383c4639b6d2bcffd1b62a869ea8216e26
Date: Mon, 06 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783363713
