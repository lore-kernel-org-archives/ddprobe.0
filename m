Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346B2374161
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770642834; cv=none; b=mj+ObB/ZqZCxPotQyKZ65HwmNzku/9E+yaMevJ2B5EhJIurfa2oW6zZFrkY27HXtItBYoVUbmb1i/5qg2e5VAW0kSRLcARAjtuntzumOGoSaXYxgTP8Hxrgo1swLf/tqNxNA4abrIXbGaRiJfDQO33KRUXCHPVxZg0MMC4pHR9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770642834; c=relaxed/simple;
	bh=bqMcRXRLTRHwdsChWhtvpBZm+wSkdYDJtqKYJBdLkYY=;
	h=To:Subject:From:Message-Id:Date; b=c6lTqbUjJ6d4h2tUZLpSRTL1strxV5rIELDekutfCzwqN57hV3otlZHU1OZkRpkIYIpud7wYs2gFvyWmlitNaqfeYI8SPLw+79PYUU19Ga/YmXEjZeT1yb6nKjuCMdvSPaWGAGBMXxI+3UJfkiI3vGKjyMwhXsvAty7zJgrGcnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9nArfpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9nArfpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF3CC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770642833;
	bh=bqMcRXRLTRHwdsChWhtvpBZm+wSkdYDJtqKYJBdLkYY=;
	h=To:Subject:From:Date:From;
	b=g9nArfpdOgW87aJ5jNtKa254jQwc5uQYnMxr8+s9PfGDV7deOZXA602C3kxPCBdv1
	 jO8FgTugtQ+vSXuaRLm2Qnu/ZT0FvLUWk0cCLnPWWBQgW988ap2pXkY6iYUQFUmB1M
	 4e2hFfBV1P7GsQuD/jlKMtFJwLSYrj1UIkwwCUmrrbBVwVBgryzQ6Ix074VHT1W4bn
	 EagTeO8CmnAIPYR8uJ5WjkieUoX+0eVmdHIrCiEPCl8nFsGCI0esn8KxvNRZBqYwhi
	 8SShlZkR4j1J/AkunTVgiVr+a0MZRmtKa+ITfRk0I388kDbGQo9aPzdXSNSneVA5e+
	 iXY1qSC3uzbgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95ABE81BB1
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064283368.17921.13678577482264222016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b024c1f2ad33f8048d4a13631c24f96cfa074c52bd1b1ae9c0ffafbda4c243
Date: Mon, 09 Feb 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770642833
