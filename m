Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642BA212575
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762613394; cv=none; b=F4crG2MsQB0qAuuuBw7WX32zRmr3V6KXizN4NkyjLq0F+dBJY3wmpVeEP3VJoLLja3H9L18ZsKyhFFCbW7YN7bb3qZYFOOSxi+35MTAHe7aga8vpKwCGD3HrDY2Jlz1cIT1gjXZK/OIURxJAphTfw4WgHMHGlG/E5Q7SELVg+rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762613394; c=relaxed/simple;
	bh=vCv/DdCNMh4qDzF4gf47ysFajMKX4SuQ4G7moD7iLYk=;
	h=To:Subject:From:Message-Id:Date; b=GROPuVEKBIgaLHSNEVRvnL0mMqNeFGzN9a0Q4oDeLVKJ+Lp62UW3aL/IasfYD+Tvkytt03NsF2yteSUFikrPWoyaXM1kBBPDLSrpCLTdPT87DwvSHOrkGIm+r8rEWdNZ++9sdryfDxtKDGMALHqmX8rUwmc1lh1w4I5IQ3BvfVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hX5g8Npd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX5g8Npd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6064C116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762613393;
	bh=vCv/DdCNMh4qDzF4gf47ysFajMKX4SuQ4G7moD7iLYk=;
	h=To:Subject:From:Date:From;
	b=hX5g8Npdi1TBzJnHcS1NjAjNdhygk0ciicIGqs/aMtC2sL8ZF2MjoaoQxCbf4kMyG
	 HcC4S90+FgZaenlQBfNlrCE3A53cnNsGS0Ondwq9yzlSunRE4jJYXWts/evlSWcyGE
	 EYrzfXkmv7Ml/7L99xxiUUH0D0V123dmYFTsB7HxCFhCsyeRZRVFyEjEGUh2kvo1M9
	 e24ORYR8hJ/cUUjavNW9AgLMvBVWhL/xLSM0aOlfIq9cRAAFNWEQJlQjNRGVAnn5Fk
	 vdHmsM2oDOTs8YY+Cfn/WA1r0CGCyeWZdwcx+ZwxI/gGxbq9F3/Fz9UpMbQVJH8CbO
	 qV7WdvsBgsMsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA26CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261339357.7551.17675598212584172721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3148215788396f7c6bb690949445ed6006a9a43603010fa562f2db9a42a099fe
Date: Sat, 08 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762613393
