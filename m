Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3258A22A817
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782788314; cv=none; b=mNdeLygUAh83ypm8C8tq/fRpoKpd5yGVIJudIR+CBfhmWg2jSrw4rY7huNNx2a5+778KRzkGYRMmIcTwsUZXObVVyMRRxyyrq2XHy2T+yNGS6niyTwGeBLs6xbEVA8buZhLi8qTOApFXvNpia7ZyPDaw8j52TuYYYZ6Njes240s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782788314; c=relaxed/simple;
	bh=0hHtjL08WGNdNUcZg7ckKG6sinlj/O9mrj3SWsQ2QiU=;
	h=To:Subject:From:Message-Id:Date; b=DC9PLnyt2YbLerOdhCaOFksuXkMlHJYNzfz5ST035T/03svCZqcjeBJjKt1BCCPqHdTvnt5pu8XpHHy1MFtLWGziTi3htqQM73N4d+Sh6q5xP6vMm1RkDvaqCpf6HUfHsx9twr8rmvSVck4G4K0u6jGpH+hV/2onNbAGWvf7il0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIbEw1uS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIbEw1uS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF67CC19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782788313;
	bh=0hHtjL08WGNdNUcZg7ckKG6sinlj/O9mrj3SWsQ2QiU=;
	h=To:Subject:From:Date:From;
	b=RIbEw1uSbZFcQxUVE/d0lHtA6Q9mxn5nXy5ll2lOVKIhZWIYhwa+bEZmsCdubePHh
	 sFhX6K5/bUpCtNPCeizDmQVQqPsug9bHvZP7t3NeeQykxE+tMeAnctr796MD/825Ao
	 nU8EGB67mJ0PQ8t1W62uonr+h20IceixmnCfWtFyE0h9vRZZw+N/OW0KIL719wQmQM
	 mGgfCs3lbPTKtDohSxlz6EztBrTfvaR0z2X+hC0UxB5ymDI1h09C+v7FMyORkWvYvJ
	 0dUp1HrnHOTqAauE8htd19j5agLBMD2jzP61yabw8gCLOB9nz0V9tHqK67nUW+qFjS
	 2SLPxWSCHDggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D61C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278831370.18170.12097652583247875961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ae8470c807413febe33784b44a35760b4893c218fffe208fb49d6546688d31
Date: Tue, 30 Jun 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782788313
