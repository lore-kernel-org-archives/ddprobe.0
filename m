Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1F5318137
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755167394; cv=none; b=Z8HsIkCklevcGu1B2KIdMkJ367LZNQuXd4in7Lcri1iroo38s6bFMdZITmSSXKtgiawolCAXk7C458AfjUf0XfYz7BaeCMkoZewOEPTY9UkQSPckGBulORvJf5QvonFrCqrXDOFFdM8tzt2cOvgnjX6xdU3/nvbqhrU2OuQiGrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755167394; c=relaxed/simple;
	bh=pa2fPLl4lVHdbBMFnv0v2NpF2ohMl0oPmLlnaRCLRaw=;
	h=To:Subject:From:Message-Id:Date; b=rCr3zKnj0vpdZGXj5TONIVqXK2A75yCUPXFvN2RuZ/DUN5F4tEiKYGM4fkISU/1BHNqjEmGMONIjye6GziUFpGQbIGi85k5kvJyVUguomGID7tBqdJSQfIR/EOrG63a4Xvou/vbGr3rHoJRxOv7Oo8LgBHPaxFzjYkVm233dphY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeExXUGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeExXUGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7583C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755167393;
	bh=pa2fPLl4lVHdbBMFnv0v2NpF2ohMl0oPmLlnaRCLRaw=;
	h=To:Subject:From:Date:From;
	b=aeExXUGLiRsuY8eBVAUYhr7UeMVip9GdAZQiKydJkaAECzOQvAbo1hQqBzA3/LjfE
	 wK6uRJLge8Shvm1mSqL7cUBS9G02+7aetYw4mm0mBu4uoMcOfJRWnIfMh81VuCK6vW
	 yWp3gno0wJ9A7O+i0JzRg4rgMJJMG7Y962PBwbvC8DOxvEJ/F0oE3DRZs2XTHTcGrn
	 B7p4Afetde2sTU6lmxo36xSK1tBZbrfQiQX7G7I2Rnm7EPj9N3i/FOuS606LMO5Hkz
	 Vd88vDZlx6gLL5wxJdAYS2EhR2PkFDLtRi+PAOoWpGC7hKxqZtkJV8fR6NqOVK1dbb
	 eGPh3xQGiOnjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D19CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516739360.2782.12603737082953366086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff95b144858e2b2d141608d71e92f1ae6eee405f98331687d200c43cc878068
Date: Thu, 14 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755167393
