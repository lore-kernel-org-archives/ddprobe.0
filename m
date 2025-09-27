Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E3A5FDA7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758987594; cv=none; b=XGUQXpn2l1AnkTX3Ag971V/JYSUDuXeAS/bqFe8EJlso3/gFWQX1Ci/+w79LDCn4Jfrqe0K7i9vkmYeo287vwctLE3qfRcb3hEhxACXST88O42oRpBr0FtwUVAdGwvybYdMf32/fWGxdbkVAwEVULIDgaGr69DVfNlOzeVdry4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758987594; c=relaxed/simple;
	bh=TVzKDvyXIHsge2eQ5sVxY5BS407iqhLF0FT/umpf45Y=;
	h=To:Subject:From:Message-Id:Date; b=dmipRbEdt6nJOSPBM2ZsYyMUfxZkEsTFl4Gc/YXlIfavLpmWu9vhK/MDx7msjtZ/k/igZRSjISeypyrCrmJgbWtjDaKB7kUdPbjAtFQ4sJErAm8oOl8Tr1ryIaBfXGHdzmFRRIA1keT9JnBVs9Ir35vvy3YaA1yJlNV7rDCmd1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ezfgmbol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ezfgmbol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65D9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758987593;
	bh=TVzKDvyXIHsge2eQ5sVxY5BS407iqhLF0FT/umpf45Y=;
	h=To:Subject:From:Date:From;
	b=EzfgmbolYSRmebeAVJSFALNxWHXfgipz0TkFOP2DodBqryzOJ46JRjdhseQAPjiAs
	 PoSXnnuOg9YXASG2GBbeIkWDxPjOO+1kXiZuuqQJ3TjjMihaNWFceQRUVRoYhv02rc
	 4ZA4d2uhSzGx6D90yzPQgCQ7duxYaEWV7Sc1yiGzfAt4uPBOlCyE+gempn0aGuFY7i
	 aJN8gUmnOaVfoUP4wIFYFXUXOkWmtsMapZ1PfbC3+NJA8wYyhrV+taHr+bFE7chQi4
	 aKZRUP950uNLq/8YlZkMu17EySuksAtiwgxmXN+kpLJz+L4PCJAK8TzwDaPygCTMKF
	 v1xKC4fcIjJRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97347CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898759358.21254.15892541304811133270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a597bc40dc4e61d4e8f083392b4081dc84ca23aee6c7af1636b0f460ef9cfe9d
Date: Sat, 27 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758987593
