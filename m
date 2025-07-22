Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F881DFE0B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753196394; cv=none; b=mzLD46RDbWFS0aQZAAa+TW27NGUVfHQRlcGGbCdvsSJxgrd9EUmElwvAV+u9fjS8hvIINxxbPIa89prhaoIhEZ4kZAU7ioBNlwGCoyZay2AYkgIvNAlgfOvAbW2SD0IsW+mkjmlOmlat9BGrQP4HNzwxMf+5e69KcI9ce0YQLI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753196394; c=relaxed/simple;
	bh=xF1hjHrr+S7yq8AdjL24T2U90/hmnAu/IQZMxo7W8IQ=;
	h=To:Subject:From:Message-Id:Date; b=IPW4vMiav3Rh+UJxkfdVA9DyjsTGT8H6W4nVH+j6SiMrNI9GOWTab/2Q9PiOElRg0V+HoEheASrxckekoU5uvP9f/Eb6nWOfr4JSyvti+MB/gd1l6/8RABmNrwdf1Kd925YP0wyAebeV8karbwryCB/LL9ac/9NQrAdxi/P56C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2/LD5pg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2/LD5pg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BD2C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753196393;
	bh=xF1hjHrr+S7yq8AdjL24T2U90/hmnAu/IQZMxo7W8IQ=;
	h=To:Subject:From:Date:From;
	b=b2/LD5pgOoUnWbNntxqP/c6aL/CwhxHPOtcZ11knKA4J8xjVTl/Zzc7JQi+MpNXwk
	 2p7ys8DC9tAai1AWdgsn243z1ciOAPKARCBgYOu9VNrEesqMh/q3sXkMUFjajtW8Il
	 qeEzgnVkkHADjwDfSyAtr0PzspJncxwQ52Cvc5Eg6jd8xP6GV5pPr5J64wM9L98qHn
	 TwJ/ud3uYxU6+nJiJceocgQa1RCE/GETLvzaNynzH0UHnAQeJQAAz6ouXIUb3Zn9Sf
	 tBqsYYWhleuksQHYQPiydAQH39Aj+XGwHd3XM1EwVSavwjHEqVXBQtZYDTvohoo/Wr
	 nj0ZoO539Xheg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9106EC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319639358.14938.2460380304070732502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcd17947832b3c620f33e790092c848a927673bfc0614513f6cced17579f95b
Date: Tue, 22 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753196393
