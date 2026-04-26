Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39060171AF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777219654; cv=none; b=FyuCV1W9msnTbMC1y/86ad+1BFO2AiEb5n1KlNAVNZDSFOzy2moMBf0IHwVMsyGvT3I876yOHbz1kxB8UpOe551t9EtfnDrsyskMGduM0vWWANw/kq+x0FbyuC0wE1zupLJ+EHCBM317TlICD5NL3didk/raAQK2qrfGwT6nF4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777219654; c=relaxed/simple;
	bh=gR5up9EL/qaei5QhlDeu2JP3E0vwBc/CzImuA+Npl88=;
	h=To:Subject:From:Message-Id:Date; b=ZFzXDIskuaVySZVWA9ntqtfARsGN1nzQzjTINXvO2pqOXShP8LYhmbBZeHxUc1O0g6Wmc4vpoDVZ7TzWwwly9ekDiO9WCpmsFt5S2NbXvQ0fTSmJz4+dtNqPq+6H76Sr+Jl9F1KIXKpXF5G5RhDjEBd5jcaAGMznTJnyrt7zsA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maKW0vCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maKW0vCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A05C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777219653;
	bh=gR5up9EL/qaei5QhlDeu2JP3E0vwBc/CzImuA+Npl88=;
	h=To:Subject:From:Date:From;
	b=maKW0vCOZpTjAI646HM97gas9TKet9gV7dWQzJ8iUgKRQRWzGoF4VAY8K/m6gsG2L
	 i3cxywNvUi1ghWew/gBey5EMKX5mGBkGk8uxlmsP7JAIyVrmhXwPF3RERN2Ch28X/b
	 VcuGP4RZVCmvS7tBFBTwHxJPDr7DzO2MUdQJYs8DqYStR9n6urR7/mjO8VotdQTOZV
	 7t2zHzsSFFTkJsdK9Q1fd/TlMrcmUdM+hfN/EYutNgdX5wtAZ961xNv+ZItY9mZwql
	 SjXqIWGLtogFXqggDbwfg4oB9/fHKZ3mjg52kP6IloeylvRylIk3LN8nXFERMD05BH
	 qxuZtz6AUXO4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF51FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721965368.6977.6787928161919499972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44926fffe4efed5693ca426fe3e139605169100866750b79e5f543526f7244d1
Date: Sun, 26 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777219653
