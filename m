Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC8A301016
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755365394; cv=none; b=S6OxC47mPj7vX9QRFdoNjz6GYJjx5MHMRBmD3jquNqkdx8t/qZnxgHRQjbLVy5464HXP2XzZMfOheBm0EYen4Mht5QWg3R+zoRnusM7Lr9TqhAH3qXrLcpwSTfaAVAshrG6/FYMCcZR9wiHn8xo/CsJ52bETvoc7tHSpUMNJIQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755365394; c=relaxed/simple;
	bh=KNfBa9C0Xr8QShOJTlN2zSIadRUGxo3/7p7s+nyHKAY=;
	h=To:Subject:From:Message-Id:Date; b=VDoDzMOoVDLfUXv0BefNzexBhChIwMvh61+SGi+fBumRj3XWqpbPARtgXrd8+23ksKlv/tMbe6aL8ge/edDK3x8Dms4093DNt+4WreqUvL9uAg5elJzBMa3O+ix7gLhXZ9XBtixRr8Do1eq+AJNw+gHl8FwVUZAJcfpXfgTxCmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQzBhqBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQzBhqBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30BBC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755365393;
	bh=KNfBa9C0Xr8QShOJTlN2zSIadRUGxo3/7p7s+nyHKAY=;
	h=To:Subject:From:Date:From;
	b=AQzBhqBLWVU0hqpEKU2/k1YnUPBWwemyL+yvThurVeDpSSiJmlWiroSaKTx8XdqJ6
	 KzXXtybjZmDkofr+fp3dwfo+Ox540AQvjPHh2+5yrsf987Z0HyBFCl0LJTSPBbqEuS
	 elkc3CF7PBvKUdZInI1KCWt5dPdXOAAer27KGJskmJwoypAo274UeZN2zRU/31tumG
	 CiImr2q0ECohFRtguJLHjG9WN6g3VofjHYFbT3A1P4oqAfynINc1rhFoCgT/ztutKe
	 ttuo8z5UPSjqEPQMH4qfz2BvRs1xESepNeBPoDEAdsP6Z92UkNDFimf1DB79RoK3Cc
	 TjaL4LMegORWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156FCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536539358.14583.10855239219703433246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8d1240dd4c91bb14116a043ef9ff4765cecd309729a691563a89afd394199b
Date: Sat, 16 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755365393
