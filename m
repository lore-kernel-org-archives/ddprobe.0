Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA174644E
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728014154; cv=none; b=H83W52ZkTuqFvQSdGJyw/pv4h3PFogSbGcMGEktYr/SsgrzTik14uxhZm77QO+wYzs3aL9jOwd28xoBKeeWfaTNSJxI/7vtUg6FtUm7z60CLdNPoyKQlCqsJRs89nSDWM2JDrEtavfYYh6R23Kg/F0RUyBrTzg/1ULAtLMksNME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728014154; c=relaxed/simple;
	bh=DSd2D7oFF/gvQbim6RKdR1Dnaog0XRpW1VIjvboFe2M=;
	h=To:Subject:From:Message-Id:Date; b=V8axuzP70gGm6gqJ+RIphazX7kncsXkRMsQ0GTf00iJbpscN959GQXGfQuUF1IfXtbtT4/A1xZ6ZjG3IS7ErcGP7ttM0HAP0VvSFZgmG3We25cfFndv1Z8vvyJh+JzBW2ylMC3fSd6a/s00DWKAjH6Na69AyabHVSqtY5k56Isk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEKQ4fcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEKQ4fcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02C5C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728014153;
	bh=DSd2D7oFF/gvQbim6RKdR1Dnaog0XRpW1VIjvboFe2M=;
	h=To:Subject:From:Date:From;
	b=bEKQ4fcVuPPA4t3GkNfSW/cvLkkgu+KZLmgOYqIot/vQ50v3wrpOWwcvA14vfIrVo
	 1UYeTguzmKzZh4SaGzVa5scWBftKLpeoshlbHc5Tkp1E6fMe0qR/KszAEuPukxfFSa
	 /hxnirZBgrg8nww9mB7THXvAjwcGK1oDCDl8pFVrBg2oEN1l1TcBesgEclkT4l+cB1
	 q1OUBUDvRJFzcBN60yE3QG8yBLsHKIs9ke4JjWxe34+OTdN7L94rQJoAhZVKSapRz5
	 NZmw2AaCcAFyowampfw6qQpEal0gdtLjq2PRddjjgxXW2AAikHDGR0gI/mChxsRtRX
	 fdCO8+igzmKaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E095CFA745
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801415363.11214.2677341791443506011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad76aaf38d96d0964512ad45ba26998dd4e573628bdaa6ec2e1d652b1514859a
Date: Fri, 04 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728014153
