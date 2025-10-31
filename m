Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E245C277CBF
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761880794; cv=none; b=NL1BE92TpdO3Fb9f6jwt1LHjObGfvn+GU2e2umLzSBXy0y1SKLlQg9hw/EiHVQEklm9fYC0zMqesc93DF/wNnyL6XzvYf8HjIE7ZVeAgu558Xlu/NdNjeRWky2uL8RTnxjvn7kz4F4fVaE7mdJVb/9zUV8xiHBKmYB+inUaKsJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761880794; c=relaxed/simple;
	bh=6zH9jRiCescrfYQwC1C4a/36oNdFoGqwwUFA+a6H/5o=;
	h=To:Subject:From:Message-Id:Date; b=nyu65mwBDBJ6SDrWFNW9wsnnA9jBB01u8KRsmg+hm4KNJKQ46mYVGqChjavyKdBXRGbmI4seTL8ZOokPl2tKC+4RltwWedWeLSunUamwe9G6c8rmaoY1TnbMihlYBd52ZRdSQquOl/K5HAHM/qRlP4bMu7r7eMoEgZlgglB2lE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dj1ZuxlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dj1ZuxlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A141AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761880793;
	bh=6zH9jRiCescrfYQwC1C4a/36oNdFoGqwwUFA+a6H/5o=;
	h=To:Subject:From:Date:From;
	b=dj1ZuxlEbwSB49Oc1IeD9v8mNLvgdaaqBn7M6XkodoRFO080kXDeHVkGBfcBduyzf
	 HKM2VVyubrL8QmsqMqIBbecfSwz+APLfWiH/kIkk1dyVrHCqTDDBBp/5nZrtNkOh6C
	 e2gzFgQS1yTdV/CH1RnNBKyPw3m/BCINrMNdSUStKlGrCKdhijExrUk6x1e/1ta67/
	 TiMsWGuBofFeRX/9YgRgbCYu+oBCu/3pGdSUKL1/9MFfXeCJ/F8fuaWDQAVdBG+4iH
	 ehwAnY87oMvA1xDaqvO1UO7z3NW+y3bKAUXTTzSqNBaDKiEPXC5xGIigTBO9VVuePt
	 yzX/uOo4mxK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C5BCCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188079359.15196.5998479767768104012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a65a6b968cce49b268840177479ce4be76f67dc7fdf3d53a5f9fa2f69750d0
Date: Fri, 31 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761880793
