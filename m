Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22888194080
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731714354; cv=none; b=Dw0DtoPtIctpbmtih+TzS5qq+b7c6mkIS7/3SvqlKq3Xc4Jhah/VDKwWnuF9/Vg01OxUsr2u51FBoBi5iFqk+idJ+foflh3q6234kFVG3OdGvZRT+MGiZf/wl5xZobU/CzMd3UT8d3VvXh0HoBdfqifqWBOJQZd180ygGDicA3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731714354; c=relaxed/simple;
	bh=JrbddVE5B+ajl5XcHqq9PW+cN9ygKcJeiqgwq9/wmsc=;
	h=To:Subject:From:Message-Id:Date; b=OliC/Rq/7awaHiMxc92pssqau7UYODNmXsq+mQgioEg6k757/MchD3HZ2imwHizFg+vKerKMbZ5SlGfJzuO9Lx0eOV/lG4U91GUrTltfeddSSDx6VU6NNohHPX/b+I4zFNHlSOuqXBlyK1wjbm/dCEBlWLt3P0jfCaaRv4B20tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUju7L2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUju7L2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCBCC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731714353;
	bh=JrbddVE5B+ajl5XcHqq9PW+cN9ygKcJeiqgwq9/wmsc=;
	h=To:Subject:From:Date:From;
	b=MUju7L2CES1qv9BRRfKNKMKPhs2rprSdBqOuuu/cdCr+qjn3uS6bAKjarfJhwAeT8
	 MtvJy7v92KjO3uBhr1/vNklf2pU/NlEtyh6JJEN7A82bgk87imKe4qEWU6LNcI6W4h
	 F5Ir4UWaW5CfwsS/tKMHtaPVNM6o81YmeOj6CTS9M8a8F7qSr5+5duhWYkiEcuCIVL
	 ytrNzTlEF5iJom2t89Pvx2BoxHvE6lEq98Z5EtMJ2cT2BgQM0nAUZUmW3b4oof4uEp
	 NG10LnkV0adgm3qoF1NX0WG0gIhOtEd/06MY1wxy9nVpj/PpdocDj62oCwJ2tVuzRy
	 zVBNSOlONO2vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF85D68BDC
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173171435362.23573.12989111013286012008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af07ffa37adb7f9a93f2c819255197421e7ecd0dea2d5e6c80229a6a45f6464
Date: Fri, 15 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731714353
