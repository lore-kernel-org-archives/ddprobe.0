Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C42EEAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727411754; cv=none; b=keU3m2lowf8RTBiz7LJCmAull0jJsSfWuKdWYW2+R+Z8Tv3R2iQPZkgjPYo44oYUNN0DhfRt5As7TlxfxmbXKa9x8AExPspSzot9723avswbOyg60j4pbKUSY2M+ckMlNBZnpOp34KE/tIt/2pD96OYBhlszKbDbfg1904hiHb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727411754; c=relaxed/simple;
	bh=ld3rIlvg1vbyDddXRm7/1rip0vCGXGXaYixxJGj0klo=;
	h=To:Subject:From:Message-Id:Date; b=ana2EWAzHtM7k3L0wwsHGs8qmCYltDEfyIb+ugiEstkmjfG6lsFVHD9wLSbJtgNT3p6t3Uz9ti6+f/npEjNDgmxeM3vH4K/0qy1jb2XGwJbD8DZ4oMJmjDWYn1xVo+9xLo4FbJDi7EuGQI9GrrCN3MVepULQ6Lh99hWQRC4I9u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8JZw+Z4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8JZw+Z4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88FEC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727411753;
	bh=ld3rIlvg1vbyDddXRm7/1rip0vCGXGXaYixxJGj0klo=;
	h=To:Subject:From:Date:From;
	b=A8JZw+Z4XazsaOHkDUyrCTnIMuMWrp9/lfQ8xf4a15YYylW+eIOKiidMZhpNTjST7
	 GAWBJJQ4No21RJeAKEAcGhKX9gPJ98dxqLwNYMzpCd0XIAjZfEkv2MxiJqzYes5wyv
	 2SrIdQrKNRu0PCcG/nutrpR7KBYMOe5QhJQo9OuiUkXglkms6p2Z7qOGSXwu82dSnh
	 0sDDvDOUo0oNYk2GgfWu9fzIbTYitLgcTXFffRZBwYQMws9uQhE30sN7o+M252hfrP
	 Y1yCB0WBgC2xQPsTO7b1FJRq/XYlSjYLGXZYQtzdSn0F3ZyEJ6TPHQgLuJv1VZ7h0W
	 e2ThU0qkniSMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF0ACEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741175363.28568.17412890746839305375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57aeb3ffa390470bd5998e1e7ab3752925082bc358227b0c1bb3c76d74c56f98
Date: Fri, 27 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727411753
