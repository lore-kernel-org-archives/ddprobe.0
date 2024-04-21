Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1F5101DE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 11:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713698423; cv=none; b=BqtBIKYiCZcyF6lCXPKrthZjs+JbFpYR7hWRrQe8Leqqj6BC2WerTUW5orc6LMyyjrmLWvxR4cXA7aLHZoKESzg/wddm9OVLJJmbvRYt8+dKlkuAkL+UHRgBd0b96mwOHzTxyha4e+ZHLWJ8yWQokMbKY/WAPL91KJ0IFsEBzn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713698423; c=relaxed/simple;
	bh=yKO4zgpNKCQ/qvjpn+I+DDA5s0VRRdCeu012oTevoqM=;
	h=To:Subject:From:Message-Id:Date; b=O5wrPMYlGeO6e2H1mNvUp2h9kkWjbSXJ04XMHbL0CuwtN2Mvz2DmEo0aHOBx2K1OCS36ZP12Io5cXeeh9ixDQjGfMq+d51pBNaqYGNR57ycRmq1M06TIXM27+y5sqQ4nshKX0wMDBI3ebUydVkuePiv5FFYzc4Lt9wep7wkV69I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upHFP5Od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upHFP5Od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BC4C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 11:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713698422;
	bh=yKO4zgpNKCQ/qvjpn+I+DDA5s0VRRdCeu012oTevoqM=;
	h=To:Subject:From:Date:From;
	b=upHFP5Od/SqNkC4zbOhnPljuwOIZO4uNytOhiYw6u4BsV6IoQSLGy+pyffBeSzA+h
	 8Es+zLNq2w2Y9fepPReui6uYLXnRpJJkIY3KN9FWEjz/fcwKC6PsJwB4f65xA4neZs
	 LG63jgh/W9Q0fbNUMf9S+JRHSh06YFncZIhKmRT4U8ubk078opx+lr/1/06/niXT2Y
	 yHrsw2en5Ngqw/1NJtzIt9j19xWTEsGjPgufvnUUATG8lKdh51c/b6m9xLNGYKVKg8
	 JB7GrI7xQSnxQBJWG1DuSLizKY/xWSK5t1ee6rJUHZG20PDSMT2prMyGYQXzBfqs4/
	 oJcZGtkiQ9F/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7FFC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 11:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369842276.19906.5484580067576464701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be9351063331d1a55290aa724f0ba80c51c2a3e3192208a036ece7b845ba81d
Date: Sun, 21 Apr 2024 11:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713698422
