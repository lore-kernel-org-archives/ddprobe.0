Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328CB41AAC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763594514; cv=none; b=P3Vm/QYoo/offjwp1gXSKzhIJnoplqRNsuRyvuDzdDUcH5sPrdk2mCtMYJTPliR+C1VMWuDrI5ekbi9Y4lhZDlv5UGPRaU3wQZe7JuHbzDtI1cij/cCn/M6RvTakIJhDf3BUYcO3iZbYvFx0+K40ICIhfG5FR/0mu7LAFhxvDo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763594514; c=relaxed/simple;
	bh=Vk1KR5Oqmk9hCzGl3zAmjlHf6kZY7PNHybzRIzDkKgk=;
	h=To:Subject:From:Message-Id:Date; b=u84Yw4JY+ztN0f3Z6W4o0G1rWB0N8KtKS0AwjImVQJKnem8vjZo+35BNsHA+jfCLWkcxhdw5i0zpkrzWMQ9GJTRC33TvQPg+DJWyi5qbEAVc7wHyXL9RMDheN5pOfqVLE7wNIPoqQQ6T3hi3BBT1wrI3Tjute+/jhxo7Wuv9uQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxZwmdOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxZwmdOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A904EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763594513;
	bh=Vk1KR5Oqmk9hCzGl3zAmjlHf6kZY7PNHybzRIzDkKgk=;
	h=To:Subject:From:Date:From;
	b=jxZwmdOVRALRD382ChprUzEOzi7s+i8HZeOTpZYRCXFDRn2ve9rNvSNGdbJwYfhtu
	 va3yrFI4Eox6Rodwo32mrW7Iq6CS4KFMZB3Pyvul924c8CGi5Y/Faom9mwkJCIAQcn
	 eVuiRH3pylxYV8IT+IEEQ5aYGcN9yl3wSV5ytky56cFkLgVV//WVT8epwqpvBiqxWE
	 Hwi2cOAIZ3h49aPPJi4b5eJ0VHYpnt6VfVPRBCkeGaWu/fe0uctS5Uqz9kVOtCRtiu
	 gKTFxFZZlkkPxmkW354Xm9JwMrVlfnTYJs+7YdEEOJJVmTUSwPrc8tZfe194PzRkgB
	 KD9tcTVePx9fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D3BCF648B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 23:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359451358.6575.15780663313064666935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3e07b50a8691d8c614bcf4a72e99e53c65624641c83d8ec6603841f9078bfb
Date: Wed, 19 Nov 2025 23:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763594513
