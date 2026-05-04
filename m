Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D73638757D
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777936654; cv=none; b=cJckUU4mXd/+dGXQ6PkkUTJbc/8Iet3IDRu/e3Yq5pUPX+3kkeMP2XkWVK+klXninHy1B4vpcYMOdet6VZzUXVJ997Y8snMHkTpJzYAO9jkEz8FuHImjHy9fcCcAK9o82Kv3ziCdOzZEUDD6gJHs4VmLj85nGGFrWiuxz2ZGVQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777936654; c=relaxed/simple;
	bh=EYTowGqzVBemyKr2NwQpc3N+TOHC8FGdtAk1N0Qf15Y=;
	h=To:Subject:From:Message-Id:Date; b=iFrUfhvDRMbphyy7C/25OHXanp/S0aiRzL/cQ/WCpgYAf5Pei0RhVTHgu3sxEAhMUKyPn14g+cyNOrvr/kTdcHrSAbkGXwpFlZKHwXXvZA04YIo2ifn3vwKlwvVbEbWh6wobFLyYUamzeEnUP2+OgIS58VANfxNqWwx/bgmVO3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdhGuaXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdhGuaXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E2CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777936653;
	bh=EYTowGqzVBemyKr2NwQpc3N+TOHC8FGdtAk1N0Qf15Y=;
	h=To:Subject:From:Date:From;
	b=AdhGuaXSm0sbuwtE69NHpnlMSKchBWQuBDBqJQmltxg0UPhPh1px4aylxvV4wWGR5
	 wYy7lrHKHLmUv672llMYeSefmW8C3kpCDHTdOreVqfLmpjtqptFnw8X/nzwko5fQL8
	 UjwKRQloa5VwixyuxEW+sSTHotO8mRde+ucvflewj9Ysubp0L5qMRz7SYKuXXamCQ4
	 r/raDP8cMDFN+21kV9oV+8T4hkgpIEMx6kLvTSKGj1/ouQ6TEqIg20diCY1xVF7Fqw
	 +3L7LzSKGfqF5or3132lA2LbUeMPoVmmKRKGk0BK3tHCoZtHlt7Orba/M6tnBRGr1Z
	 hklPA8fhNL0TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A975AFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793665368.27959.10443183223546963676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc381e593bb7eb9d38e8fb3a98afd1e47791338ba2b421510a92a7ba0a77489
Date: Mon, 04 May 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777936653
