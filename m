Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C0B42AB3
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721720154; cv=none; b=OO6cE2Sy4VJ9Hmq6YcpgU1kMjgXrgZOcq5Ak9mu2XCnhwDbLsNS4iTCOZ1cUBjwBVcCbxzyBxFhKP9NIBwoHcro3AajGtV0LPc8P3g7iEq0H2aTods2NEty7GUFU0zy29LuJLnwadJ6S2ll/o1oc3pU06DZMdhdn/iBORvhEyTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721720154; c=relaxed/simple;
	bh=P7FsJJP+AGSglt5U/ajXpgpkfFg78mlfTps6xliJzKI=;
	h=To:Subject:From:Message-Id:Date; b=D9wKeakOurcCA6TXwZOLEQiopGuunqNOI8QxlEoSvsCnAiZrjspU17jiElH/yjVrK8NW3gMXsiHuenHd+3RFrrhcT528x0LFy62BF3+yzoFtWG1eIPT5xawoHWp/JfvVFka7+RMxQUboVvFJZaL+yGOAQx75ArpAvIOGtZdGFGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNQI4hev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNQI4hev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03FDC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721720153;
	bh=P7FsJJP+AGSglt5U/ajXpgpkfFg78mlfTps6xliJzKI=;
	h=To:Subject:From:Date:From;
	b=uNQI4hevY/g/tuDoaKg9HRN9o5uB+oSi9svSdtPO32HBFI8uxY7zmNo5SF1KUmGvT
	 f5D3NT3HG1VG3xvVFoqP7E+cos7gautjPMzoYS8HcP+TlSb5wJ46Cq8iXtSkLTB82H
	 eGjuIdm6+o+cM/X+MLYI92Y/A/Drlq6k5qnF+m+i38genq0lCD9xvwjVR+OVQ2Fe18
	 EK1osnBzxhHMWO0DBtPKdUvZbf1A0Ppm5XjZ4e8iDH8cirxSdIYj6yaeRTw5hLNBSG
	 /irllBzQaynEHE+rEkICeIe6Bqv1lJNud1TWAZB9455QPIfgDRVbzgLGHlEkRgtNmq
	 5hMXYaAR10pIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6D1C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172172015360.20134.9980813138973053795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a98e5842e285703546f65c1b3f6327bc54cadabd963c989df3c4031f963df94
Date: Tue, 23 Jul 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721720153
