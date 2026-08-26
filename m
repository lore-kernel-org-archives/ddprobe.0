Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45253399CF0
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787730634; cv=none; b=qLKN5hn8/oKIjrJOwZ8QubzhTQRY7MiieUM4mgQolS88cKiSzqjV5BqwPI+hcQYeFbOJoJPe6WLZwjQHBqsb1G/jMSTbc/XiPQ0+v533sYFCKOsT7TM4ooK72maUZy6fwH9Z7LjjeMhXpcidfkNJXyvcUOHfgKUJZWiiBEI/YM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787730634; c=relaxed/simple;
	bh=rASZcfsf5/gIKawm1c7taaOBO6qR5Z0o2dWvGaLfzMg=;
	h=To:Subject:From:Message-Id:Date; b=Jtn5REY3Tlp9eBAhF1IbvOYSg6OCsn1caDPIh6pzVum56tbwTkPuEPOFt2q8QV3meF5Ozj7Gzw+7w8/Gw9y1fHx2EgDg+W0XR9Hl9WDaR025UrcfM77nhX7UpyTi5jCjXsihxsReYULhLUEZHkrCpYgaWT6POrto8PWP6QUKfdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb61To4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb61To4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF096C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787730633;
	bh=rASZcfsf5/gIKawm1c7taaOBO6qR5Z0o2dWvGaLfzMg=;
	h=To:Subject:From:Date:From;
	b=Gb61To4eCrP3wOxArU09X1r5skUrU+4b8w6EmXFLVzdUtxldX6s6Ea0bt1UeEvvP9
	 JAgO7m/KKCC0dcRzLlo1bYbnauqIwNJjKqeEtPFX4CkDqfcYoV7TT+Q/TfXXmcGh4/
	 0L/j814JTp3609Svtmo4FwvGWXmFcpBTaa9lEq3DqTjmigKMZiBm15OvT4WqWRgOGs
	 j1w1oj9EH3vUWc0SYUXdFpxHO/vWL4bHrk0583g55wrMisuLOgvnzcX18qIPkhVPvM
	 mTs600QiwnR48KO1kH4TlJuBH0XVaqDJ4qQAfzG8nJCjj3c24tGzD79Gapb/4ZChhi
	 UAUi/ras0O7bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC021C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773063369.21961.8731925378876639982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e1632607b0076a376f2be852d8a9f5e9848a29b90d254d99ffd897e0ccbe13
Date: Wed, 26 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787730633
