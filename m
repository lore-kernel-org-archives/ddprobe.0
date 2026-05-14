Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CF7357CF5
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778783434; cv=none; b=TfAE2uRO3EH0g5Mncy4m0K/sDxGkmH4Kz8mJ7Sqgc1SAQNAokS3G43dffJp12tx92JOWWieykkuqsz3iLgd7zznEleC1YiprLGfPi38qBTMCk1z+RidjPV5mLrlv1cc5D+qPwDsSyO3C2c8WfLVKbZ1tKBRK2/ifZIbfeUCpi38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778783434; c=relaxed/simple;
	bh=NYywLdzdCbOFBKabvf8FiAdSj06Nwnyiu0e6eGYYKjk=;
	h=To:Subject:From:Message-Id:Date; b=VfAGkBikbZAtr3WoRbu1+GAfM9iKZd+VCmSuJL2QGifYSHgZ+vDnYuaSVuSxUzf+zq/Oz/84+zgL3pnvMtIUrlowuhPifuxEZuHEEI4VS4uGC5BP2Z1FLZ3TxB0aHUFQ1RfCxqaIybbN069tOuoswEO7113bNaBiKlivGMWqW6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIerqEUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIerqEUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8D9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778783433;
	bh=NYywLdzdCbOFBKabvf8FiAdSj06Nwnyiu0e6eGYYKjk=;
	h=To:Subject:From:Date:From;
	b=sIerqEUo4pVOvneA+cpTcBeCN6ne5neJw3P+dgOk8pynEan8Ch1YFJkyjQ6TMp8Qp
	 Fmh4CSWqC5oipGc51udClOhvdx2ahdYheWRMcrq83fna4Ww6Fm9U01ZkH1iBbjGsGY
	 eg5RaP0+w4tl1k8qvbqm6+W6pnmKpuioxNFKLDRoYU5IAjwbGrkGL6ndJCbueSs2xK
	 Xfge1FWsBYy8M/LnjVgdKtbfmG8/Wek33D3KQiC4d/RMWcOBN28GHosnQ22oFttnCj
	 LgsSpqof/zDBMsxUDoAzQHFDpvCEfpiQLZfhNVwaNnHvKcLTRK5rDNGchVcFycLZDF
	 GDSsovVRmucRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1C2CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878343368.8246.13853900933245891406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fbc83027e99251d90d129df87ee1a3dd85ed317505befac50dc8591ed3ec1e
Date: Thu, 14 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778783433
