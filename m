Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409051DE3C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744887594; cv=none; b=L1bbErIAkGZmnEh28W9eQh4pxddKoyaYgy58wrNtLkCXUup6n6/j8u0VbfuuYd+K9heWDJB2U/1bdSA2x/KZA+amhxhs4gOZ0hjMijd/kwEO+RjUj4lIAFP81lqzRWsWvPIPNz3R8GSfkIWwalgGcVJaMADHAu0Bl5WSPrsKwzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744887594; c=relaxed/simple;
	bh=D4BCx5pUmO6wXH6hwl+YblkTAsbni17AP/u3skqk6Yc=;
	h=To:Subject:From:Message-Id:Date; b=snA2orn2pb777Y+n131QNg0dI7IU9+ifTXNb0bXZcBD3clqPbAwErpIagY0peSqY4abWStexzc2vvHl4qk/Dc5pdU1XNaySeFGQ+rWaUIgSl18MnlJjCDh0GpXtfsmf9wOaetkbPNskLOEtCMa2IV5z9gJ031vluOtN7hsZXr8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isCabKcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isCabKcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4796C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744887593;
	bh=D4BCx5pUmO6wXH6hwl+YblkTAsbni17AP/u3skqk6Yc=;
	h=To:Subject:From:Date:From;
	b=isCabKcniTgaADPuA2xlKjVgRi6+oeqrO7YWq7RIHEWuqlOHInis9ryuf1BihWTKr
	 3Tr20wMcAEzVy0jW9oXrL+o1dv/SyhiihGvttG5eLFCOd0z36lZJFPEILea9wb2lT6
	 rToWwZZpB3TzjJm6G6mLj7rXzRy0l/jbBbfCvwHXLv0YSEkquNkkrDKSDwA8Q7fAuY
	 PWBzHJeXelQ32kxcwcQCgNSx3f0XPqARosOKraFbH4bL05cS2wdZZQx/suCY5W9yOM
	 1XHh+dDmohXjDpsNd8Vt3x13p9cPeb/EqJp20NG+aOoWLDcS7Mokz1oeVNnHLr3R9/
	 b3m+Q7LiiFtkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A226BC369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488759365.13286.1407903755248511673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac26a8084101106fe008ee6698f3504725caa86afab17a1f7de5f3af421a972
Date: Thu, 17 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744887593
