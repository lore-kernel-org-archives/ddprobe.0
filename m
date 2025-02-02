Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9734A04
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738465554; cv=none; b=i6tvcQTsZR2gUSobdgYTUd7bFrxk209oHGrHnQ6rCwoU2hHvCHnWRPBGk2+eo8wAXcHwDO/xzigwayvKmoaSRAhpcU3Q4AOWIM1j63tTz6xKadNJhU7RwRmU8tYISZFGyqpUYjP7ZRsSGCDtK0Jg1+CUjMYdm4+CeOMP1dn24Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738465554; c=relaxed/simple;
	bh=y/zTjqGbCz0zK5CajR7fSmcT5a6jfH8zlxQrgCeIaKE=;
	h=To:Subject:From:Message-Id:Date; b=uFdxiBYmy4qZME6aVoNWoTZ4HsOR+qz55AwgCalIygWg1m6ZqmuJH1M4UYMKpChfTVqD9v4jmrnItKPWX5fu2VYfxPWq49zR/RYt8k4uexLBvLqHFbqCFcZi8QF8BWM58yqFvnMOQpTcT4CQ1EsZaxxm5Pm9xeAeQGlyPBHrz70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8GatJmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8GatJmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3D0C4CEDF
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738465553;
	bh=y/zTjqGbCz0zK5CajR7fSmcT5a6jfH8zlxQrgCeIaKE=;
	h=To:Subject:From:Date:From;
	b=J8GatJmmaWOpvBTX+r4rU1wu5uorcaIOAuwk7fcn4Zc7zftBwfqLMAFRXGb7LXrQc
	 hUpdHyBUbaIErAObq+pToWAI3FOh+4b1IZFh/vEb1umkAhQSEl2al/th9LukGrC1Ae
	 8fPut0QBuDLwLML3JWoaN/GMg4wIeP42vC/l+X+ssO8K2Wa5kLIHNou8Sv7igxXVtd
	 /lj7SvnhjE0IdlMHE95t/TmeuvLRxH9SmL+DUSM+y2OUORFefIwif9Bs6R0si/mldb
	 o3GrI/kEsfOUDdx1sG4T9/pbyLDC0L2IbKQs34a721A8tmd8/GNmnEu6iZWeFKRc8v
	 CZDppeXC9U5wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BDBC0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173846555359.15601.1706397473319680090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb2f32e13179855ae21ebc817fadab04e1858275d452668e59576073e679b63
Date: Sun, 02 Feb 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738465553
