Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F082D9792
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786154434; cv=none; b=d0XidWz+udn8Gti3jn3UhboTZBc/sACn374hdNLvLQljRGVbd+h11qIXUy0w4JceXKRqNaulsmwC5sQztzaoE5ThAAF5tzSGneclI0S1hyX/f4XgTx0BF4TnA5gz15wmT9ZDBXp82U6LtE5rxVW497+usGLLqcFIDmTHCL8NsZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786154434; c=relaxed/simple;
	bh=tjc6Z26IgnW4CDN6Hs6bATOxr1pkoi6l91yMepu2cpk=;
	h=To:Subject:From:Message-Id:Date; b=rgHACC0RpbKTCp30CE1hQ/llI2wT8LCudxI6PxzNhnMZeaZ37bBlh/ygFNC6PDN4i5B7Vrml4O5MsNqi6hMiCBqmU5aoP2duskpI4b/vgj4vTnPAVbLv5BX7WO6zRJKnQjub/lc0AW1O3vo/v9SXGvxsDsdGH1e3EbBUft+9NzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkz5rmXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkz5rmXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF3C5C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786154433;
	bh=tjc6Z26IgnW4CDN6Hs6bATOxr1pkoi6l91yMepu2cpk=;
	h=To:Subject:From:Date:From;
	b=qkz5rmXQr/ho+XpO/XbfPKylJQVijHUMrySDL42aHVAp252ohpnMDVOyaacyo0BHX
	 vQ3u2I0y13HV2WFumd16AEMDJanAd0Ee3DLemF/7MwJz8vl4f+NOf/Vu/urY+ktYSZ
	 pkAVFhTD5kUntfVl2uHDQUnqqooJkJ6X1udqSAg4nAPgFO5TZi+/3MN4bfVoUHzTS0
	 s27tNDFu3VX2OqoZ/lR2n8VGZjOKNs7Nomyg2YT+DxhCt2f7K2jbG0KImHypSaDlhr
	 5je4F0cuESLeJaoy10uRI6eVJNzLCyNriDeKesrtN7kPFg1a19pFplOvp96MR0wbIl
	 uUHlyqtrWQKow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7320C5AD05
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615443373.16397.5714565288048874049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5902b0864809013ea7c3ad7a21942b3105fc3fe893228d6902a46bf7273d98
Date: Sat, 08 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786154433
