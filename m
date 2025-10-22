Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2348215687D
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761101395; cv=none; b=HCqXRKc76/DRjYX9R5/MSLLXWjJ3htdoc7EAwtCVTcG1f0p6xompm76KXgm7lgjOvA4xEQ79gg/FchfW7iP3dVsimjkqlyPQopA+c6UWIYCYW6z4lboweDTya5ZkLBf77crwGrKrmE3EWiaNuJ66Z8chX8i+yh3OfYgAgqBta60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761101395; c=relaxed/simple;
	bh=eX0SDlSRVNQ4ROlxNVewqbQ/lxGXe8unWJX9aK5lMn8=;
	h=To:Subject:From:Message-Id:Date; b=Zcc3EXJx6aJDihZxErWTFB+5ZoEOUkzhPYCoYz2uwRXbSzsZkRB1fE+6X7PXSzScHYuqfJj8ZT6aS1xbPaS75/Avp6EkWJ6MBL3pMYUpRVehFqDlVgUtzoSFpfLH7+NdcNLOftstspEgta4/1iedJIEGFdWpa4Hk6ayylAdILII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NA2AXhkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NA2AXhkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A525BC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761101394;
	bh=eX0SDlSRVNQ4ROlxNVewqbQ/lxGXe8unWJX9aK5lMn8=;
	h=To:Subject:From:Date:From;
	b=NA2AXhkkw/Wu2ZShP1exopT4HYx9mNIcwpDt23gofG1Zr8pKxd6eq7445kkO912wF
	 HeJmzg7P9TZR+uArSXH3GXvyHEO4g3DtVYOkK/PnP5NBOMHJiIlLAwp2EZJwCLf8U2
	 zsn2qvIVoMMo2G45dQslO79w8ZYnTQ24A1A4XrySH00mhVSBZoHi19iTljLSK9TH8P
	 lljM8vk3gOhD4ZA4ihKhK5KMq9B2nmXKGKE1faxMy9P/S7MBCwgmUT2/lhbZesU+/q
	 gH+KUpTWg8mKQQWTqvEjqCHirP7vOUwQKouQ7aNpVOVxOqgR2oBR4avlyPVdYiIsHM
	 n9BaCCuZcb/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9204BCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110139357.30957.7894602135523979915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73645719bf82c3cd19a5996241486aac09150c1790041e2ae6889028f9c836a3
Date: Wed, 22 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761101393
