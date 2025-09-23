Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B73263F38
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758662394; cv=none; b=rFRZROM5WbH/Z4uIXWzqm41wIR7EpmCN43KighvHh1UT4gjT0Cb9JI3GII3Y3LfqENlDwQ30yrlQv7Q8HgBEqgf0ttbr4iqQWJPswB0dSW7RZYAjoKkpg02yoCpky+csYxEW6YzisvyZyYKQevuBPqWKO4RDOfppZhxp72RLCL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758662394; c=relaxed/simple;
	bh=kHbJ50nRo4fbvWJ0v9i5kmZoznar6shigcjwKrg9Jm4=;
	h=To:Subject:From:Message-Id:Date; b=EQPJ5BxJB6NgXV35Ljxkdk9tG8w/1D1/jEDYlZEJ4JnxWLOSMu0VivxKTbFoURKgxstn696Pmg7Cu0yEb2roo3y1jFHvDD9OlkhPSn6EiqggEDGJ5pDwsf7OoG9VCryKMka1V4O2mCW+N6652A2SQ9zzIEjByMbqzlg3WDKRsnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMEg/kRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMEg/kRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31E5C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758662393;
	bh=kHbJ50nRo4fbvWJ0v9i5kmZoznar6shigcjwKrg9Jm4=;
	h=To:Subject:From:Date:From;
	b=LMEg/kRTZuXfjYXtFmfEaYPlubFHvSEkSqR0+2XlzctGQYO5ozIIHx2pFecClrWjz
	 4XDslk02idNni5IpxkggutdO5yzOAevKZakazBloLfMNZWBr60W6JP9hbtQVZ4JoES
	 ogZ6PnKxMi2GBqh9/AOnfBw29oUdFL8vIVbVtgt9MNqp4Za4/yL2PwjBggOnKR8Hq0
	 Mf3bTkwtudkluGxgyfSML9kaWYiRmhpqYlhuN4n+HAMsqtAGvtCOYof2KVhEeM8mS6
	 321YNPYm8bWwJxcFj21QbUImxv2PIJ1Mm8/ud4Ih3PfMz6QDulIY0pvUsLPESCs6YT
	 Neaq6NBJO8ZLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4ECAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866239357.29770.4629282958178192125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463f2dfcb5144f7443f1e72a3d4344671f81388736fbff2c76d9343e5ec79879
Date: Tue, 23 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758662393
