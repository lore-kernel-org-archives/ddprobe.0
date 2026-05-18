Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7DB1A682B
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779071434; cv=none; b=FiRwRJUSBOEdFbOOB0sn7zcQf6c+xE7Fi6sBxYYWsXpDtMMs9aBi6rVhoBdvbZaIXr5JxaV+YFNgDucziul7kElP//GEVoLpmkrIGi1+vLCeS1oamea+Q1/ya9orpnJ6zqfJgYjRRvTNftk5gtAdWOMH6+Nz9ddph5CbPVD5lvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779071434; c=relaxed/simple;
	bh=mCGuNbqJmigkArH4PNPFlZviwnHWvmo8c5bMc8UNVqU=;
	h=To:Subject:From:Message-Id:Date; b=YPhpEUzuBDLWCrIc9Vl/dj3OMDMOAPOjyEvLUut/yu6LKcLuDfNPULQPqHWAwSEwVSkRJWNEY+7K4UTrlJC5SP0CkGgFF10SHCohIzYZK17Akct8lRRLc6ltGYksNCBNE7/QQD9YNHn6LgN0JWeKszQPoP+Urm2qBwBt0KVmKEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzQg7CT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzQg7CT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5D1C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779071433;
	bh=mCGuNbqJmigkArH4PNPFlZviwnHWvmo8c5bMc8UNVqU=;
	h=To:Subject:From:Date:From;
	b=lzQg7CT4X5KqOFzbLgxrf3TY0kRfwmx4mkW/KpzgRqFt1ulgefuxDOdDmXgccUTz/
	 /l13bMNzBITbLrqXa/2/gnHXpiitLL5EytxKGUy/XKOoFcbMvZ/pjzWZwjaA+MHT+F
	 9VIQeTFugrw32PAsrrHK0SndvjEczj2s1/SkGZRvjUCc3urmylosXNrlOLZR54Uq/u
	 36Nma63sRo2uaFBH+2T5JSGjKsD7w1+yz/wFPq2QyMoF4LpYN1mnnfJgkIuOGuU2z9
	 NnSpO1MTjxt0gPbIszEqyB3Hp8oZNCpDJe6KwgVSddz/+AW6R50hMtirkf86YzbaL8
	 X9sQTXhX3jTCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD89CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907143369.20159.3550883128523338025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712c8a4449d7b3d78933b0dad6c880bd59acd8d7dfd18ff1df27e5f187c48d25
Date: Mon, 18 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779071433
