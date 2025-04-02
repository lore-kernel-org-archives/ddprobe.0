Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434B91D61A3
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743626994; cv=none; b=rKRobPKgwwCS9gJhkXQojNH6DFwRdBaV+gzN/C96ImfhIYGGjmJ7Qqs8u0tPRfYJotjPJLxzBgKAHGDab/y4DcQ4UZhXqOhaP6/M8Jwc4pdViZkfrZJWEHWvBnZ3ZxndR8yDoUBZ6NwqWnLIDrH0ebUjIuJYRF+raTiGUXR0Cwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743626994; c=relaxed/simple;
	bh=94I4gsmvtRulyQzXoDLO83Ew5TWXxzkf7WvzKHC/C9g=;
	h=To:Subject:From:Message-Id:Date; b=CkNIFMD7UvakuX1v+vrmlFFflmeJ4634YpGlgKWn/AlhMdpn/586K4UAjpFMbHMcGsMD0pAzFupAWPxyFSv8Y50Wwq2TyfhLJfeNFeTJwSmydgWzmyKKOeh+LU1t6jxW3yd/VWFisFnZIxOeVyYQYn5wsX2+GnzVlF1TEmiaVqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R99cTeYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R99cTeYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4B9C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743626993;
	bh=94I4gsmvtRulyQzXoDLO83Ew5TWXxzkf7WvzKHC/C9g=;
	h=To:Subject:From:Date:From;
	b=R99cTeYbTZIy2AeJv84oY6+LD4v1jhsSOl6KshkqmklWRIteoQ2Ab4n+Z/4Z1r32I
	 2rcFgl4YBv9d+ATpo5CYisuQgJ6yZfu8AmLPXVi4CIkFvSJ6c6etZBCAKVdS8wCBl+
	 bWUgsm8ixfsjdnzYum/gcwquVkoMiDkIFCZYrcgJalEcPRaFvMaMH7BqOdzOnm++rn
	 TOoQzunmz47xlKqftBDtAJl6rJH9FHeZXGKRd7lhxAmJKYf6mKA/VuU1pMNm5H5Xr6
	 yjqXh2hrNcAh+JyGcZx5jT8lBcWbMF5ee3upM160ERt+QnAHn3Tpmp7yZ/tbkfT2zL
	 4te7dOc9TjPqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9FDC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362699362.5431.11782995633498737444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c355e24c7d5afd2ee76fb503aef5dbbe490672579168db598e508920c01657
Date: Wed, 02 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743626993
