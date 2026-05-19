Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194FC340416
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779233434; cv=none; b=fSXyroe+3p/RnRCRgWmmz85CwpX0b+rt9fsr4e0a+LSx9i5ny/B48mKwpibj1+EErytVtnsp0YKZp3+p3LHGnNwZ8leej+jw4gA2+4FaExfqgn7U1A18oD3qFWe4LL2Y5kzoq7DvsbkbO+nOeX6yFwF5pN6Y9nQy/mi+F+memy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779233434; c=relaxed/simple;
	bh=ghFX5bFYINoHcx0QAwuvQrU4EX8lbhhV47+hUh0dG3k=;
	h=To:Subject:From:Message-Id:Date; b=aLOSFbnmEJiO0swIZGGo8qcLL9FKGJH3rCFvqAU29YlpQYzuoySUYY5hl97CsALCaryUeyOCxZbv7eFUJazZJWz1y+/k8rbBcpMksPJHOyBgMZb2Ws+IkK0R0ZL60uBlhkWi7W+cqzSft9Yr1UOUh2nRtdmHzkKvS9bN8jem/tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T60BF+UW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T60BF+UW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57B8C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779233433;
	bh=ghFX5bFYINoHcx0QAwuvQrU4EX8lbhhV47+hUh0dG3k=;
	h=To:Subject:From:Date:From;
	b=T60BF+UWg8NNPFC63sQOViWoCHbhL+AtYXQWcNvj7QdZw8qMIdrFqlfHDcLJ3Q5uZ
	 A67rPd+/Esx7fxYT++Ey72zlYQ5wJ8m5qeu/vS/wBBZWRIyA+j7sCWI2hjWoMl2JrI
	 Y6kGbx4Kv9eHnd3+tdVXZHPHo8rHCtixK4l8OVSl1TOhVJmGSdoBD52ogkGqqclLQ1
	 e0HpC8M6uVYXbJ+r+rdnjKVpzeuWwEXBGTJQRbZtsbpEwHOmmupI9ec3Q9kzNV489j
	 3y0I3LNHsXYenWBrJS1SCtrmwbr4+7x3Zl4Sor3wNw6ihPcFnp+VwV5KMRp8Y4/qMC
	 gUrPlyz/p4MkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB519CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923343369.3331.7418060324340014090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1bcbf85096b3982e1655a5f07035a7a175523d5d98e82e688cb4cbf392c410
Date: Tue, 19 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779233433
