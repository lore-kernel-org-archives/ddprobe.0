Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D153B213E69
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745878793; cv=none; b=asmMIEOeHpiIgf7elPG470HGhteUKQR6tGeo63OPqHjBRRs0iNq33KUCo8xYvsvhhY7QXriDs8K6TJMYCqxD/pEglJtn+KEzSOfPIQwaFJ/LPa8CTqFhDiFxKLVJy9hggyCC43x78CqbaOzA9SxTq4y2ok5GGj4nNdpcPG2e0b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745878793; c=relaxed/simple;
	bh=tu7A0rLJmuUbvlyJJXENf2aGd0O4blZ0+rn3cEu3S6g=;
	h=To:Subject:From:Message-Id:Date; b=Rz8h1XJL8ZfNtIjLrZ+EyhpjwoCs3Dro0xTc0dKJhPaioTEvSggi3iWDp4mBhl0WnF6KeLlo1aKrtgfr/aGVYC89sDWRhLj8jYgohT/k086OF3va1V5WdWwWoAoFLDQcsToAs01xWVKm0WvraIRKpCFWTuFQ/mGxZ6BQRhf01gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHtyPIgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHtyPIgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB41BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745878793;
	bh=tu7A0rLJmuUbvlyJJXENf2aGd0O4blZ0+rn3cEu3S6g=;
	h=To:Subject:From:Date:From;
	b=qHtyPIgf39sj1h9dzkx71vi2jBDtrNT+D3mC3GiVppHT6alMyIwFUyqi4QUJCDtJR
	 ddWRzPXYYoe9ouXb+oCWBOk0zWiqfeNU6sTMBiZ+mxcYdLMFpDLUKN000m74/ADRwp
	 i6KlqsqAOPXKOpH/aDlt/myZKayQquF/94QB3yOp6aDqHxtUArEIrfMYa8pnIzfTaw
	 TCClTbf41RWTzFLjPUht4qP12k7oEYEdqcHINyysX4q17twdv1Thr+psz8EOHI9HZV
	 8BtFmvPpuVUnQXTvhVm3VO0JSRDhBX4nGSP/thmiU2qTSiOngGI7dPgT/dagqoVrKj
	 UiIr8AdVpFbOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4F1C3ABA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587879362.2870.8622451922001391470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b80bdc76b10061f32f3cc9cd417db5d96e75f5f4f433c4397769c12fdaa8149
Date: Mon, 28 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745878793
