Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8A8B67F
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748506195; cv=none; b=bcUA/wxog/0GYDQBpHOnukls6NPoZh0mfrnwVBs2qqlr6P1zoWfOcLaZ5ogh0NisKp//M9XC0ngtFZWNIavvIXcE1rACIXHWM2HPiUaMP142lK5AyMxFjOhH+sqDRDYFi5yVzvOTTJ12OnMwsa6+OLhi/JMuC85avCB4KiXAebU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748506195; c=relaxed/simple;
	bh=9Hx5zbgGaXHK5fgr78hbgcUGQGkSlXnRkZTBcsnbH/s=;
	h=To:Subject:From:Message-Id:Date; b=F9/dUuJbsAbJR9h8p503aXGsa/pR9vQAjgK9yNIHv/nL82MsknClBRqk3e4HA9ZSVQidDjyQx14bXPn+BlNvh8mOqEd9Opzart7J4nFko+YTfjmJoWdEleeerEs1BrjqCXLIbXGCaVRMJDqyABlmEHppzF8vnJ/hKxE3i1gF0ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjj7cbXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjj7cbXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFA9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748506193;
	bh=9Hx5zbgGaXHK5fgr78hbgcUGQGkSlXnRkZTBcsnbH/s=;
	h=To:Subject:From:Date:From;
	b=jjj7cbXnUuYK4yQXqlMtZSdhfGXld8m8dERCZ3AdsGPl6+cPtmtF6eLR/dGeeoWVz
	 G0amc3n9pt9KWJk2+puOcj/V9+G8LNV16AOBlYsypkvzhOV2Q+KquirRlFd4yDL1l+
	 Q46tstmO413LFlHztAW39MMshqz2D6xrN5FKxFkml03ydflMmlGpuRSdycqA2gwvG8
	 ndSOu7BSA6lVj23gNEOWT38JoQnWS48S7uHjfuOsXpuOV0dYmYrHlAlk9wBV0IC3Iv
	 Ur2K1llI3afyPc/cUTpn1NdFQQVdp5r/dokC+jgW+Hr7aiXRoobdSdsA5LOFs1/DaA
	 5xXLPa+BfAa2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96576C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850619360.3558.10854166126728214265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5ccdf76fd4b9e3d8da5c044b6c3ea2ac3c69d69ff97dd7b73cf0b904a47e83
Date: Thu, 29 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748506193
