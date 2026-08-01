Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1DD23D7F4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785624034; cv=none; b=cnzKHKgVYeKBQainMBaOKKRqzqg6/jpoFTCBHuCYPuSDEAhhSeV4gENT9RSDsBiEmKvX4v71nAwitd75vnMml6eRT4Bv20iUZBGMwpWAtAjx/9wLrIOwZIHI0mSaLpw4/hab2owq1zdLOGdLdcqFOw3Wi/2+cd8fQ6J9EJOvk0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785624034; c=relaxed/simple;
	bh=wWV6Q/RwxQnCle73fEVzbA6QEbE1Zbw1UsdS8vrhAVo=;
	h=To:Subject:From:Message-Id:Date; b=FcdbuB5TIrJTkArYJsG+PLmb/jgUP2M7fixniX32LzRGMwrx8ZZ3t0vjxgPoFbAp5QWZPabmT5+w33PvuYFvfLK44b3DIzfmsxfn+NahSsyr2BcV+XZznOzliXm0qlSB0pRC1ffn+yOwHiiJsZaVuFwiHy6KNxzEKhD6hjfyffY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiCDHgzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiCDHgzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56FBC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785624033;
	bh=wWV6Q/RwxQnCle73fEVzbA6QEbE1Zbw1UsdS8vrhAVo=;
	h=To:Subject:From:Date:From;
	b=AiCDHgzMkt8lLmp79CUdgEnBcqMye63/jUXJwPp769GSDXSeRO4b5jfyJMJkenNB5
	 35iTg/Q4jFIIKNx2a+s5PHmn58zmSFCmmUU6EctBdng9wLxL9ZwU58hkuD0sZKhPKl
	 ATYDOFn1gakrY3PRjf1hVxct/mjMlLYwi46grh5+ZQfMYdQXFeM6CnKVo2NSy6cdJT
	 QpHAopxnRdTOvKekpLFcEPJ2Vq6TGBVc1l2R75mCIrDdKy8pQkM4dGVwipjClxUUk1
	 uiXygexLHjAWHO1WLOh8uqSdkqc6MJ0fOYOWFQgh5lC32DzPOM4CVp+IEgI8q32xV3
	 LwZ2+06XeIw3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF371C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562403368.5836.2449241430564292864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78f078c7b06f3bc7099400a395b44df8c21fa1af9be1c21b3c0a4997c0e7236
Date: Sat, 01 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785624033
