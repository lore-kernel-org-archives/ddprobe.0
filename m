Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B257166F16
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722982554; cv=none; b=I5/b3J/nODlBdz41OW0ZDEP127EnHDQompErAHjtEkkrRO75kU0S3rMdkdX6Mgw0zn2XV/JAmNnTrijf6ctPcGlOz5hXKQesBqylKE4OuafeniGL4CI66TrTZk0gu/wNJ/ag6KbvESlM9doNjIMOcVAmwasPZ6fFvh0Yy3LQTvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722982554; c=relaxed/simple;
	bh=JfXDVmMMC8EoVfBV5/hx90c3no4sT09mV4Csouj+JHA=;
	h=To:Subject:From:Message-Id:Date; b=JaX+/lcztViu8N9H1gj/vnzBPEHNp4evFGO41APRQ6kuFSs3qMPKimE4pdUO41guauJvELyJC5KhGGDb3qhM4zgNhUUrjExEEdNafMb/6m8s5GTJ8BZJ4dHzR1bse/d4jJNQWK2JiR4OMVi/tVHyQLJ2VWVbbhfdD1EXGWeCxaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWqyHBr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWqyHBr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC40C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722982553;
	bh=JfXDVmMMC8EoVfBV5/hx90c3no4sT09mV4Csouj+JHA=;
	h=To:Subject:From:Date:From;
	b=DWqyHBr5PQ0sWukDkJ5yULFwBSDtK2FSeMivbK7jTfGK/wlJgXtww2F7Yg7JzXOup
	 P3uBeCUDKZpZAUn2/ucEgHMbY8g2+uh7e2eeqk15U6hPgISif7oqJiU3mJfWWiyZcQ
	 nRQPUzs062ljItfqhrhLifrT41YvE2xxL8AVK5092tXTD4OVLLm0gbJe0zsquUMVr3
	 Y516OrlqDwsjssfMKqce97QwfYLIp/oiS9zIK5ICGr6yfCUUUhY21bWhyyUzdM3Rwe
	 +igCcCh/FBLTA67eT1IrIw0hRZYfkBqG3ucWevXqPcSZ7NeVYqRlGCUMIJD23Xr+RQ
	 bxZBtaPGBh0lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98261C52D70
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172298255361.21918.14892328197970968793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e3c75742106f9169572a51c900f113048308c3babf0f1c18d97f68c68cf9e5
Date: Tue, 06 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722982553
