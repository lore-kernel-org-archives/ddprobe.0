Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DD920FA86
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746741594; cv=none; b=trfAeZAWVjiZ4gfa94SbB1D9GQWu3PBBoHpqqO1rw1gtXEF3bW/vgBqD9zTyipxp/I/pEL8ZSS/NZxK3BTdH5sdhlphwxvnf/Td/8IF2Lmz8JdKTE6SozHMVM38lM9oDEQ8EJpYSsdczGLuhUR8+xGDRXopGD6BAJyPjK5Agarw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746741594; c=relaxed/simple;
	bh=8RSNlZ6HSugF+DwYxGLj/LrAJj1oB6GFjMGzx8IlRp0=;
	h=To:Subject:From:Message-Id:Date; b=eCzncLs3zUoJqTyDdzChSfyvRAmog7zdjaJdlYmd7FZhW1ROTqjy35+fJY8i/vkLhhI0bOJzkcmpQSOaIfV3jTP92wZua/k6rJqWpEIMPF9Xqgs8dv6C6vhxPbWYz0VLsnlgFdOjlKzrFaA4c7PN+0vsASpFQbLqSvmwW1KczUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCXu7d+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCXu7d+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09EFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746741593;
	bh=8RSNlZ6HSugF+DwYxGLj/LrAJj1oB6GFjMGzx8IlRp0=;
	h=To:Subject:From:Date:From;
	b=jCXu7d+6dopIo38dJXbz5fXz1AFvoyjG3nXMM5d8j4pD9GiRDb8ciJIkx/kCsgq0y
	 UsTIyYGN+LeOf+nz8B5uiYFFKqL1/PhRjhAGzYWqeD9+OVbujD1kvnVF/GXPC45TAN
	 8+YgDPdcJbcDPTSbTf+quTa77orVPbL0kk45Wm1UuoPk70U+3XyCZHe2BCIuEPU8OE
	 9nyqHuyJYEhi+/HDI670TUoBjmJrygWbzj4QgChsuG1LbFT1jUgLTScG/NG6vBrPA/
	 QsI5HWkthOfLlKSk/2R20yRTUWnHCdf/OSnH315QuPKvsMmyJjMy8HhzBKfi7mfD+X
	 6cO68A2WzX/iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91655C3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674159358.13207.8086833245377898029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55c241faf5d8ecd22121e0aeed72a674d27ce613cdfa63608070eafe6ccf178
Date: Thu, 08 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746741593
