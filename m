Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F552F3C3E
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773307494; cv=none; b=ThnhwxgYAk5d2wmUSFEijnuPfJ961Dqv2yTIadUBYfquCeb8c+MkkuFuAM8fwbF/c5VGn/AkbjvSQCH0dlfTINFiu2RF8nESoHcrQbqDdH4eldLSFo5R4Dyy0UtxVG1pWiuT6iHtWgQdim9Pdtpk8NM4dsXhSRM0pnLBznU4G8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773307494; c=relaxed/simple;
	bh=vaR32xXs+lnHowB7HzaNBtEq2GVkaFNbGQfWloCHd08=;
	h=To:Subject:From:Message-Id:Date; b=Eb1tzN9mPhj9QQHM4abb63i3yLCenhfsouFjoKCt/i2al+noPIrReAcPNYwNC9f+gh22qgmrPrVEdPC0nahCieM9jIrTTSsPcywwFue414L4jKbnv0EMa7vpmeDTljUVEadKh55TO8Q7t/cs7FWmY3FAS/kyL7PLRnaLh6rIAAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh05bbOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh05bbOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C67C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773307493;
	bh=vaR32xXs+lnHowB7HzaNBtEq2GVkaFNbGQfWloCHd08=;
	h=To:Subject:From:Date:From;
	b=Mh05bbOtpCnjGLFG0pofmBwIMrej99erimViHv5zTaXyr+2zdgfrM1ez213LvGCsi
	 /kUfTKT3H4kwzhDX7Fe6SVWS2rf8nqLl4IR2V8o6m3M2POmRIi14ON37cjTsYCX/pM
	 ZYd5BhR+S3pE3oxTMei0IYfXUx8fHjS+QSWaIM8BQRMSI6TOBOYUEmggr0GWDyppVW
	 tm978+ZpK8Mu0tULKpAUTxk+3Alckg53iFnNttYlLauVji9HBKh47c19xb8YVnhgt6
	 rRzHOKzr0ecjpf1TDldK+ZDEGkVFQAHKW96MCn4EgYCcSyb6KejhtjuRbA1M1yK5FY
	 KGisXUo0k6Jcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA8FFED2F3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330749358.7112.6873867042599244094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879fb858a87654f1eac47a58b63bcba8a8ae0258e73d1f3cb43ff33e44553d79
Date: Thu, 12 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773307493
