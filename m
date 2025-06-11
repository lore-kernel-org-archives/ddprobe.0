Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380AD63CF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749601194; cv=none; b=Jz0xrrl80L2IxvwAEtLzq668Rt5gGtzY3AP633n4KJctNEISO5PjkS6Wj8lGCtF8/Lz2nLIxYECqt8YktnxWdMGYpsP5qgRFdgVgXE+7mQ47q9PHfqAOiD7QThIhNaBAe1hMfBit6h8sGWEeMV7HaFQqUUVQls59Asy/2t1MeTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749601194; c=relaxed/simple;
	bh=5qXiImc0Xh2S25oGcvLc1JMyhPhKQSSUo+cjrPnW2n0=;
	h=To:Subject:From:Message-Id:Date; b=inbSmU5R7xRmCnvY7bzhPeUYj/I1w1v2YZ34TXpXw23wvRinGqLrwzPd7pltbxw+HYs8foWbddpGX3fQ6pDb5y+p7W3mC1U9AGEU88ampvPLWfy2rUyB0JO3WhM3CRJXebqATuPuxvy45IZ/DQdToALU5ATt0ViVhbiSxBuKH4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBa8p6AX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBa8p6AX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC0EC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749601193;
	bh=5qXiImc0Xh2S25oGcvLc1JMyhPhKQSSUo+cjrPnW2n0=;
	h=To:Subject:From:Date:From;
	b=rBa8p6AXq/oNNPokyk5j5s+3uxeJHZmjn5Itz6LZQnThjROqEu/Vu8aUUZgOTqLF2
	 xTe1NICPrKaqSOBD7MuSfuumYrv+VgElK1dlmyq0HOfY3/MwpxRHxr9A9qzKZRM0NL
	 S7Vu8ItPuu/ZkldojEWAlJi0xGz8H/fY1yUfaHVUxx/Ypc2N/jtMEw3PIWYIT418/3
	 FbL7CXEKQBEZbnPC/9W+Awy94G5svjlb6EaKecuUSarLh5tNhxNpljwg9dUjZNfRUz
	 fSfPiF0hGtE0YMfEMKzuk/MznAGT0w/vGwdPjel0mPY2+pYtyiI5m9NhUTH3q6xQQV
	 SOi9XHAzMNBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B61C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960119360.21184.9367903464976446389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f87fa5cf075877c3ac43c5b2875808a85d76f8dd3cf44b95794c1c248dae265
Date: Wed, 11 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749601193
