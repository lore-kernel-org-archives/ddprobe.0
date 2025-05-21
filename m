Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4457F12E5B
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747813194; cv=none; b=Zo9gzLF7aan6ovrd/Q9OMZ9ETtBXRkRRHrLuBiwT+URm7bbcgIyIQcM+w7QUbbxIipP6mvf3/hSqKbtyWsON0h4Uq7nBCDb3QBEvAvNwp00vz6HrM0qwHLiQg97YeEIrm2D7edBIwokKGx6ZbCqJi0BmO2eeDGXjwjqOzhk9S8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747813194; c=relaxed/simple;
	bh=oM1PgWEDA964VSyUmvJ5pfVvR6QAkIaXZdFlhYjMVwE=;
	h=To:Subject:From:Message-Id:Date; b=HbnFiwlfEo9rHXm6AoyT8YCj7D3UVLDPvJPBUZDHw712Yz1kMoi4fV2wHhZpOABsSCY0euGlBRP+o5xKWOUaRIb+XaBHanTJr4DOfNqhypSx2txjY4oZu0/8RXEFvXc/C2TMyOQJlXHm3JKoDLTRWnkmVX9+4FAFXGNyLrNm5C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRXX/meX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRXX/meX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF92C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747813193;
	bh=oM1PgWEDA964VSyUmvJ5pfVvR6QAkIaXZdFlhYjMVwE=;
	h=To:Subject:From:Date:From;
	b=FRXX/meX47s0uhGpYIObI99z/zoLNGNykxrblzW0uERHE0R8Dn4GR8O0jWutmYFc3
	 YNFDgNhnzpwfvP91kFfYt7t1kHiEFu92a6W75YZy/zeUh2a/Eswve3XarBqzKN+QsG
	 Ezu2FKLe/EHVrkKPJAQUsKDxvwR3oMINkNWqJMyguqCxghj5mYVHVPyuDsuhHcqSpN
	 RO8jPJJpkrJfIxO9sIfze4OYt3HOmR3PmX+YuTvMMbmjJjfdmWwz9jgFNxNMNUkbAr
	 2MgDS0/kaRS2U5JrlneJYCryo+QdwvV/CvzpcYMy6griG/h3YPcV+Iu7712r8PLzQK
	 JwHM51cpqitew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF7C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781319357.8126.8914938564153845963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc1cf339c76ef9e435f208b6ee6da67641a44fbc73ddf7caa3db50d3637de96
Date: Wed, 21 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747813193
