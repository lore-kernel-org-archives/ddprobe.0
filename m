Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8B81F099C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777110454; cv=none; b=rQvWfNLmULrN/wE9aITeyY0OxgsbcncW0pyaf3Edae9xFNYl8wC1CV5FfOEGOaR7bpvDKmzezAAvOaHqkAvzpqX9jgROKvxMdXfMHnRrcTclCmddhKAd+pFNkvjsjdXa+ZVa+TwIj9gTOnkoE3ubNU2+m2W4nZon9hjay8QWg2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777110454; c=relaxed/simple;
	bh=llFPMrVE70oC+5e2L+hVgnVGG27J58qnpz06DUX0MjQ=;
	h=To:Subject:From:Message-Id:Date; b=uZGRBRH1+tkoraiW/WBSB1x0Z0b5xrPTXG1bnIST4cR4CqdzhbI8tR5AQe+VuEJ+Yt1PHvjEFjSmE6Q94/eGEhcGFOfI+WVx/N2EfkOUHgCiGlevTcwki7+E5QvXc1dJ+TsLwcI6qxRs4LHCa0lnGa9fP9pQQJMr0bq3HP60vF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etu6naU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etu6naU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2108C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777110453;
	bh=llFPMrVE70oC+5e2L+hVgnVGG27J58qnpz06DUX0MjQ=;
	h=To:Subject:From:Date:From;
	b=etu6naU/xO+xuXkOBbt/SiZe+OiA7teoNLkuJHsEueM8bTJo6cKItyJHcYKiA9bZ9
	 pJXHukXxW+3Kd94kGLO36zHqyiy0uG1DC9Jy80lzXGAnPzFuhOvODyYIMX3asyM+ns
	 rsplKGktg7T5IibZjzwuJ2YTxMREiM5IG+pzPUsGuHsfEJi7ZOWskVjV+mvjW6J2Rx
	 o0bFIzwg0hqQrlboMhZwxAZtn/nUiNwHt3wPKMzYBqsm/hhl6bUI7V+7HxOvmLVVJN
	 RwBBEtwA9R9kFuIF+ObBGQKa/OUqaHCrt4mnP5LRYyQSTKVJ/A9b8PBaNbpfSMl1SQ
	 eNg1A9WAv1GMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB8FFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711045368.12178.6482175215725304093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9eacfd18d0d1640c8e90893763ddbc23f3205cd28fc250e09f9137e989c0cb1
Date: Sat, 25 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777110453
