Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D40F13B58A
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766907834; cv=none; b=gYQDcCKzWape+E+Uyk0qZt3Id4FrIcM8i6YPWln+irrTHt2v0DHoHvjBSDJHtyvdkuQDml87lyw8V6WaQNoqTflEreiAgpn2rTXA4VroUKcIKhBGTEt+/mPBYvIuzzV9SRaAKn+LGGuScM0W8918plnExtIXJPsGWhy9rwFnZH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766907834; c=relaxed/simple;
	bh=C6MWiL2TCKa1S4zwr0NKJVFF1Qd2Z25IF2Lzal14OC4=;
	h=To:Subject:From:Message-Id:Date; b=aVgp5+lm3fhmL9WT9z5IF8I1KO28+S4ZtprxXR0oYnwMX2abp88Ar8ew2BXf9t0AkmJUJ75LGVrRrc0h701sHtT2riIOOGGdHiAkcDSqkNVsBng/MVzYNrJB++kBed+VEBKjWjCm6SGx9DxxlMZKw6WDzU7htWcyLJhvFwFAsd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmgGqjL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmgGqjL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7805C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766907833;
	bh=C6MWiL2TCKa1S4zwr0NKJVFF1Qd2Z25IF2Lzal14OC4=;
	h=To:Subject:From:Date:From;
	b=GmgGqjL3/h7rgO3jyAPgb+vYJSOW2vCN0I5j504Ngef/idKs35n1YH/1etXStxGcz
	 c7VY4HS09miPWyWB7GSZT2p7RnnqUrrzzDHAy+w7+eJ9ezEpCLpK7m8zEGsH87qfY/
	 JfcHkA+7IqOhiUKQI6/CjXTbri+nSPKWTID4A6jtN0JvFEdiCaKq7FS6+lwShecSri
	 jsE9O0W1nr2ExbpY+XCx35/1VaHnhKpV5XMiVIGu1MMuzxXT3VAnEbrvrgAegMOzZm
	 dgCbxH7nLWGB7yrpBf8lIaqbeoEOtLOovRDvqHz9WRojLmXlTXAUH1jPgGVlCzORnl
	 5aHSqDxq7vlHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44D1D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690783362.5358.13847784402253864014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8b3b3edc86199818330b81b1a2053812ce956a0589a4a02f78246390280dec
Date: Sun, 28 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766907833
