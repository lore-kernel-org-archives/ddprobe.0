Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24588325483
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779158434; cv=none; b=ssarxUbJhiGXfxu/AObYssyalw5YOPdfOi8eS7hcLxTPSo/Q91sYufFT+21zwR1K/x5jHQWpPW6peNQ0qAd0KNHK6v1bxsAdALdC0S7Xs+n1m7rQJweCl4qoOYlJcRcERsQT0mBKLJ9UUnIVbCKVsGw413Gtddm8p+5skhfLZBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779158434; c=relaxed/simple;
	bh=vwlRakAKF/6YrC/SODHvZ347GUW1fRWRA5TfimKA0bo=;
	h=To:Subject:From:Message-Id:Date; b=OInyfbM5gqgIQR2Bhnphw1YEeZBRNbUBdzWXkvJKj16Koi6rwC134vEOzbQGJG89W+0MFAyfph2yqnaqMrOl9Du1K69tyY8tJcd/amvX8asPWOOBCfKMpOCdZf5pWFHRGaByoMf/DkSSF2io2KK1oXLp+T6X+/9q6M7YjkbctZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSXbrBk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSXbrBk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AC5C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779158433;
	bh=vwlRakAKF/6YrC/SODHvZ347GUW1fRWRA5TfimKA0bo=;
	h=To:Subject:From:Date:From;
	b=SSXbrBk3ZfeFj2k5gSH9eie1J75OTmvDX1qeHch75JHuVb2gIDEOjs3foViL8NLYD
	 yht7NuLOzwYN2WH718W7Gdgmneybqa9yo4kVP8gcLDXnZU4NkFMTKiwuxJi//TH3WY
	 yJ5vUZatpiEa58IO0QPBw6kZWZB/MgPzqTR8CcgRYzRx7sIe3dgz/Ijyy9yQZySl+8
	 f12BagbxTA9nHJJP1lz0+EYssZi3ghE8VK+CG1F5jeaX/JJ7lGX3i62JgLlXkkfj3b
	 O3CBccgwRTMLpL7aFi81S2gtIQbf7AnvyPbDv+s7CxMpuNb+rguLaTr0+yo33GewYt
	 4xcFQf8ubNWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6833CD343F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915843373.15210.15407282938031606366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d895eaed8318e336aa80792ba5d1bbfd9cf1d6ad7ac7d14182447573284753a2
Date: Tue, 19 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779158433
