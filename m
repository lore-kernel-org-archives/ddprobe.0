Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A652744F
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779588154; cv=none; b=TkfldZ5xCk5a7QMWAFHwHRQbkNULnYMzGU4eg3PT+up8Q+h4o3Fx79jCTncEnp9Y1SfXNdmgveSUCNicJYPf0SJYIbeKzbACzzdtjqRkUvfz/2qxiVmHPVvtCpTLMdPLjsW/IsnXZYAljoataRMLZk2GO9mAs32kN8vE7PltWeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779588154; c=relaxed/simple;
	bh=Lyf18tgu9E9US0MAJ6XvSJ72g5AxymKXfWk0Q8om29g=;
	h=To:Subject:From:Message-Id:Date; b=i9jW1z2hROsIK4nnJCnj758fRh9gCgUtFcnqmBlDc0kk5oZv0HsZLiyW6sRtqPlnoUERrNS/dLpXpehGfkfc0rfzIlxKiySVf4wnBcXnPbAyQO6gKytT8eUzXTtUmy+MXyrVKwXsBFgbMKoRmwJA9kcVPshvTftQwtXcc/b1GBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Smkeg2sD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Smkeg2sD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C02C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779588153;
	bh=Lyf18tgu9E9US0MAJ6XvSJ72g5AxymKXfWk0Q8om29g=;
	h=To:Subject:From:Date:From;
	b=Smkeg2sDjduA+chfT8pc+5Mi/BNnvQStRzwRsxRxJrXM7czSKA18pgFg56M0e7hG9
	 CBan16WXsOzWPhGYXTTpuBu7fWir5rtPiEFh8oKlydK3WwtbuUx5bFhlxGt65npxLe
	 BlJKn8pH3Pc3tfk8oLv9sdRh9xtjg7ozTIw/+3lEOh2aisl+J4cGrakQrhD/7xNLHf
	 ApOYmo9mvxrULXf28rjQm7Cyccm0Jt85dQS41r2YS5dRPrZnaKIt5OT0lVzxRoup42
	 SwfhuF5KCIPPVZA30sdctspL+ePAcvKt6Y4ZYxMMPT4ix0t8gG9DJxDdKaM51YZw8r
	 x8FZ08bmsfHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7EACD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958815368.1979.6276786308791903348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987157bca8abb1651f921675532232fb99156fee954a54f152e05f372bff4f0e
Date: Sun, 24 May 2026 02:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779588153
