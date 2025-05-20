Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36571276030
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747741194; cv=none; b=YLlnzA4OqnFnuEkFy8HDAFp6A8Nqo7jki2RKQTgXovqdAZrNWXszYG4DznO3mbh9jeJmgOFP3dA+3bP/sPkr8S1Vg+XVFOMOsyzsGl7dLDN0z5M6ZlNpEBrP4auk204z4n5dleup7u1bKH5eMIz1DlC1cbMhUybLZrV5X07lXOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747741194; c=relaxed/simple;
	bh=cQKuD5DCq07lCBa/5Rd/bP8mRBpXEpv1Sk0TTVj10b0=;
	h=To:Subject:From:Message-Id:Date; b=JXF0C5yz8O7UQAKnw0zggMihVVEGvBa+YyhCuVhKg5Y+4OFoA9b3OtAyaWewiz6jdUrX4itor3YS4vsvkUGlSZUUEhVYQ0c8UOSVIHSP7xv2uutPi/EWoJ8zfgxGC1NMn8AC05aHLMDnuxksnpZOWc7XELIgTGGQHqGnYuQaMK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWs0NOnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWs0NOnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0103C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747741193;
	bh=cQKuD5DCq07lCBa/5Rd/bP8mRBpXEpv1Sk0TTVj10b0=;
	h=To:Subject:From:Date:From;
	b=DWs0NOnkKO2V9RYMto015ea1nAU8r7nhKP3m56aiAbC+oOLDLO/h4SxdFMnER3bdD
	 hkfQ5Shxskt/pONiQT+r4tBH0fiGZof2BMy6skPORuyMb5eEWzUIzw40H5FH4Wi6pG
	 7/wPmj7Lqc8ervcGyDwg4R4bQ5iwpXg5ojonVFx6SA4ND7dv5VpOfmXYTdCJ+gofpG
	 dbedMVZ9Ug7biibX9ZAX+FYrjxXMlMpUUt22HYusGBl71ScrDyNi/jpqiDVd4ZPZVg
	 wRDRr/8M5uxLQ6zRpB5NHaQt04m8TMb51CqF5oY9wVDiqZWxilEs9qHZmfNCFcG2sR
	 Du/Ewa+NIhH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90116C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774119358.11294.12617619690896388472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1488f6f93ba79e9e11de71649f44fbea8c6584fbc4b5202b63bf5146b0fbd7
Date: Tue, 20 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747741193
