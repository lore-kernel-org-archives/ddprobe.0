Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47621328610
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782506914; cv=none; b=RwmNOhVkA74lzcghkN1hTY5EJnRHKewBqsCce9MmcZ8mglEtChLggsAnrOxaVkWPGQB9qt+TKX//G7y/Uk3usD15wt/Cey6xnZmDOa0fVWJVxpsJ3Ko0jjLmaIfHd55xIxevHXtiS7M/Rr6uOMShHpN8Xb4hklcEO2PDQA7Dgjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782506914; c=relaxed/simple;
	bh=qlwQDPel2N2dZhqazQubNwSVKWkG8+B0JoZ5xpd0P1A=;
	h=To:Subject:From:Message-Id:Date; b=nqaXa2ZkUFnD+IUZOmeUruBQALceAEFkiQxJKCqupqwZZy6yBGalrWQ3KM69Wj3ZkzdChGpS3nxRcOIv8dqND+H3uX6p7thQYaPcpS4nwqqB//IfTH9nJSTaGK/UjxVaPQ+6VdB5GvxlIWyJPRd1vS15/N8wqNVg1XBDRt14Pz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdFwb+KG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdFwb+KG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A83C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782506913;
	bh=qlwQDPel2N2dZhqazQubNwSVKWkG8+B0JoZ5xpd0P1A=;
	h=To:Subject:From:Date:From;
	b=pdFwb+KG1KuqXLughLa9V+L2IgH+tnUEQ/+gdeWIaLhqQPviHFy07pRz32nFvX2Ye
	 iU9CVXqPkLtOMe2Yec+nS6H1spRq+rLwrh/grrL0tWInhzIu3Yh5EwNVv3S6/n4mYH
	 WANAyB1qwL9HKTfXi49gHFVp2xDpRfWGRi6K8iWJ+89YRMmWimeHtwSbKL1PTDxOAO
	 M6Yk2cAGTAjNy8EH5DXMX7jg2Os0HbCAZ/5U849qtwDn5r/oEHJXvbXnYuggsbmoD6
	 ahG6As2N4P+U8L6rVMDMklyB4Y0SEReM5u0mMwCdkoSg+IMpyYgoYkQ0hWf0GWUJ7J
	 BqXKFU+j5bp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B821FC43327
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250691374.21150.18236844321456648303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3790574b16a91043e00b7febe139a9a81756780fee22c85b046fdf4d15e244
Date: Fri, 26 Jun 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782506913
