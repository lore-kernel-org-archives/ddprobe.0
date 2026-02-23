Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F019D3793A9
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771883094; cv=none; b=DlT2Bov03U2C/LBb3eeBtGxEmSAyRD7P2A5ulKjLw2Lomzl7GrYmR/pp1oAI00hFfsKwG0fZTSp6jVewcdLwQMGgeoGorbuvF/BpMnrKC3WutXuorqB6DM6r7se7t4L7JVIORKm45j/nolnf71oD4prAm0Wdqvpz2YdJLa/B0sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771883094; c=relaxed/simple;
	bh=yUC2deerEGCzBioZYnngPkhoYbGPm//LG+S+6ncRcp8=;
	h=To:Subject:From:Message-Id:Date; b=QSmSPwhWc4FO5mpxIsNy1iJKp7afVTYe+dkFQO5dvlXMftfy8YRhcjw9Nc/B6Ln32szMuWt9laJ6DW/PftcH3q8luyyMn02iO224MfhMnJTf6FDAscwyowuZqFUACcSdBiUxt38iCv/UY4fW/lCDmQyYlN+yevSuS3BAHNj7c5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gH5FKMc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gH5FKMc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CBFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771883093;
	bh=yUC2deerEGCzBioZYnngPkhoYbGPm//LG+S+6ncRcp8=;
	h=To:Subject:From:Date:From;
	b=gH5FKMc6rQYLNLQm0A98v2FdJUuI5A70FAcUQcCsnV0YoOXzGx7aCRfUnmNPsZbyN
	 BV+c+JzhfBF7p5dhaihI06c8wSFqoKMhhGKML61CACnqt5ZAjkAV55+5UvVEU/ZkTz
	 MwXW1z87+nkj6IcKK7zvJQFIMfhOzNWzjwt/j8gOn2vEtDV8pke2UoHZkNuRRsq2hg
	 q4YPDU2EESipUU4FFEia4pBVIl63mMWcJtMQgBrP7KbOlSXfxWhW6ggM5qLssLMj45
	 8OZI/MZisCi0yMF4fdk27l/JGcafYoqDp75bwwRd8P1Q78u12YLrPkwp0YpSzfG/J+
	 7sM6QOUbikPNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C60EEC28C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188309359.11175.14147738327864400952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41681a1d4de3d4bd9d3933a91e053d2871b02f9732dc50c0c89540e2bcb0051c
Date: Mon, 23 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771883093
