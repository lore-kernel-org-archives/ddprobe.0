Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1784839B94B
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776119854; cv=none; b=JgazIZ7UYB0yx/ybRM6X2YKakrCB7mwQnu/w+2p1QxD1qafoXir9WjRWVbUddbBm2JF+saoq+9jJpph/cc04y/J4i6zs9rN6Gy+S0uAKVBoHMhnCwXLg5vz+X89sgm6dc8nk+URR+fnGNDQG5WIMgACUtlqDsFEKm9Dx5/HsXZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776119854; c=relaxed/simple;
	bh=0gRuQVzxcRloeRXhEfPo13LmE0X2QGDflbocBmSzKmU=;
	h=To:Subject:From:Message-Id:Date; b=QpzfEChbFHOE66ZA2gTIlIFYY7Z385C+P85HI85/x0ESxuD9DS8Go941UQVYMW5E2AtyLAl2AS+7DZG36zJ5H8dollp5Ume9CaLfa81IOHRo6pDBjHHW02qKZaH7ANkIwZmgDYsSM9RF6rDK+ZO4QPRPFbBZzqqcWWemoFRN9QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehhDHFwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehhDHFwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E77C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776119853;
	bh=0gRuQVzxcRloeRXhEfPo13LmE0X2QGDflbocBmSzKmU=;
	h=To:Subject:From:Date:From;
	b=ehhDHFwpkQFa1ms+LbcX2eDKI9JS+wwgLEhGDQISUKtJxiR8vX2yVGEwGUVwTvvzf
	 8RfZ6w0EX68CYUhgU6DM/gdeF2+JJS7jFY9CZWDXQ34oURXcNRk0zu7i75omkCKozX
	 ou6a7QjF5jC4hN2jAUZfx5vXTbEB+rIzd9Qms0wynQsVK9obknekMR3vxfAVrAzifO
	 K/UUF4M94H2XoOzLvP2hEw4eKTDfHFEiXnfCN3ICbGeRSEcJVHZeGyxdhPy5rkZTJo
	 T4In5CosySstuX7uCHMjg6SZUx9jCQTawoE0FyHacZIYvGbKp/Kal6exZ+/Y0o0btf
	 illBHn6HYHMPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF032F531CE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611985369.30243.2039500876074498769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8febd35c10a3c78a4bcccbb9e6be386918f82a0f677c61b64c0a96a157a425
Date: Mon, 13 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776119853
