Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3E314AD20
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766827434; cv=none; b=fOh56aimDamOV/tLr1xloqsLOZxQD81vlXxxHSmvMY9TQihvF/adMko55Jgszh5fI3fAfnCZkWG+C1G7nGs7DZ2+m1WGtgaq27NECz7e3sNmPsdolcnKLUVH5tOlBaO79lkJRCVfEKs8bsDRy0bKZRpi6xyfJ2ch6Ba7FDfWW5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766827434; c=relaxed/simple;
	bh=GBZ0dx2cSVsFwtj+3Gic1Lp+nAty/LZWZkH8Gi3VbGs=;
	h=To:Subject:From:Message-Id:Date; b=KDRtUU7LhCbNaTlOP1Sqi+/sUzxc3Q/Ip3mIUjaD//vl07lCuUZXBYg310phN6MSXLSyZEHwxW97amxO9XImeaogZAI8Y9HHJ4mBeC3xiXWPnG2y0FFKQapL0GunJM3P73YveL7zhHeWK2Tee9KxqhyzafDxlumuGdHKSpn8jbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UT9RXp+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UT9RXp+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8E0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766827433;
	bh=GBZ0dx2cSVsFwtj+3Gic1Lp+nAty/LZWZkH8Gi3VbGs=;
	h=To:Subject:From:Date:From;
	b=UT9RXp+fp29egh2EnN1BVRB/c7ZR9Lc06NF1881NK84s2ChwdlaqnLnq0ycYLFjrV
	 hWaLz+X7usTQzNyDHW46a/OhOKC3yG1BFr4WPzi1TBOmW/iC49OVRXmAR8/nJ5Fq8x
	 mK3lqL29lhTfZZrY1BlvpoUK7G3BuRuLONDAQdfjJaqSmyW4YBmg+cyBFHq0vtAF8c
	 hN5O+1NXDqoCpOlzNTfBoN/khXU/e2Lm5oDsIGTKGeo8XhTkKEom2fTfJb+jVKwTVR
	 4zOWaCflFeWAS3ll2C1f3OzNnJzm/BtwnQrtuR/hrrgSrTX+0bMiyFOoU9jYnhPlVX
	 sXxnRoL35IAvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C9DE8FDD6
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682743359.2057.11714162139546096091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f87ac6faa77418a4c0fdf725abed01663f29e887b30f04b5e565c1fc0f46c767
Date: Sat, 27 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766827433
