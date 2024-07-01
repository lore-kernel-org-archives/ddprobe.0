Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422F013C908
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719850523; cv=none; b=L0CPYQLkq4Tvy6OtnQm+TPIa2ZzX50Bn/qTGU8YmyCf+rzvHA+rHL55LGw2p41oFTxrpSibm9e1NmuSVprF5VkymYvzS94xOc2JN3IgxO4TtYjgJq5PeG2tV1Pe4PPfF0PX1/5nvhPNdr9shyUY44l0YcX4kmHXo7ig5CQ42MSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719850523; c=relaxed/simple;
	bh=6+pwx4j0wWpnWAX7ugxqg92ad3/tL3fyu8GeH7SPkFo=;
	h=To:Subject:From:Message-Id:Date; b=m6o+nKoGKTDuo6aSLjJuOyKfgv+UAbyegLwnWlyHNNtCWCjiIzO2V/omvDuqurpYnUTTkmn3VLcprq+naXW4R21CSzm0FV5e9fBI2YMkscovwe/kxFAOwrSoz6fZc6z22eydW9pL4/8k/dMFF48s0Ji8D+9+WyQ4kgkaPR13PxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMn3fWi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMn3fWi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5ACDC32781
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719850522;
	bh=6+pwx4j0wWpnWAX7ugxqg92ad3/tL3fyu8GeH7SPkFo=;
	h=To:Subject:From:Date:From;
	b=sMn3fWi3uKrOTQa4euFQQP4ymuLEI2Uhb6SM5PgD/A9Tx2JYFP0vmK7NJhjSE1kuQ
	 +aUwqqTLbaAaIjstYTHaDjPNJN7eo1j1RTX3l3JC6ywjKalpASKRRIQLOqapmYzITC
	 W+O9RZRsbE88+9O9jZXXDIvUz9YjXCFFc3jXC/ekngm6DsQ3E/N18RrGPUMWPW3ygu
	 VaZxctt5sgrgoYi7KzTdUNCKTGgJ0NSFrISDKXZ6QEEit9HUoijqH0VlrERFbO7fDe
	 i22ZPbhDFjE5B92F2XEVhfN/7NzGo90yzsqThBbfnqGICoLCw3KLz1C+miiObid0FC
	 JuoALWivAGMdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC9E7C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985052282.5151.12449773361114070738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68408dfb9ea7b644a6051a182fa3ba201e58f17c3b942276075c305ab3ce2e2
Date: Mon, 01 Jul 2024 16:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719850522
