Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2962E370F
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754988594; cv=none; b=PkkjM4LYp8hNiWoCk6ouOYnKKmvQMiESPYbaSsSeVjYSNOD2fvuVqXhUtgQ1O68dNvbjRuImo6D1BE7A4D+yherKSz6Z09+yJdt8Bf0m9N7hqCWRXrYKIYv9kSBFyFNwPf3sVpeO/Kyv/NCmk2qpt/kuULTnW6pvcnX2+5k/JyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754988594; c=relaxed/simple;
	bh=juFAWqPNzX2qOJGC6ZMlz5q4TNpU4nk0J69vyWhIrpM=;
	h=To:Subject:From:Message-Id:Date; b=fH3AZ0nwawVWZCA3UpG8bZt4/7YYSNcUqjdwoe02S8fg0m016T26fvV86r068+xNIHZz/3v52j2geMQUFzH/TJz8bJxI1ySGmLiFQS6wYf2gCD6/IEF8xer5Sz+2KfxemNKzpCEXv/sRGkPQnMpIEGZsFO195pClaEArxZ/cHIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISvMG+uX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISvMG+uX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A4BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754988593;
	bh=juFAWqPNzX2qOJGC6ZMlz5q4TNpU4nk0J69vyWhIrpM=;
	h=To:Subject:From:Date:From;
	b=ISvMG+uXEOxDQJwQSi1nonY8GKZ2npd3eVps/OyYmsEVj+78XtGmxJctGLexoTEjF
	 wStzFurzwA1b7MBLb2UKLBhF4VBRz8jNWr6ucvsGVqIcV6C2+TvNUYYwb2P+Tc3DFO
	 MBw6w8CaC4HTd0UVQ+nlVOJzIzKeJl2JDHP0mjZMONfZ+BKQg4YgO0FYgPG0QgOJVz
	 XD4ROmv1TCxRybAFnhpYMdDA81CTwYPXt63XzMLy890BeJarluKlo0W4GBxdlx8Rno
	 XuNVldGGgM4MZOqN9YHHkHlUuAYhQ0+5hYYL1lETAQa7CCmra6E2FIWzo9rcIdEUGh
	 /aImQaRG3Lu+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E99CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498859357.28030.15436482072333040393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b603d0af2bd724b8d3994b12f65111a19f3ddd950bf39ae902f4ca78bf6ae579
Date: Tue, 12 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754988593
