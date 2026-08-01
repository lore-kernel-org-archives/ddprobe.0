Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5316037BE75
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785594634; cv=none; b=M9mNJB65L2qoVTW6HMmtTUhq+L0WZzWaLNC++8EXLvDYB18CH86E5s4uZenel4GSc5DhVTBZWWYibJ0M3A0u2SFhSQ4VlF5mUPOUMj6+btaLY+AHlKn6g2SvdQakb+X7RPcO8hIERKP6X8TlvXJhK2V77uMgAssqkeStBnvrIiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785594634; c=relaxed/simple;
	bh=9U4L9d354/SUc0DPsAUwoyyG9H2094Q9gV14Vnyo4To=;
	h=To:Subject:From:Message-Id:Date; b=Ptea5+JiAKoqiRwZm0/gI1fsF+5k6mzGFfqcJM/RXQVM+pcmNPKJlsoTfKFUuq8htMm6Gp7lo1ikTeAqX7vzCueg8REYW5RmW08dBsMT4baKN/BJIxMqKipEehVw1IuP3saCHmmir8c5kzeUF3tpHc3WW4ZC4rlVgLMWl/bRvgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D16IFFLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D16IFFLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3139C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785594633;
	bh=9U4L9d354/SUc0DPsAUwoyyG9H2094Q9gV14Vnyo4To=;
	h=To:Subject:From:Date:From;
	b=D16IFFLzhFyfdpr/sgpWk9ZvKdsdKjY12xkuH1m9+E8IzEt6I94mrbBSbOSO5DeFu
	 5pm+kJgRYNdgfrMA6zNdPiWoIMTj0mAU4O9O9wkg3Tx9mMUkmfgClXY+eG4PnkDCbp
	 +CpdwkxUjqmhHO8gl5aLM9Gk9MeDtMcHMggOTdz6oumT+q1YhSLFG+WbLdvbTkeCAS
	 218TF0gjHdNpVucpilm6kHVrx61a2FSeye48J/ntN7uCNNEcp5MgdEqNhqFr+wgfGp
	 QODyaXIVJ6oMaIvjvGfybeoXyh/A70MRSH5AlAoIn0u/eFtbLSbCGq5kjMCic51xGr
	 xoOzxhIltyG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF808C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559463368.21506.2992485091886204547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6484c6983605ff1bc226b38f59c2ad4fb06514c5669bd700bec884a7baf8c2
Date: Sat, 01 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785594633
