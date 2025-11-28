Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275FA21CC44
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764345774; cv=none; b=cfE6tGWnbjly6Oc7Emrqz4RyXHAhY0Py9UXXuSqlnh7JESgk1ToE0CKNI5JC54tqNuD6Q6CenkfiTpuJciWI5tWn91BJ0LejGwCIi5NXSX1s30I7hj+YexuJdx7SwKB/RCJQQ+pdIxF0s5XzXI6pMW5Ay5PWLG9FWrxwnIwxZIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764345774; c=relaxed/simple;
	bh=XhOaCi2jJEyTDUUB1KT98XQR6TcU3ehMmWLoLnn+RSQ=;
	h=To:Subject:From:Message-Id:Date; b=p3pAc8F6HsE0dJAejRFv1tH0UDu9l8u4qp0sDJRgA9TY2HCGtLIgiwJJ84U1Ls3WXoeMU/JWER6HBreHoZKLsST28nsNnSXDFWOmktgjsu1Qa9AmPhJFBPBa45PFxEDNy6wzrTKkbyl1ySb0uSD74pWQE01XK6oWUVP+qwf1fVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFosNjyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFosNjyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7618C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764345773;
	bh=XhOaCi2jJEyTDUUB1KT98XQR6TcU3ehMmWLoLnn+RSQ=;
	h=To:Subject:From:Date:From;
	b=jFosNjyO3JEYqP65xlMDcOtutkZ45x36StAFIeVJLF4uDauqpBj62lDu+B8IQoaIm
	 ITLZV2YiwzTKmreCL1LH3a5BTUOnbO9AEEUf+NWO4sOBXOlQwYA4ZQg3qbjDbhP5ND
	 lfNROqNvs5R7VT4o+TW3bII2sIiTFMUo7UdkleYWboO/EEXokxajnHR8MBXL4sT2Os
	 UQwiIqysfzSP90xMjDYkFPgi5edmvZfZ51udxFa8pAaHq09AirruZ7DAIcw/P54g+4
	 eQh44AzKYJx4WsPzxbLA58TuX3T2cYBmMKz203VYXezp2x/zJyhtWOlrUmhSfcIt43
	 aTAsTjHq20sXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA83D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434577362.10673.16595334316920915077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2443308d3c29f58d7e3b80a773420feaa8f4216922520fd7e7fe533faf2ff5
Date: Fri, 28 Nov 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764345773
