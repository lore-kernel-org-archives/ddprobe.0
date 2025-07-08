Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2609E42058
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751997594; cv=none; b=g6y4nC/X5MKYq0TR9N4t3S+d9LjBb5B13JMpJjSrEzYH++XAGrS9fixZXFM8YOYnk8hMNUFOo8fxobhek7jOdp33QGC2xnBlBCEzEcw6wq85HalNj1vUOaVxThvm7kmTrVpFhyM4SMpKCgg22bC+EyrBdLaeMHfK16PE5xhdtCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751997594; c=relaxed/simple;
	bh=TUzELDNDn6Cdd7tOS2umH3+cv/7ALhw/8pZm3ci12fg=;
	h=To:Subject:From:Message-Id:Date; b=gTmoD6WwAlmV9F1j6yQ4xgC1I2OBXdKYuxVPoqOyLXA+DZvOrt0sv4BzURtQycuX1o8BPjFwWoEfFwc1XZ40g5TqWfA6o66yAJoK2+PccRoSX3TQzY0Lx/a1d0L1DFj8KdZiqfEE5BN/TapAlj1iFSHO8yYsyOg4A7v5Yr0+xc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBJE8NUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBJE8NUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B4C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751997593;
	bh=TUzELDNDn6Cdd7tOS2umH3+cv/7ALhw/8pZm3ci12fg=;
	h=To:Subject:From:Date:From;
	b=HBJE8NUUEcEuYavFOYT6rA4d4JrKRsLg7Ii7GxWGldHqmlI9zR7qwuHiI60K5vsIw
	 cno/uEdp56+6BTxMktLVJJXOBLAoDPk9iYKBjIshAqHyf2p0EqTo3DMQr0/xKGqTbX
	 ORo4kar4yARdBLsxGGQbJLu+1Zn0zu7Xgl/rkoSvVhTtFeDseeNSe3mpfdSuMmXxTg
	 PJ1Zf38AJdB1U2wfBjKShDrsRayoKpMVuhXOJZoStBOgtPkyQPFdp0upXqhNRc/MIW
	 lGk10YBcgT/Eo/fXlfzRVdZ/6naNXp72Lp7ZaCdMbo8R0UoJ4VaVRcE3TV4vmzkUL3
	 2n7AbWGi7gV4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90560C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199759358.2954.4116236516249548718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed59eae9c7d735349adb0c070cc9a221dca890613cbe4146b7fdbc5c90b8105
Date: Tue, 08 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751997593
