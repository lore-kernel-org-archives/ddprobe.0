Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3F23DA7E3
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781177194; cv=none; b=NahuCHm1tMD/VRuFK5Qt7m8aN9Tit6FlMTWut9sv6PmbhxMWcPrgyosRA3XzXUvx+Z9DVSmNJ/KF2/u1AP386L/mGfkYZ059uuYk87gpClFJ/BR6u7C70GzpYeDMoBlME8LyO7dy2gQT7ICAtT53uYep0ODjtP9g86dqIPRlzYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781177194; c=relaxed/simple;
	bh=4dnMLjfNY31K2v07LM2svpR9OL9dpfc3Sxg52Wfn0yo=;
	h=To:Subject:From:Message-Id:Date; b=kFNVBPi+mCn6mMqTdmGo1nTW2SneU4yFwgWjqWmSkNM1jlSw9PF+EU7Q9vFTmZ4YMdDso5nZ6LCifRyo6QfdPyBrEhXW1WzjE85NvIceKuJeGImlL7iirf3dWiLAGM0SDGL5wunsR72pTkapKQ36l9QRFcvNjVZtAROLKjR+FtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jr78JVyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jr78JVyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF0FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781177193;
	bh=4dnMLjfNY31K2v07LM2svpR9OL9dpfc3Sxg52Wfn0yo=;
	h=To:Subject:From:Date:From;
	b=Jr78JVyVVIOg55vqtwRIPb7vuTLIU0+0R+Lr9ZMQtkM8Zt3t7AcYjCLQRFEcMd8/y
	 /5wcTvpFlkNrBwiYGqImImP2Aow9Q0V0D/LX4sik9IlVwO0YOIN2dn832j7z2P/+7X
	 m7AtPzgNjIOsEAnWEsc/U05JG7LVy6IJ+d25D1kwtxpN0QWfjtay3Pr9R0QBaQhwqE
	 8j9IkBquJ2uLjeqLtTWH9AAg6eIM5SgzIH5xP0AdUzqVjaDL4WbVfRQxPU0Arn5CC2
	 HDzxZx9fSo8PzHrJ9jSEPohU/c6ZjBySykY/BxPouQAsQafphVmy9mQrj5VVykIc/B
	 nvXODvGHjixHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF67ACD98D5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117719370.23562.9317272688318427355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262a359c04ad3d5d1578051b6659050bf00089fbd305fd7e672e815d4a8a471d
Date: Thu, 11 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781177193
