Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B473DD861
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783675114; cv=none; b=BbK4WargYN8mNeeYxehrCBLExyoq2JWigFs8yIYpThRNCqXux8iTXPiHjB7yYn8tqdvUOkwNcwLlSHkiwNecdWpy+jzPo5j1JSM2n/87OLj9nG2pPcvy5+gX887Yfd+ep2K7d8HWyxIn05a8KKCwxR29Niv/N3QxuicRntBsXHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783675114; c=relaxed/simple;
	bh=m2am4HibsrGcbch5ae0Z7JiuLk6ryIAgN4tu1yvmeS0=;
	h=To:Subject:From:Message-Id:Date; b=plI/ukk9N5/0+KbVlEebO0M1c3A5jwhTri5cSlxQJmZBDAixU1U5KIxX5r286u4viJSJhC18mqp1aTwu4Q0hbFvg7U6fUvkdEPWkOz3UghHhnM+A6ecyyYMxFKQ6tVgHg4/VzO3Oam763lQTQi97ivGiMvmv3fSHslTJS2fi4ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HluqnEo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HluqnEo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA581C2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783675113;
	bh=m2am4HibsrGcbch5ae0Z7JiuLk6ryIAgN4tu1yvmeS0=;
	h=To:Subject:From:Date:From;
	b=HluqnEo3WdqkIgFXs0bJHVZNswXNbIpKrCd4JTZPDNoKXEdUxRn+D5x8m6wbAgx2P
	 4TKa8pdDA3lNt1k3AVgA42X9YwHQVhmy6QJxixyUDrMDPUFczMASkl4uneJE3Rcwym
	 ft9bPo6na6zIkcM4yg7HVuTjCa8y7uwujY6GGBHPnA2/W9fGqes1+LcF3RoBvx/iQb
	 AD4fLOSOuVz6tUqmrSOEm7kniuuVTgI2njB4/D4TF5fan+wliO3TbPKCwx5seYa4ai
	 b17oyGmnP94nJPq2hEiwHZSD7zJKlar738rVR5brR/M4AX0Csk8WvPxJ68RD05Q1j+
	 o/kf37L9kU7Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81BAC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367511368.17803.295711137464756983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6edbd01d48b9fd8092d679ce885980659d49c658669b8e8de16646072a1e729
Date: Fri, 10 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783675113
