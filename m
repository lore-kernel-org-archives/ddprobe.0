Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1432D1E570D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765708374; cv=none; b=dPU9mFJhTR1yPivfjWDcRph633ipqOGoYwmiOXg6piguTD1PkjwtIQfx4lCdwfxRSl9MKG3qOvuKGrYjMW5+l/JqXOKCkfX1H8NOvAOXEiSkXdhR6Q7yfQJUdgrG995RDejMxzXm7WGFNZmlfpdrkzpu4/eP4SYft2Fp6Pot6ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765708374; c=relaxed/simple;
	bh=9bMsTN+OEP9nnodCr81O33INbGW3Hfhp2AXkeFDUULc=;
	h=To:Subject:From:Message-Id:Date; b=nF0S/6G20QVs9LVW5iUL+qqQV3zQpYYWlzG8I3qNQXJhjchnzBN3A+3fWkVuQxws+TQmMIKtapjv8iXMUEROOY6vDYGQ+rt9clQmbXsTKvJk2qdll9G30GHAvhbN6TODYO/vdBg96Q0pDGMPpMuSZpmPJyv/6FSkwGD1GsqKBGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ua4xFpih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ua4xFpih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC5C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765708373;
	bh=9bMsTN+OEP9nnodCr81O33INbGW3Hfhp2AXkeFDUULc=;
	h=To:Subject:From:Date:From;
	b=ua4xFpih4FaUPj0qbuToTh5e6OC1N4Oj5Yf8JNr1gXDG8EVNhXQINYebQFW/m7Wv8
	 SyNcHWmhnbNYY+J6GbmNALTvKHGaf+UMX3CuBdBnrGZryvu0eikKPT4D6PVuiOV6HV
	 cANYL4d9hy8AQT7TzkHN//ZwOaN6a02YwWeia/AaV1W89B4Vcj0fe+vs597cP3MmEV
	 dVtA6UTi3ykjHaV7Aii8XJHHOx0r0jt51oJ2E+EaUlhnl3n2rD1wtPY5zjb3nzibZd
	 219BV0HW8orObWR0BfBiKZC5OwpPN6OjkPfwnXNXGLC9r2xpsrgxvdTJldzE81G9GZ
	 SNtd54vGWWh7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EE3CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570837358.28842.3147396306414964402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa610ae709ab5705a225999bad3f3dd9df6d423f0d5dbd27d70639190c417a0
Date: Sun, 14 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765708373
