Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449AB3C4B68
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784240314; cv=none; b=bSpt3keZh1fdwCEAURY2jEf6VyZZf5tw6H93CjEmH5HqcWLebjgIlipdiib6t7GqZDhGdiMlS/Mw8XIynTNgdvM+Fmplm7aIh8is3zSIxclA/h9J3VMtdZg2Wg1Wp3jsnGgFJ5baN3XC/jG3J27PfZPF3U89m7s/iFE+p5y9STM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784240314; c=relaxed/simple;
	bh=5VlaPL9sEPGtOTditRnLcXUCcw6xtcxJwudJ1vY5qvk=;
	h=To:Subject:From:Message-Id:Date; b=pEOi5cR0k1ymYFAJeg/bbxAnjpfGpd6oTBsBmNet4pp3ZzdPE5Q571/LbB9CPHcjpZW1O6HjffL/6k1au3CzL3dGn/NruN9xoru6qy0EVIlB3pNshdgWdE05IPfUTUbdQ10Hirmn6WqoryP04IRxcK5al952H2XCj3atnPreF+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZs5xeqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZs5xeqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB55AC2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784240313;
	bh=5VlaPL9sEPGtOTditRnLcXUCcw6xtcxJwudJ1vY5qvk=;
	h=To:Subject:From:Date:From;
	b=IZs5xeqzhnnQT6cRTZsbPV44GPXXX5zW7vDsQyvfqm9RzbjEYlemkj2xEs85ON2mL
	 R/mvvUaTW4j+KwpiodXoD6doL3iljEzslkH4hHshmb0l8eeAXigQplC4LacYqRVLLs
	 SGS+CNUyw9QATDccyluLlJZehpwzMsLx+kTXsBrTaAUxXaODHE+qKryWmLVZlQaT+k
	 eKVfGCy+jwq+pBHPX+LytvFCGsXyzDwpsVgxlC3qy1WwgURbPXRGo7F/+P66l31xMB
	 GWwxrSsPujkG7LZ2CoRuekd43iqBxwKsu42Hp7EIBm6RnYfwfTduyuBoZxvDNPTB3N
	 fVRyDGFZ+quEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A867DC44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424031368.29231.5952022486118949798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae55702606c860b1a8335184c81d1fb7a985083cba491a28ba22f02d5052fbf9
Date: Thu, 16 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784240313
