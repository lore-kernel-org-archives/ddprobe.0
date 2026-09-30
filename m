Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4664A40759B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790807434; cv=none; b=fQPfRqmWd8Ay9L/wbBmymxr2CXtfCi04HHa08BkiCs5WEHOMa6kJ2KNyA+f1pWVYZli+QFxQOgY95LiWbD7ckUEcr9hTKxhziGhxG6Yc55YFx5EfIglg6M8YCCmNttv1Ky/Ah9atmZQTbdZF/K0KE2M2z/TDGuryaBg7sxDNZ10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790807434; c=relaxed/simple;
	bh=rCDcTyJWekTSI0tA4MSTbjduRZl/MYS7i7PcuSOy6UU=;
	h=To:Subject:From:Message-Id:Date; b=rUzgQdZoQVCiaecedY9LIDBaEOGQZU5ZUzuYxM0B3DY3sggSNq1mnPXJX2G+UBwZXHkgMo+C006/L+JaCDTbM3IsR8ra2mHnJYxbL6qfqn+gcmq8BdoY3a1PBFEMelXLq/WoHBHdSR6L0zdlwrFH52UG6DOsSnPK38oC8DLMB8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxQmNuPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxQmNuPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3547C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790807433;
	bh=rCDcTyJWekTSI0tA4MSTbjduRZl/MYS7i7PcuSOy6UU=;
	h=To:Subject:From:Date:From;
	b=HxQmNuPObk5oIVAvuZZ5vTX8WSN1mlD7p2R9I8DD+StNVweiy0jdwHIehJYyfsPBD
	 mywWByx72RYFYo7rFAyXRQajYMrimQxgmQSsRzVBBLnLRhRlL03AQrc+rMgNYnA87D
	 V7g8tf+TrcT+eAK9MhOIzbuY3ZFlamcn2qos5xkf5UBWkJKWJXuw7Gm+g+w6XLSckj
	 NF3kbIsxox5K2odTIz1c5ZJbh5M4OHccreqibSeqMYF9gQTbldOPj/c+J2NewLSoaL
	 20MSmTzptxiLiBZEZUzRlpgTtQ+6cpDYsW11DXH3Bak9DcYo6RfFXafWDDQgjAoTBY
	 +SzrK4PUg8Dug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C31CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080743369.14217.219124715975773281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4ca3911c3a7072160df121f61d42abf2e8c9a51e7cd2b4df2a32229f535856
Date: Wed, 30 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790807433
