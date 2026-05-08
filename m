Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A9E37C915
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778225854; cv=none; b=qhLOH03YetMRfeYoShbJ3fE2pql0y1ynXHn5kFXUyrsQBeJDJhsiERyWsX3ykBiZRDZqEFKof7lXJqYany8JI4fX5NHUgPbqZu/znuAlawZgYl/Prk6KUST4XpYe6ziyWK5Ikm5KfbrvtDuE3wzUxo5uqqMjL1sl112mabPUsqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778225854; c=relaxed/simple;
	bh=CC9p3xcTbxueWhTdRjJUhu2JlNSNrAipv93FXAI79bc=;
	h=To:Subject:From:Message-Id:Date; b=mGTphIIByYUbn6K1hBMKH//2/OPGD9JJubVlJ3ZspSXBYN72hI/r0fUfJMLXOhNGBSFw7VKg9ZRirz+Me0RQL9W+Z7JmgrlMBtqzcKnkkFodrEjLfYetCQSS0plMl7SZ5qZ6vP6jnLwVJdsoVrVyeAGv/EpnQsGobVL2bWdmc3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0+l81Bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0+l81Bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B408BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778225853;
	bh=CC9p3xcTbxueWhTdRjJUhu2JlNSNrAipv93FXAI79bc=;
	h=To:Subject:From:Date:From;
	b=G0+l81Bnpx+8oy4wn4WyIDzA6WgI88HTfp5rK4PiMspZSzA46s/wkmDsRTZ8bPJ8S
	 zgC9zeZvSbMG223Hx7M0upnY5txnJYWf7ebHs6Aajbv0xogjUqbCykpWOho3gK8VC4
	 YpyTyOtqLgUMNrMrZrbgrZacQHafddPk/xWmt9jX1RkZblwCDCMUjnPPWHZWNIJsya
	 FOcO+rTQe9L5F/vqxGeGZoJ6dmf/QjTRJU67Ig5qtXIvrS8vkizmTew7ynVq5WDS3k
	 JOyRIuNV9kCcIhjARDkDzJHpKx901JY4DKQfEMZ/hoibBDK6JlP/v98mxr7kZDwmVa
	 eFL8mB1XvaCLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB594CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822585369.16864.3638316286368130626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9dda39b3506b8fe94f4034c8ade50d9bb3f10c144791bf854fd2d3ad56a92c6
Date: Fri, 08 May 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778225853
