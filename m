Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383E4275B1B
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756853394; cv=none; b=PvZHwz2q3VPPuLScOGE8bLN/kpPOh4VcD+Zb3GGXCE2I+wys4ER6/eabCPnNJuJ5yTFJfTrBMraLLYqGP+gqP+RFZmCWLsaOpMtBRaAbz+OgoIThihhmOX5AFyUc42kwEdYbr/saqH0aM1pW49PZMsoUDMIcWAeIXrpY4FYJoDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756853394; c=relaxed/simple;
	bh=z67ITvZEK7hxvlm/2GwN0XOdkTbNP/24WBQ6hhisHUo=;
	h=To:Subject:From:Message-Id:Date; b=RTqBq6CDqAhE25TAMlpv2xDXsn8euuImLpR8AkteFfqWKBYBwn8GE3Lh1o+y+XufLTKGi1Q0fTSC9gG/Igp3gZ0Hss2n3VvGV6YpH0XNxwA0X3c8Ipx+kPKRC4sq+EPgwcbAq9el4zOCF96QiwO05OSU4nucnJRCyOFcC/sgydo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFcsbqFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFcsbqFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4048C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756853393;
	bh=z67ITvZEK7hxvlm/2GwN0XOdkTbNP/24WBQ6hhisHUo=;
	h=To:Subject:From:Date:From;
	b=eFcsbqFI7ZQ2jdc/qMq1WnD5X3+LGwBfM8dREMUJ3PbZWFjj0DvWx6hvugxmiUiKF
	 eis/kkkGSRc/0N+zbI42rMEZWT62EXULZy0dUdJWBw10Trr9Hoayo12VD9bNHeQ7yj
	 doezdCGjTSyUvc78Cp+J2VAgJfWvfMw8P7v84XRG3krNjwo1pff4q6hP6bTDcIgvQk
	 7Lp1LdeS1QZwOMRz+1WZok7nPvcGg8vtSzcJtxx49zdfiCG54s2yXwUqfMnWuHDkTD
	 EB1mf3fSZY1mn8P4+ryqRpx7OK+gJ6Vy19wJoA30v/SVpSIXggvDxInKgdJYvsrNX2
	 TeYbPotHehWew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FEBCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685339358.20182.9839463177672930553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cbc2263bec9f620326de5d4e9426544ab45c5d52aac15ed3de24dcf565eebc
Date: Tue, 02 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756853393
