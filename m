Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0922078F2B
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754203194; cv=none; b=IG0wrI8/NcIxsAUksJmTQeBTIw3vsLhQdAU7K9jHnAj1kNoCoUVLrApCLu6TxpEQskt8JUfNJlq1T6DyMMBWPVDDK/Jd7syLoILG9m/tlja6/1Vyfu60uEafABv/auj2/Zu12301qQfQT7wUatm6gV4bGkCr0YuQ2PfF+XWmPCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754203194; c=relaxed/simple;
	bh=Mcg9QqoZyrv/mOjoMAZ72wOxf7Fnh78ZUu/doLUc85c=;
	h=To:Subject:From:Message-Id:Date; b=HQ3MX9J0WCMO+vmpv1AAfX3fd59ak5ZIVVb7v45VbvpPVnipQReYDtgQItUxgK4r7/CXPo/JNF5MXAD+Lpykfh9XUHSO4YLtr59EgAJsly1l8gVhaBpc/wB3YTzY9JO2X3vmB5Wfl0Xh2sz/pgPQeSp0z5vzY6l/H6zg1nAI4pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6akY4mL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6akY4mL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754203193;
	bh=Mcg9QqoZyrv/mOjoMAZ72wOxf7Fnh78ZUu/doLUc85c=;
	h=To:Subject:From:Date:From;
	b=B6akY4mL2C7wuakExAeoukFTEOiia3Rv9seN2GRCGzHrDBIuGn4J15obZT45WLzD7
	 x2y6bth0BJaDvh3CG2wwQU5O0Uq10PSbg5EZzIHzHPhYmq+UiHEGkJoTiVTm9R61wD
	 lenn92Ovt2plna8D3oP3fgMdB2FExg+xPzX8z1itvUA6Aon0HIkDBcY+2eEZjrd1O6
	 ICOv2m5gks4vvHvV51ZD1eBkExhEFOTlKFEZgJvZJR1E961dK1agqtT/SxR74jw7dW
	 2yGIh5KXFOGplX6CKUOQ331YfX6zZq98rxIERFryQ3C/p98OlSoIjZKaNRZgR0nMsq
	 wJ5HRxs/tHk3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC1C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420319357.28021.8195532913779742825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde3679a195a308dd8df8efeeeb2fe4173595b732a7aacc2f005fc76de185e32
Date: Sun, 03 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754203193
