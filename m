Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3283F39185A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778644234; cv=none; b=rNEGSf3Ko8glXgJ04ZPryNaOzAe0gW3/HEuMOcV49+7DmUPWIdUKGfadU9sLpmQIGamMF7uv4jguXWOGq3nK1jrkpHdU9FSBR0B3Izq3Jx9po22TQ/Q/14bPAhx0xLTbIlzdbYosmyHzvdm+H/6RL6+0GVrI+gaGOpJT35IHR/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778644234; c=relaxed/simple;
	bh=Fc9GAUhYw5NrOLuOzY9JLcGDVpRE75kTv/qZEb7ydMk=;
	h=To:Subject:From:Message-Id:Date; b=Ime55dTErmp4H2I6MCyc2VbC29+xO7omYJ/YvsS9zT5A7dwQFbVU5dNhqQjA9cS//rVZj9T/OoZF8tCLyU3ReEOeTj5U8VmV2y3AX8Vc0WVLQT/0aQP98pPh5KasfVRU/6j7jU7e294btDk9pCbaCBSobc60VkwO41JiPFT1r5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvWlSNTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvWlSNTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF358C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778644233;
	bh=Fc9GAUhYw5NrOLuOzY9JLcGDVpRE75kTv/qZEb7ydMk=;
	h=To:Subject:From:Date:From;
	b=jvWlSNThlZM0G3pwoKeSLDlIHc2sJGMpX+hsFadpVSEOCtfVfcS/b47AOpb39zVaO
	 UHHw9C6gEZMm+0X/MgVeWSzCLp2yWLtm76QEyPX3hJl74KSQ0jA6pm9cd8fC3IQARL
	 lQQONQNDe1t+hGZqrKIX3spiwnF6qo/hgcPJWhvfvp3GLA35xa6atDNm4My7LsWNmr
	 qXGMpDeNL2uSK7kAY6rg9dhQWjXbuDh0q8xRbZnh4o63buH7RFPc7lo1LJmxvCOsza
	 Tsul1OJUPcTLEzgnG95ySuT0UiWpVQah5/TZ0v4YAdi9wlAAft91s6WoGukibwedZ7
	 U3OX5y9QTAKoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB570CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864423369.30176.8244522754953208315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb2719aadd6044017de98742793136899c4cc8bdb6e6ddf0e91be90be89cf00
Date: Wed, 13 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778644233
