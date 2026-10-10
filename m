Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61098457E57
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791631234; cv=none; b=Ov9wVre1o8SEEKFnfzx3oJia2YTZubj+dQvRve4LeDPwE8LEEr9pCkv4hBy2gmGu7+fs6ADTp37wvnRgnIeOeECXIsjj0Y9Ca8wd65b5XJIPCV/u2t/HuLKI+GLWrmV3CpINfQPxT0ut8ziH1PbfjdcqzE4tMHo5dpmSHaPDZKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791631234; c=relaxed/simple;
	bh=R3olDZBICWlRQiWtA9bbbxj5d+lEnvYd3lNdkIcr2vM=;
	h=To:Subject:From:Message-Id:Date; b=O22Y6CRx+w/J8oKoCFFxFi9tl86HUJM1LO9uQaKlxrszBbHUB/JMJ0aR259nwx2Pv9zwdJDJEqfyEJpyNggHFmjHVhFsYfGLORSTnSIWsS7MtzuQEnX/Dci/LR/mWBZAU18OKj7Pon4+uKxUukDCQY5p+oRp6EhqOTFsO2szuN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JN8ZzYp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JN8ZzYp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE888C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791631233;
	bh=R3olDZBICWlRQiWtA9bbbxj5d+lEnvYd3lNdkIcr2vM=;
	h=To:Subject:From:Date:From;
	b=JN8ZzYp/rYhe4hgWmQFocx/9g3ApIK2DhCl2hIELWXIpmae6Mr3JroqzSUhLpknJI
	 zQEL+ADIcKTNV6qhSHgVSmAtvLR5MzpSa124NX2h904oWlUhAQIZlzcOHTSVZlxPge
	 BLauXcpACVXJb0/ny5phI6aywnmgvw7HvgEW8WPMCj1pwiiGPE5EzHJXmTNNODrQ9b
	 mzL0AIfX1zpKocTLYwWDrAVsXVi2NoTW4Nor/Eg8K3Ju5bwU9p1TqpOxmnRBAYVqOP
	 BNMW1rid3dTmuJaHvatqboUbd1DtdgeDCXkwWQn0vC18Mw8Lq6T37gNW18a4WIMEO9
	 KEd6v+4wN9G/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB411CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163123369.23892.12580119620599859095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b10768c2541d7df42ffb82bd16e69d982adaadedba9a105fca13be77917aee9
Date: Sat, 10 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791631233
