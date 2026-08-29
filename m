Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B071D54FA
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787968234; cv=none; b=MlyWk7uf8yYD50Sh6VzcaJrFaHEK6eVczFpM0JQkxaGnIowh24uYQLqLjwiNoV3nYNl2ylBSB+CocvT2mRBeczJiG0PgJjE/jWS3HmF7Mx6zBhhqdiRN0fidCxAaoqnRSGPTvaK6zmUTExx8La77tZ9BM8CzZxrIsEFViqkV6pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787968234; c=relaxed/simple;
	bh=qvX52ugSXl0Gt8wM2FKO7S2Y14TKyDZLHPNWsqJQv0A=;
	h=To:Subject:From:Message-Id:Date; b=G9uz+l62FkLA2UgshotQINw+GlACB6XFKDWttcBFgtMWGXT9tXFaO5YRmY8p5DXWNhAUCZWS+1lYhKfzGeRh6W5gIlsypV4CnlvZmVlAAar/+En0cDIfTr8p+zPfhozuAyx7Xw8AjBOSaLyg465lNNbrRhNC4AMHtwks4uS6tRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tftlLheK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tftlLheK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CBFC19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787968233;
	bh=qvX52ugSXl0Gt8wM2FKO7S2Y14TKyDZLHPNWsqJQv0A=;
	h=To:Subject:From:Date:From;
	b=tftlLheK/TmScXSx6cwuhC8IAeTxAx5r8vLL+1GsADHEVmRQJPisTigrJnr1BUhyu
	 hRH48lLH/uog4Ho5QsjCFnXR1rXJcZktTKCtd9RDk7+wKmA5mKgs+tKAlVU/0gb8My
	 K1dZATPBP1quZx0lTJTed7/s0JyoN6s0veRympIGYXwP6RnKTJZqk11hHarHeHy0Xq
	 2xEJT3NlxydNugqHpnL13dcyrRycme7RxhMwzAsZnfSRr/F8DDlZEqvsZXOsrszRbt
	 qGQrrYm3zg/VpO5sjaVZ4R+Lbbsx96cZr2uMmgOnxU8dHJden1LGvLqubfojxqWTe+
	 NVRYCwYkX/KFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B243AC61DB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796823369.26054.4814641618222066478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cbb94cb1d90571f106d4312217fd3a33dfdc8c44919626651ca27822301449e
Date: Sat, 29 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787968233
