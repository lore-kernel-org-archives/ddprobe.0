Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD4821D3F1
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746727195; cv=none; b=Zg1UEzjP4GcTn6I3nGhKwSId2Pquzhpa7OHPr/mWj7NOOSKNwJ7EbzUeJsLMQ1d/qDIHgH3NAHKc980cjXdwxOQAdWlFHbdbmWI+Yio2VeRVvpZqSjbJ0HLL9AP4EnVBorjLH3viAup4n9kMIBVHcd8808nEnv/cy8nNyI8Rv8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746727195; c=relaxed/simple;
	bh=27WWC9ndP72WvgSGmdjdA8LLdrGbYTQEUI44rCMPe4g=;
	h=To:Subject:From:Message-Id:Date; b=bGGpNZUF54mU3yod+yQU0DGnnEpiXrfPeC4FktyzEqN6l46DvYBGGvUaqyUWD8MrLXX8dSEmL/pPzXrZQrnfKjeGY7yNPC/xV6ktGmItpwIESxg+qM2CoflPMK5ANFhQnqIq50Aje5LFTybQYjWYDEN1HYEdRC6UqWch4Vr1mQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElZYfBY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElZYfBY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8042C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746727193;
	bh=27WWC9ndP72WvgSGmdjdA8LLdrGbYTQEUI44rCMPe4g=;
	h=To:Subject:From:Date:From;
	b=ElZYfBY8FH3Wzd+5IwVRDuBzXRtD6B0g7ebfBcmOJdznFeyH7CpFbNG2d269uRahH
	 cCgncC6Y1Sdu9xN2nElhGN3BR9P2UQMqF1QwRfDZFpHV3Kz2aP3qyTxHTXz4rQsjQq
	 KqooGYgzSTErcKeV6rXfaFu9/bn3s/HlBHV1zGYm+G9QeaEM+K1hNwPCLWP+dJCEd8
	 COKA15g14G8BpsjQaeZZa116p34ZUnwvUU08ALoSXizs5NIexjbgqXd0kRuFWvoTra
	 4e/AiaGcQGi74UFd53asSNrDejyD+41mgVowWJjhW3mPLIyy4jFMItYLq6CTC3TLIC
	 6hF7aoBQ5F7HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957CEC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672719360.31343.16819473024029447252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739ce7f4908c8cede2c88e63d798d19eebf47ec368b710c62aa246dcd0ecd751
Date: Thu, 08 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746727193
