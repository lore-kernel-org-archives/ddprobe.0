Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C32822157B
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760345994; cv=none; b=oZVBd1W9EHPzvlUEZvRhsDSOQgccmI0NLhtGUlI0szBGZU30pR1mZ9N9MIzd1WoRVDBOdu4uFnffQT47/g+vW0roroNFGgiF6N4KxArmiYaWXqfWbOvC+HnAftFoUdhSjKb+4JobEt0Iu2tmpGQtsJ/6nKG9B9uYitSrh6gEIvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760345994; c=relaxed/simple;
	bh=IqgvOE8OUgTUZ/dwyshIYIn0WkFJSSEz2iEp9OUWbLc=;
	h=To:Subject:From:Message-Id:Date; b=l08ppwo2y+8hJmr2OfzLxjEVMABUsJSj8I15eOhEmg9w3t851miP5SY4P2UtA2iJde6SDJhjamHlwnQd0umzOhggbayaDjS8QmwjPOUm1rqcJi01AZbZcnfCunQuP8A22IET4DLevny+xfbvIu/roJ6L+ofiHCmSIRpL66ErQa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iurID8YY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iurID8YY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13A4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760345993;
	bh=IqgvOE8OUgTUZ/dwyshIYIn0WkFJSSEz2iEp9OUWbLc=;
	h=To:Subject:From:Date:From;
	b=iurID8YY8R/Gv38bttZg9dZzccVRudGOf+VG8Sy9mo3bWHETRKB7QoDHuudAqdzLz
	 BHNAZPs3UL2VuGCgNSp3GxAdKEp8Rif1cHVafv4q8IFrmcRTNCTDwjhFZ5K7tkRAvQ
	 JvrONGSLDM1611bQzaj024tukPoGi5JcPXYabvIqDdTHA1E3f63YvCP1lgUQ58YmCr
	 6l4KV9RxGw+/r2G6NnIWjT112ja5tKqiYrI5Pk9jd2BEA13xqkH0tqkZ2mQE8ohIwJ
	 u8Eodypl++1YAL2QQDg54ng8ggnBWyBPANJSup/Tcotk270+xlytrLZ84fmeyKN/Wf
	 Q3t3DLnVBtPiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B5CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034599358.9716.3604394896964844606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ce068615914bd06108ec3fbc12cb24d81c2a45c02cbcbe45c01fb996d82aa7
Date: Mon, 13 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760345993
