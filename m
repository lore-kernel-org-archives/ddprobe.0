Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D99939A7E5
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775775454; cv=none; b=hG/dcXT41JBl9p2SFAMT+PxopAiSpzrP5yMIrULduT9CXDcS99asUwI0XJ3wFKtq5lHaFExeJFWT0nTMTSzp+IEZ+S4FM4nuGRAiUHXV/D83ZHHJhDkybypwwRwh1fr3L00zeZObXh8412zuMJtSURyptm9OjueX9wU6x88pT60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775775454; c=relaxed/simple;
	bh=bpJcXsgWNv9g1INuGkpiWilJomSbOXZzgqnGvAlTNK4=;
	h=To:Subject:From:Message-Id:Date; b=EfmuNTiPSuyzk8oKg+gJJvBh8tQZNcAomhbxhaNjtQW+aFWnbqr2fHp5b/eJ6KGQ1hJDU8uRUOdw3w7Wm6ZfoM3CMglkVbrOve6KFb6QLtDTQgDnlgbk/D/Fo1EfJ3Xoc6KEBt6fTUXV7La8EeZ1taJuJ4UO9KaR/dL84R4eVqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMru8mur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMru8mur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D1CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775775453;
	bh=bpJcXsgWNv9g1INuGkpiWilJomSbOXZzgqnGvAlTNK4=;
	h=To:Subject:From:Date:From;
	b=lMru8murXesHGDbKBvajW1A/BqOHlMgZGAbTaky+xkVhu3JSu1M4qSaYi5XviSO29
	 7Iz1BEGLtWKzhGXqHZU6VHMAhGiSHSksnam0Im2OCArM/CHZlTYfGtWg+iGiA/kO3u
	 knRyeMVW4pg9AkVfObonNi3j+q6SMJnoBOf5tJnzFCEh+s/Xn8yNMkUm1scChZkLrS
	 hNwvGGmYbJNj7aPXyCojbe8bQBplGmqVxdKWkAEQBRFCnr7YxyJYT0q/TuUua/DKnK
	 vdamdCGeswbhoNoYBpkZm1h9/LzznvXQvVsH497Qh1OOqU6RG5lhXAnUIM/1Zwa4nq
	 mOR/hcx4tgLSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98E3F364D1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577545368.10882.5285636987132657648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4afb6331bfd1d7074b84b13b6184d118a944b62de74e26bc736b8a3e301da1d
Date: Thu, 09 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775775453
