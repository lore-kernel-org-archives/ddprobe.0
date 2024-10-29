Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044BA1D79BB
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730221554; cv=none; b=XULxcn1hopEWt0CI7NByydTzVXf350Osvhb6Km7eUQF3ChwELEgoP4hzvjwMOImcLF8UtVqmzfgLxhAauJOjO41Ai6k8rO67d5ihRohVHk1vCF3r1MGPYnobMI4xVXgydZR21Gbch/cCcG6/ZCX3W0a0U/pfku37N6+s2ojaR1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730221554; c=relaxed/simple;
	bh=SjkL3AJ6WDhYDahc4nMD1DerFQq7TFQivaps/Y8ZxlI=;
	h=To:Subject:From:Message-Id:Date; b=qgouOQmy1Zk7V0Af6jYpE0YwgvfODQzQawXJ/t76D5TozNQ4+gYwF2LJGUeCf8LaL/2yhTlpUc10ESzEWC76prjiZaEu4cLV5uHRYhsJi1TIBskGmKDrdUZNL17Qx6UMvL/2Ax7m9SCJlsu1sTzI+vpTVkLzxmEoKY5++HOchJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9Azy97p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9Azy97p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA47EC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730221553;
	bh=SjkL3AJ6WDhYDahc4nMD1DerFQq7TFQivaps/Y8ZxlI=;
	h=To:Subject:From:Date:From;
	b=l9Azy97pvg3T0ofG7GuK8f3WzN7BB40gCh5IpnMqVx8ROUuuYVS15rq2HKj5FOfeb
	 qzOrzP2B2P6bXhB92sNIa5cWnnEn7kzgwHJpR+lVnz8IMHUeRiD8sgAHj/2ntrd+PJ
	 qGl4BtBIdrWTSbjjyM96vw2d1qfHehhlrG8g3x8PiYaXkiZPcKM5Ig/kic21Dk5kgg
	 QRbLqiXQ6N0hAeOV9SxB0h0pdegKGCVrhB756gO3dndjaP3tZrA0Bc18jOHyqwekgR
	 uWig72WvQdcGIH8HDh5eU1rBt3fdj2rSR3cxGkz4qvmkYeQX1Rj5y4FLHtk1PE+GTL
	 FOfSH0KBa0h2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B27CD3A675
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173022155362.28761.17045764935411171580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7889c35a6f27f5933b1bf02609e755adcdec40e8c9cf407c027fec87ff737aba
Date: Tue, 29 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730221553
