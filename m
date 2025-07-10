Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DEF28CF6C
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752138594; cv=none; b=LFtjPWHKYTsYPnVzE0SUwHs+XfT/2RaQmK5XQ+79ajSPPIbAjPIlOu3+nA30TAHyzvyB5nSPRH3werbtzQTYKITewFaOlsar1o2oB1i3w9sytbw4ucE8xdklO7bSTj1xentcdrSU5s4LZkxfjYBXEoH9W64LXUicQb3ruk4cnrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752138594; c=relaxed/simple;
	bh=nrYQDB/wNqZ2ffDrQYYWzZNLps261l52tleNvzOUVn8=;
	h=To:Subject:From:Message-Id:Date; b=PrWL4S1pXKhpAc1LIW4lPEutMBdyDYMflHaA0/GtC57Fq7PEtSgBONugzQuqxx7Cpm3cCVuo81XmvXTdzdjn8Za+8JghOkl6ZrBi04GcxzEdf5OgGVS7gU1sKHmtA2f7QrfEX7tZGquDkOyd3Tv430AQWAieZUQawmefLdvDaIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNSYBju6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNSYBju6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E0BC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752138593;
	bh=nrYQDB/wNqZ2ffDrQYYWzZNLps261l52tleNvzOUVn8=;
	h=To:Subject:From:Date:From;
	b=vNSYBju6M2+IU4boZDK7L8UR8sn4BEwmDPwQ1nzH4oCtsSJWhJwYQ7UV66oCDGVgh
	 4s8ec+aoiLrU7hZW7CFaNN2pup5XleulpSLB08DbEN4K165dBTjvRpocA/AcVWBsiq
	 ZjM0MJnoNFT273hV914Enpp3S2LeHQCHyd1rj1tAF/Xd19gIq9LQhYe1TOK8DasdlN
	 gvoVUymHLw1RYXmjjq7h88qlagyjdZnidBbj1SR9Uk0shrbpWwPU9PRpCfrGqZLz9W
	 4a3n/xj3LhDQkBputdttGjUX+szmD5i85BtZuW+8YQkTGgVQcqalhyuti5GlEacIKl
	 YfFy+9A5rNqnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F025C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213859357.4028.381905660458149386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7276878efe1876bb9b033829be86d81f4bc65083f9d1d0782d9793ba2c7bdafd
Date: Thu, 10 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752138593
