Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310414C9D
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741766334; cv=none; b=Ylimp2xnXN4nwRHJSa3qZSZYB515wP4XEObusIb6+6b6Gj3zfnPLalstu12tEGXicV3qHGnghL2BIKKMd1JeoLUHqZ7I53ewSYfmVdSLsgYgxKTyC8UUuoM/MiWPBA1Zbpx8ffoDCIa64ZpkzFFo0aKQkwNaDuODFGDQyQActoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741766334; c=relaxed/simple;
	bh=KrIf2Pt1A+MICZuyj+J8YScLIHiJLMsARi7m90oKnSs=;
	h=To:Subject:From:Message-Id:Date; b=E3V1AIymQUhKds1+XKvB6xlb1sqjBvn4KJ0m2MmPiPIEGxG4ykvlXaw5hAQ/0L5NNWxUYjwVRawiDOd985Tzr1kLsvfXRo64mWN/mTvOg21q6rsHU9o54sh4BU5kuWlbLahlx++1bJzev4tZT6Blvf+ncQBWg2Rn8uv/sV4NHDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t28+5hdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t28+5hdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1256C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741766333;
	bh=KrIf2Pt1A+MICZuyj+J8YScLIHiJLMsARi7m90oKnSs=;
	h=To:Subject:From:Date:From;
	b=t28+5hdrnBRJM8UNVQCN8I+p4NdlMPbgATt+gM7GuITCa+EYcnezXfXkoM4cAKDx+
	 E63wgvMa5DSfl9VHCiy0vObeBr2XyQyGbaHrZoyPs1C2Yg72lbSahwCfDIR2mQhosP
	 pc9bhl++TTDpQZOQCzMTL+PaCPLXFd+W3jftxJetlDbyCz2m3sOA/kteQ6T0ViuEuA
	 Y4jlm8NpFJEe+DiZwtuFwJt2upyh1aCr1LcpYfubX95wLuf1FCr5JyFwN3IjdaH/b1
	 lLJxe7DlIpxdR96leZO+z/DTqy9zGfCD7jqJvm/hkKcqZ44LtkW2ZAs24uwSMEu5FP
	 4eiaSxOGBthxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C91C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176633360.25803.14045924032997304449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6b4b78fb891c0f20edd6fef712590eaf0630957a3644f1da25ab479e66b8f8
Date: Wed, 12 Mar 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741766333
