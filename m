Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4963AB26D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784476114; cv=none; b=nDSCaZ1gYj8Ysz653xLJoiIf7Wy4z7Ukd0dzrxnHB8wLH9sTXMnkI7lmNtZxJw7hb4fgtnnhqk048Amk3xRIYIc4JX17UeWiNv4lFkq9kVDpeKDfdscfa9rBenN1pPIcWtYz+X4SjG4mvCbHp2Sr+xZ3RKKSw8nxmZXHxE0DFxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784476114; c=relaxed/simple;
	bh=7+36yIT2ro5EFgCAW91UZcMzuimddYFsY9iZ+50BpKs=;
	h=To:Subject:From:Message-Id:Date; b=YlQvgfh2jWqrpPDFd6AWLlfm17FV/yBli0kV5F+ChmTvRHxqlLYV9B9AfF/xp7HSUdAa9tUbBExRuFXeh1lIaGw9uFkQnZ1gbXgjjK1F3VTXmO514ytVq9osuo/6jBn71HosU1WymQooQiSB2Ro9AxVaziWwIezVe+GxA3+vwA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcJi2WYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcJi2WYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1165C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784476113;
	bh=7+36yIT2ro5EFgCAW91UZcMzuimddYFsY9iZ+50BpKs=;
	h=To:Subject:From:Date:From;
	b=EcJi2WYWSoItdhrSmlFs3epjS7L+/q6Hsg/ud7GxvGMWA9oHAjIqTjLYZsvsWbyX2
	 3u71rObu4X+kqxbb3CV+mCmnJjZj9Iub76fJ1Y5Dz6qJkAzVjxmzPrTkAIKZy65DFe
	 X84a5r4f+aTs4bZV/uaIhI849q2USlbcIOj91w3LywnTBDSSe1pU64pxCu6R/fzdLv
	 P3iHGosgfirDuzP2jVOCXoBMYTE0TY//EZ3HHY17q6P/5MMgl+301pMwlB2cb+aRHk
	 PF+HuQR6hqB44HEw5qga804RnUvduq9t99OgIRCxIWM2A21gucqqKQtiOzpuofDwRX
	 aNR1V9P17HP/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE63BC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447611368.8784.17494148218424084457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789e07f6e2e37d7df2c6979fabb94c2ef25135322df8b2067fc71165e888eea6
Date: Sun, 19 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784476113
