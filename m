Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC361CAAE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715556743; cv=none; b=hU7y1ssXZhQVt0fdxve9FGBpBPmmm9qjdtI/3Q2rR3RslemQVL4YlC5C28c7ozP5TuZliowg/LxzaPrbbUIXNr7XrqyUDHlOMkZjz1A84gTyT1AxrUjrm54exNe0bremmfF3BjYTCqMU8jml8s9XCm69XOLs11+a/CNivyWEW+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715556743; c=relaxed/simple;
	bh=BVZAl03Kodl6wgOOV85TOgGWCGIPoEzu6wsLi/ig/6I=;
	h=To:Subject:From:Message-Id:Date; b=S8BqAHVRbe458EqJc//BXlIn4QAoCpKyKuVvJjIYAINlEepNUHF2JUH9bISu+OtdlEP9HJ4k1QJsd1z0WP9gzub54MBlWBp9Q9GCmn+ivPVslDftBGvo2J1qCvPInw2+wmyofzA+f5mDS4xCW8vT+UZ+8c59Lj4or8+U864xvLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OB9e4Khd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OB9e4Khd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80B8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715556742;
	bh=BVZAl03Kodl6wgOOV85TOgGWCGIPoEzu6wsLi/ig/6I=;
	h=To:Subject:From:Date:From;
	b=OB9e4KhdyKnnCwrhyhAnrfMoFgBy0my67Ixvr4eRmQLgd2IaVPJ5h/Dthof0LQE7n
	 f3k1HnhSHlezKSTLOyxYV/cOVSS87O7vM2oBf2BB+CI5mSIZ9Tb7Za4cMKxCAG17os
	 meLjebCYgOFyYu9r7RyAcsHmV30H+ohpnvWnW45FYzJGC9Agr+upogWfrJT8cLp72O
	 BbCbz9QhMsqvnKpeLbg7q4n+4buhS5vL6DlMkue41q9JHZTV0XZFZPKetVEoErP0jN
	 0Ibbhw2ckJVQvOxwu443jt7l8+ud+I64pDaR+WtKybJ8drdSiSlysFSx1hud3Fezkl
	 7N003jLwCmdqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2ABEC25B74
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171555674278.4809.2085382696627695710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429180626ebddf184b6303e7d888e8b9520576fa75e311459a09ae1e9a60d003
Date: Sun, 12 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715556742
