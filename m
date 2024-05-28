Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7963023C9
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716877463; cv=none; b=WwFcm7QghoCPM3LHYN8JCMsRpIIGSICvVjwTqGLea2Cn9t0gOm4h00iEn7pHZAI6geigSaM3b4xfgozo9mek74u+6xTkvwTwv2bCgWbcGIXVTaKMtJG0m38SQJW9N1c5rsSp+OKGLUCA/u955mYnPGloxcA4cwAA8+3cSotuqBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716877463; c=relaxed/simple;
	bh=AWX/OXQLImGf7owYigTbfIu/LaEnrCV8Ltoo6P4OsGk=;
	h=To:Subject:From:Message-Id:Date; b=FUxAbQIqLe9oATWDHwuu5McCea73ZUOdxq8XBLuTFXRe+h/O9hfd4OPOW1sqm5b6hygd8m/EC0VafBA+CUMB/4JMP9HjBgq0up8uhHyULA+c0Ni/6aHBnesFlr7UbsLaynjzdksdSDqrqKJEmSrqvsbBS06rOh2r6NYTIehnaXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGeyjUNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGeyjUNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00283C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716877463;
	bh=AWX/OXQLImGf7owYigTbfIu/LaEnrCV8Ltoo6P4OsGk=;
	h=To:Subject:From:Date:From;
	b=RGeyjUNEqXI3pdMy7hlDBj3qtTb1CaIzSLiajDpp4fo1204yBDSR8gMcXiBj1kHgb
	 bYq41wOxOZ7R6RtFd98yI67wsf98lyrNoey7Pbm6O+tAKDAFON2ny0iQn2siRf5KVQ
	 otuYHEAkfCKjejlq1JIVmpkTb8UNIqZDOm6mIHBH2+lTOy2BtWwhNvMeMLomn5o4L9
	 46pk1kSv2QaSe9o8uisa1nSjmi6yOuw7v7cM2iH+b3yuYRu3krjtL3j8EDjSM0CsDQ
	 KyfLBexgBxW02D+sFjq9wfLYgJMcO+S5kuJzokLhDkqb6/ZvktfVOFE8gH+Mj6I8UV
	 M4HihaP6MXUlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA8DC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687746281.17908.13676734990944223049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf130fa6ca9e827e2d6f54c4e3025b3dbaf94f6877d3acefde1ef9735c851809
Date: Tue, 28 May 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716877462
