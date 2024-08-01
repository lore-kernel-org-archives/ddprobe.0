Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4433F13DDA3
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722545154; cv=none; b=ORy5wzYhkPc2w/Od95fRmkQFcFNBglzJixHQDysQpNV+OGD8c3zk+VgWyMtQhFxnv8908KKCS02YSP8E7qoH/LWZ6t2Omg+tKlvJri2QvPj247X4Y1HYehrOZukVK1IDa/hLFVjtkyyxFGl/5mfGPO3C2kGW7l4GWoktYdjGpYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722545154; c=relaxed/simple;
	bh=vbTXyS6k5saO94/6TXYEODL76Gw2Z0LTdaOauTJqmd4=;
	h=To:Subject:From:Message-Id:Date; b=UHPiPuDR16jfXoM39iTgFHUMEaG3xNGhAzJT1k6G59n+f1a8BOymNOlv2bDm2SgzlPJOejPk2OcmKKlU1SqBhnqgnSTlPpS+q/JV/YMRONS70KsKoV/ITQ1pIIIJSSnfrC9AQiEbHBISHmpOCZPM7kyOArdv2xQ47zKfANujCA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9XfDVRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9XfDVRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04B8C4AF09
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722545153;
	bh=vbTXyS6k5saO94/6TXYEODL76Gw2Z0LTdaOauTJqmd4=;
	h=To:Subject:From:Date:From;
	b=F9XfDVRQU++YBFQrO/QVPHu7i4lMcA5lEPA9lt0u3h4/89KYUufxizuCnMwzyHL43
	 mSKmVimQGlA3u9eIs1Rf728Ny9j2KxnwqfQsAUsnJwvLA7Q8Nxgskt8ReyPEddA8K5
	 Kw6D5tdnI/kU5LhN2fnxSN4K1YQBY/xDmv3PxD6eu2a6HeX+cxa9g0+HwIPFl7A/Be
	 rA45H43DVJCToj2z6y6fHNxc3jLxB7xXjqQ9xJv9AgpZhlmHMawFnyV3qKRHCVW01k
	 gwyoiJ2/LgRHptcJoidyUjIVvO0SHjDC9/mjci4OuhFLYY30yrb5jyl3zf9cMlfOxo
	 pDriA0jH5axJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9006C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172254515367.4111.5892953187967562492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0862df0b1ead768b3ddf5cb8114b4e7a1e8186447d2946ad127a0fb244572ec5
Date: Thu, 01 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722545153
