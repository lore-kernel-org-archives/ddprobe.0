Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A6B1A256E
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778117854; cv=none; b=H6BtByZlCDmseHZfIgTNIPuuh0rH4iPXhKFhyl4hGjKz7evfGKTuNq/x76KPUxJ0nLHrusrxgFPJu+abjDYuKBBxQ26DFGu1PpFXJiDO1Xo5bFl5Tbv4w1LBcLIteJJRGXj4HbztvD0H5e4dqu4CLVDBOQ1Tvv4Q0pb2v56LEb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778117854; c=relaxed/simple;
	bh=kTMquVFeLM3LjaWZ61OBzmazRTjpuq+W8Gb9hrDrrnE=;
	h=To:Subject:From:Message-Id:Date; b=oNQwkxsBA28rK4QDe8/jwsZKMS23+30nXVtHgu58BlO4m3WJS/wPcWl5n6zC4H1UEqGy1nYi+Yq++7OcWNeKbOfZzk++jdSVifmcJOkJc+xJvGWsoK/Z+LLF8z9LMRD9CrEvHQO7wv0Y5mF5vRlkaVRfmRzYV7gt3UaOgANn7Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwgb5dG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwgb5dG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3809C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778117853;
	bh=kTMquVFeLM3LjaWZ61OBzmazRTjpuq+W8Gb9hrDrrnE=;
	h=To:Subject:From:Date:From;
	b=rwgb5dG3sefmKooeV5bAFyBc2ymRF8mfbuMb7Xpt0EsAh7KMu/tkj23zv64dZs5mo
	 nbjhmaue3pufHB66eHI50U2pv2HFYkSmePzfsv1vdNV0n1iu3moxmlvZAGSkZfGd7I
	 n8wJ2N8Z660K+JEP/eSy/UjsoNH5fcqNVmB4tPMobJmSS/T0JhFNNye2xyTnnXmdmW
	 zMVit3/TJanxjPytcAHG4PDfouWo+RkMCtK57GNeFIqgO8i38Inzc3Ptoku5kOnY0x
	 05RbgOL3wjc8/yocPN0TIK8vlcndaYD7FFw8A34/LHwdk/B6flTMIrM5tTc16Iths1
	 7uO/T4XkInLVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E80CD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811785369.18793.3250720469173128495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d088fdc2a90ebaa31f69b2089770100f59c15392d6132f348978f90a22e07dd1
Date: Thu, 07 May 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778117853
