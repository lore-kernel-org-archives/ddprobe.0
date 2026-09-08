Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDE953CA99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788894634; cv=none; b=RqhFyO2MsU2FGxNM4Hdsj290TaTQSuhz3212oaI9yvRcvr99kGTruU3X5CVGBca/NBAt52N2gBoncEAJEIoxU/vcubQg+J0n1gx4Y4+uRxgFJrDxJ1j4+hSYTvO0qVZL/SA6nsNR7MH0UpZUZUrlgthqOcFIUslVLoeQVICXY04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788894634; c=relaxed/simple;
	bh=fD/s9jK1i2VfEbOyZJpMzGSyivWSDNqLC0OAjn8/Zl0=;
	h=To:Subject:From:Message-Id:Date; b=JcM5becWzy52vlDVH154hyLjCnq0utCd1P0gLPpuEvZY6blJSfKW5RxiDiewXkFaJAt81OPQG7IOU5WLmG5NqxlqGxcSpfmcAOg1jQnQ5NMQH00Bcd1w95sMHD0hcvL5auk2SzIApLmA7gdSpm9a9RMp1mebALG0woIqN0/WT78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgN6zI0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgN6zI0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6546C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788894633;
	bh=fD/s9jK1i2VfEbOyZJpMzGSyivWSDNqLC0OAjn8/Zl0=;
	h=To:Subject:From:Date:From;
	b=pgN6zI0pTqbECfM1fW5vikcO2EUxWdPXBNy/pP8e4HRGOkR444ocwiDhNJyaE+V56
	 PB5KM9/OZCL8TcQtMXzZTe0j9wcyG4SUAY92hQp4P7wzsAFF98ObEBD23pnOlcE+Gg
	 WRNc+N+GOrfqZAVp4fzAgReyYXOV39QZTsRgaRDG3yVUfLBdBhtjmnWTfikuBUOrAB
	 uiIB5JPTi7raxYf0UDedtkYZsdB/HAWR1HjbwEO7+oHzQ7bHpyY4xt6y6i5HvVrdFY
	 5j2JBm/hMRrrd6OCdWeHKXj6a5fw22GT+KZ5S6ffTXkN3mYjVGlFo6xhkPETJzwgq3
	 BLP4gSsqB7DFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF799C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889463370.19146.7200022333005237425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c8c5b35eb43150ad316afaaae7886df8f9493fe36da219a01ae4d5445bb879
Date: Tue, 08 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788894633
