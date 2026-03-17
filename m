Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C59E3921E0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773752694; cv=none; b=eJvEHBKsl1b4W18zgWE1o+ZCsRVFlnvTbE9IeJvoegaZtk9R/NufnpAq9JnmtrmVIGpa5gRIJ/KWdH5wJSULGgaTb+q31oRhpCU+YDHSc7aiHFv8yJ86QKH/EPkK26LMeXWdbqzBtpBum95QR0Y3GrqqmwMT76GJmGs92UV/b8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773752694; c=relaxed/simple;
	bh=wUGQ6Idp8hJasLNzO2XxkpUxnpMdJeQuGvnpx7Fg4yY=;
	h=To:Subject:From:Message-Id:Date; b=lViYxpRAq1GB5XBfASeYETnkJi5trrcATHIh2u59slwnyo8mgtRVh917GaD5f1sTe9ocoYIkrIRl8NYvuqkj4SAvrL9ibpnV2FFh1S+u+SzvmdWCs68r61l6otFd9/Wd8NJmSfmtYGJ2hpF7E7raKxAgdezZwUBBJwHu8aiGfwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHB0zDNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHB0zDNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A50C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773752693;
	bh=wUGQ6Idp8hJasLNzO2XxkpUxnpMdJeQuGvnpx7Fg4yY=;
	h=To:Subject:From:Date:From;
	b=iHB0zDNTWeJ/CoZHNXmBk2MouDRf159GEiJ6VYQfSTLelOUSdVfU+CixhwdkqBP+R
	 s/to75oM/+gptpLVTM5il5usp9Curt3UGhzzhuSSI+d45lTobYsVpPvLqT7WenOVY5
	 pVNnZ62P8Rt+6J26e+M476IBY/sgPt12kXNNRS82iXqCzVbP9BYcYP4+HfoJHotGoC
	 JfSlIG+Vbw2HgZ8mCpIjXKJq53ebXibPZCKo/K6pqY9dRrm0kvkUpUgtvyW5unXpAa
	 kl4orZxOwvYAkkI5o2bPD+J8bZ0dutOLEp9q1pJcwXQktKxzUeSS4V0uInzvnYTCaF
	 fnqkLwXR6pCUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9748EFD8765
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375269360.26785.1193522275171725166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ad86de24590efaace3c4ebb1005483e2a4d7102ab4a4cc3d66dbcff7be2002
Date: Tue, 17 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773752693
