Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D0634251F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768964035; cv=none; b=ouOOILxeH/gaZDftCrai4Qo363c69kcNj2tIChtHQ1BvPi7NsyPpxWTevIRF1EA4lS27G13zgAsnXD3CvB8+eLVOJov3pJI8d97BdC3W8dQFQT+RYmhpzVtEfoDONOt4/1pz4zrv9TwIUdR/r715LygGI2awu4UZNB3Ami/6AbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768964035; c=relaxed/simple;
	bh=W4T/YWa0wAGZFlM+AUdUpR9MPiDHOxyprP4PPpTBcTM=;
	h=To:Subject:From:Message-Id:Date; b=Sp2uPhkJv/P5Bpo77XWy/03x6kocUhZH+3oPpGLYUKTnBuSasGaoCwAH1NDjJnQ1gmyHC5BzN02AgWf1zyo+3KRaLvgNWPRWskso3UE4SVNoZUcEIashMGF6OdApY0sqr8fufK+t4I+JBIuP6YZOcrWltBk3Z+XJwWfCzRDql3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oe5oCm7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oe5oCm7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ED2C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768964033;
	bh=W4T/YWa0wAGZFlM+AUdUpR9MPiDHOxyprP4PPpTBcTM=;
	h=To:Subject:From:Date:From;
	b=oe5oCm7mIgwzIKu8aXAk2HB2CM7lm014WaCeUchBPP3rP9iQiL7tIYRC6ADLOpiY6
	 7ZbApLftYh2dpP2u7zL6quTO607BZYKWB8hqeRHsJYi9hKNyTj5yUOeZfz4FYbC9pd
	 CGJ+AyLcgUmBXELYqDrkkb0fHE57K6CqAyUJO2T4i0vpTBd1zg3EtKPzz1mOWbo2/M
	 aR0ZlmRgIkYAbX9q8PgilkjewCmHoI8YW9lKDyQhtTicnImm0h+031Qih/20hlgTPZ
	 tcIpekJlYXgpt8m0yNc/0VxQM8no8Z3V5XNoFjN0wfsyUasrxoqKNKMBThQEIPOR+Z
	 n7D4m/K1d1W3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CA4D262BC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896403361.30897.466681913994811197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d55daa533ae0f2c85f63cfdac2a095d305cbae38aacbfb1af0672a390d5606
Date: Wed, 21 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768964033
