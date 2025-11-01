Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8811B142D
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761973794; cv=none; b=Ffl9fXuUIzmhMW1eLh1uHsnCTv6P3Mt0x4qGF43q/JqTd7qPLALWawWygWoQb9EawwnquU2VV1aQ8yK7Z92YqbJ6Q4WmNGHdZ6MBuiKUKsm+wbnE3rGqNcMvPgtLlyEncs4NHm9oa8jrnVb8Xsb3K+eb6o8aePpKz9Pcba7rVZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761973794; c=relaxed/simple;
	bh=/D9EfOAYOOEAhthMzuUN37Y/zx+fW/EiOdc+ZocgJcw=;
	h=To:Subject:From:Message-Id:Date; b=RVxQRfF8ZZ5NuNs6SFBlJNwsVuIIdqIxbn6L0NNyNwt7pkPIFdA7UuBcXJeKwdJ822hzC2nUcYz06O7YowtRDD1ssAZzRS3OBBCrgbfbQ6+wCyGqN8rgUhw5tc37Sh03m7eXXbttgMvzKdb2soFfeAXcZrTGWrS29bFBBeJ+opc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HM4Mxiip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HM4Mxiip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB94C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761973793;
	bh=/D9EfOAYOOEAhthMzuUN37Y/zx+fW/EiOdc+ZocgJcw=;
	h=To:Subject:From:Date:From;
	b=HM4MxiipfdBfJsUpMPpKp+1S+t1ajs1pbLSl336cDSs39bHfFZj8Wn2asdjMy5OK+
	 PIqTi3hXxgDA5YNTpVlO6QHUoJnKl57HxjC7Y8fmSynbhr+5TiJBfKZrnL/0PkMOyV
	 ku1i1xvU4AYcmvCZ+4pZug3DiKrlQvCk1Q11xVx4n9g8g9+DM+UIB/ySnKe/0IldAZ
	 LwpB/ZXu1oXVdK/DsEIj27U00QpnVl3xe6Pic7r3LLml9l3sU8rwABHeGXMNIo2kM9
	 3PNAZPYEMqRICwAPRpCT3FlQePDoA3X2BGpYwgLtsKBO5b62hbAezrw8CD0z8BJZeK
	 7EOiK081ZOKLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B97CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197379358.24066.17092717411465000303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03bf1be5cd2d7baedcbd676e98d36df9d2be66479fcd70ccdf5b7599df4d575
Date: Sat, 01 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761973793
