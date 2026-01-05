Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E11032861C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603234; cv=none; b=aSerVNBe9GpGhrj1gK2lqu5ZrR8UmLGoZe6us52c30QAar4rLxStPS+k+TUIfmvIRE7WS1wW8W7SkfMMogx3//3JVeWoWGAozGYKNN8DAvXKF238rXaaFgbL+AQhsiZgYVtcTrd5PmMU1pOSnjAP9jO9gPpheKkxOuaIZIYzf44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603234; c=relaxed/simple;
	bh=DgbF9KcuNKc694y4gYB4ZigKiV/peRxyczNI8T/U/Ww=;
	h=To:Subject:From:Message-Id:Date; b=lH/uysqLTONAr5dzhB/xwEH5cA6giqF7RDPA8u6xiAtgEq25w6/k9kFglZH0J2RiVvS3i/v9A6tt4aSL/4K6ChakW9FJ/CH37HqPU7cVevEu7KI8BS2/87K1um5cHGs1cqx1fZAI6GhiI5dzHk6M7xsZYuAzoUHx5n8OI8B0Fbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9ubBrx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9ubBrx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EBFC19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767603233;
	bh=DgbF9KcuNKc694y4gYB4ZigKiV/peRxyczNI8T/U/Ww=;
	h=To:Subject:From:Date:From;
	b=K9ubBrx0/HQ/aHRC5KYdUNR5T2rvBANTQXwboyKzJtwwD8+P3CNAp0ckwi3vphgDe
	 FHgt4932CAjuOvXbeFUJAyiMfxhOOwl+0z4yg+E4oXV2y465dhm0Fohd2VjkGjNKG8
	 gIKAApK3bRZ5jrvh1VXBCispqm/qsFn6IkpXCp9VM6z5qHcdtkhfgV7gzKhuUiiyL7
	 HiZcf+MwDJ+OjdcFSzJWw2gss3iWi2CyZMQ2HtgFSsn11aE6WvN/ETmT+4DOZZm4MD
	 0fn2g9KK/27KflYVy6DmHTlriNFif3I3uIeYZpXsBjVeoekkNiFy6MG3ONYHBbzzVX
	 4S/kfcm9z4ESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B55C2A075
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760323360.28114.8194638492339387630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a995c99718116929d35777bf63312ab7f058ed20bc8d1a651ab1be3c96ee2c
Date: Mon, 05 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767603233
