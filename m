Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A90B22F16F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736766354; cv=none; b=GQSM92p8+10IMlVTwSdCfLvYOQ6jg7Ea2mdezuMPhn4ZEq35N53YK+WiFD/H05ZAqqYIkx1M0Iw4Lhj0mK3xYayTBTWIlbIOc1hebuyJk/yQVow33hlsrIctGlWX/RGrLZT3Bmd/QUR5fP4+EoXvW7ZQ/thCUWxiG32/hK5W09g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736766354; c=relaxed/simple;
	bh=J5vkesFpWhIuUCYW8g0SjMf3o4gtuN69PfPtBp9fuII=;
	h=To:Subject:From:Message-Id:Date; b=u/AtOK49HCymbrhzaFk1Gy/JJjkKRV7VL5Nn4MVoShprvpp4L2e86OzVMQkrbT65rmo+leoQIjilf8tWQKBOm6N6T3Yu504rF1mcvEyyeR1/JVIjHi6N8cDOV9N5C3+veKSIxWhs0gGeawYk86EqNbtpagAeE74G7cKsrmi7TKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz1u9YOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz1u9YOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5414C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736766353;
	bh=J5vkesFpWhIuUCYW8g0SjMf3o4gtuN69PfPtBp9fuII=;
	h=To:Subject:From:Date:From;
	b=Nz1u9YOVF8W1FFVjbFfOWLPlKBs91NbQGEC1MjrkmME4CxMi/HPvq9JWW4BbKxa/E
	 r9Z59gnN5IXmdXWrx4aQqNqygjOlr5ziS8T9633Caq23tzOf6p9k/HCOK736LzdUKZ
	 AJSfjJNseivzXShiwFT3/uc8JM9N+1y3eIEERYKH7x83R0u6TKmApWyo3RXTMCSGc9
	 bINT+sSyF1c5kpYwXdAcdT2st1qG8EiKlkd1SzH5+YA5LUvZwdEZEuquZuTs3CRUys
	 hEGskVVAC9uQoY+c+HoyDDcPQCHDPauW7zAugxL5fGwUdosETxYpT2QNhGwrV+ta6T
	 j00GEa7YfJMSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B734E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676635362.21234.6504854872804856591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051710742dd35a5284783549ba909b06332cb9841f7ea6c368fa367ba7139d01
Date: Mon, 13 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736766353
