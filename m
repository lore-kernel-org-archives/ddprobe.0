Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4441FB672
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783276114; cv=none; b=MdauO51MEHuvPGr7O5JAqDlvut5ySC87bfxFxqrYvJWaHyfnsnPGAfgA08qfHHpL4r3ripkA3Ha4PORcvKTJ9psBnTfRfZn7d7+CgJoe4smk6KNWhM6tFthlzWmcW8k0hjiC+F78SLFQE0/poG11DEKNBESTYz45daHIJN1vk0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783276114; c=relaxed/simple;
	bh=tUFUBS9n/3x5JE8iClv3FUqaLgsNjnkZuOd7qZ/0N4Y=;
	h=To:Subject:From:Message-Id:Date; b=qTl2h6L5NKI7J3GxDaUwoZbai3NtUP19NBt/szPk80wmmtWXRdo2LHXbIGw68+2SsgCbb6Ye4jzRunU/CE/Zscp/BpPfvCXCLyVIsnPWUiICS1izwWAg2SSu5zYjr8rekvsSe55AsYvNSfQUOGp8ssXVw23Zk/uropqYSzSrZzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smMeaEEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smMeaEEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F6AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783276113;
	bh=tUFUBS9n/3x5JE8iClv3FUqaLgsNjnkZuOd7qZ/0N4Y=;
	h=To:Subject:From:Date:From;
	b=smMeaEEkTU0FH6oOGs6j7bw66uQODicQoON1rnREfIiaDS7ZLTm9/X+KriPUeM8Rb
	 UHX/hRT0yNHU987JzvhwaXIt8XHWJ0WVNjPXda2pVBmR958QchsCC5ufe/WpetSeBt
	 SLOFQO0u48BPpsEFw+m2lpKt3lSQT9zJIfAc6RKqOwx0h9NbhQcIWT93b5jGLXpPLT
	 Hu0TEJ3LKN4z7PujsDYiZTEs1pPPi907X239xVBIH+AEXHgL1mnEv8yGSsxQCIwSY/
	 3QG+ZHMvoNGmjb9f3aQWjAflHqZdpt6emPSe/Ae2JSfCBPgXRw2rdxIZ15mYl315ox
	 7XJBU3l9ncSJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88A7C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327611368.25641.16021293504970671746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e63984c8813015606c7d94960b4e0cd8b3d98c8ba2b954c69f639e61abfb069
Date: Sun, 05 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783276113
