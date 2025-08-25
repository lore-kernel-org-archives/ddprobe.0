Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4A31A4E70
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756143594; cv=none; b=f318DKBcSamDUwwqwjfW3Y0/ZentIofc1vBv4pLgKHnQYsOyTafMSfkJA+rod/NyeyQ+5VMpjuVzbam6Xc2SGqVBxfUS3u6xdkJaO6K0bCmzqUoUQCho9PzDMp1prMLFcWwNAcmSauagRk0YMISK60eEDDyZL17zTHPWA1UTYps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756143594; c=relaxed/simple;
	bh=A688Zht76Ef6DfQATCMtrOxrBsU6ElBcD5drtXP9MQ8=;
	h=To:Subject:From:Message-Id:Date; b=OFJjZkIy/5iiFwYGkvqLgpKV38e/B6BLOI1pJyoeDpUPSS/FneaA2LxqNalXFdDVu/kO8cwUrwM12GAg4bDMOc7yehBg8clfxXY2AMMiu6NfEmlArfUvrUYo8Pfgqp/9Ys/dlljNtfEAR3T93bY/VFvALlljMtuWMRDw/krDkyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMv01nYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMv01nYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A227EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756143593;
	bh=A688Zht76Ef6DfQATCMtrOxrBsU6ElBcD5drtXP9MQ8=;
	h=To:Subject:From:Date:From;
	b=BMv01nYUShsH60ZB/mWUN4rWNLSkrmrwZS47kgOldQ5f9JTwqbbsRISNPUsGc7BD5
	 Nl1NqGRpf8GAktM2ek64nSdcfST/AGF/h6snBcwLt2IrwkwtnxNDcAEwcS7+ibdIn7
	 67Yo4A0lgDo2HueEnaaBPvbLYTSpIN3CVgZYEINIjC0rG2qhSPkR18ObMxkwNnFKHa
	 9vehtyDHd1Y5sZdhE8ttjQ+VcU8ALbG0JFoX1ztg2bEH9VIE409zCy2II7jSFeRJAR
	 sXgQF7RplbTU6RtqqTtJ4rmp8Xf0iag2Cw+bDFY7l2bDiWLNJk4dDich1CjFmFyIHO
	 1eqE1K3RvgdSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CECA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614359357.16427.11001908877097278004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160a56a22499f0e8c7a84dca32b405f702fa57220b7451576f657b405294cef8
Date: Mon, 25 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756143593
