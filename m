Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E91025D1F7
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761433795; cv=none; b=l/hkHJHIeJgSk7ozWzTorYBCdqcD6LXaNjVhYU17Ru+Ad4GChjyNw9nVeloGJsaD1WblyNfU54h649nMxNt+yoMSe8QGaoDHZWIH2/RC6j1ecmYu+INclgvm8lY/E2b9rjKToxoNcTMBsh+RapRl58AzxrqYZeholkFI4bTz6yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761433795; c=relaxed/simple;
	bh=1iQCXGUmP3ttFOSa194a4D9cz/8U1B09eHnTMInQGgQ=;
	h=To:Subject:From:Message-Id:Date; b=s7nZsXAydAoa+yOoac4my+p7UBzeVh3bs0uDvgidV5fIUAnlLbu/WWUZXhJP85sk9FI5lU8tAeEFZhy7JVp1CAP5K9yMQzfm6Vehbu8s207KsH3qmWrnq9SiPvIj1iFmzF6TjmR1wbHwvL6TTCAnj1py7bBSsfiMKH6+GRl30LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ji8a62rV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ji8a62rV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF06C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761433793;
	bh=1iQCXGUmP3ttFOSa194a4D9cz/8U1B09eHnTMInQGgQ=;
	h=To:Subject:From:Date:From;
	b=Ji8a62rVTq5yqcxJkttvKa1RYac1JT6BU69B9XdHqIG7d3pYK2DJhPFaT9gJ5nrnM
	 5tv6VTdklfqPuwJNXsxtLczxsxRMOji4I4Ix1nzwdfFXQpJdQuTd10UYdfd4VAxWwz
	 BCnsOXwVxup0eCyBNP9Bqx4tawWAG2D7hJuKDhGGOKao3CJKkFcQ+DoL67u2yQEoeA
	 JVg3Akm7XjbVhWKPg0WgY969rsTc5Z3P+qo/pd087hKm2ePOd1Y7X+udk5vq9jzVLS
	 0jUV3W7oCesuwoN99xrk2pynPtogxJva73WfLBhy9u4o0vumJyvD58KpcPAxT3P9g3
	 8vG/qgdkJAw3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99336CCF9E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143379359.25059.5880561367174910853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8934e5d1bcd99ee735c861f1583df8314c2c47186c1f42bf965776ce2663f41a
Date: Sat, 25 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761433793
