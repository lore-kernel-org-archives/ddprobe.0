Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416E1BA49
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749090595; cv=none; b=VLKuvvbveKSWw8XkY7GOHT5tNNrp/4DiLCXuvQdcrgV2CHSZLtempjoFo1K1Vt51WCZRA6YG+HfjA1sWQhQHkP6mm4pJ9/oFWbGSNm5in8EDw5DcamUYmmg6bHjU2aQLyu+XVdmoyKrEdK28scBB+29Nf4hdludyuoB/qn2kjXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749090595; c=relaxed/simple;
	bh=0HXABQyZqjFajQU7EZlJ5s3lAf/BOmG+fqntbMBJF9k=;
	h=To:Subject:From:Message-Id:Date; b=Pg9JSwK1b3OLRGxeAfIqkGeg/o0f2gPp6hkzJZv1Csqha5IuURlBbSpt3huu8LHfUhTH3LpQ1tX/fsYpSfmEB6PyM9+xgJTvL9zLT/A06t0PaZ8SJwIK2FI6v59tt3RniFMg5DVA5ebBBuSrB4zi1JasVgrI/wH3PnzjU2SV/pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it/9K/Sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it/9K/Sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70CAC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749090593;
	bh=0HXABQyZqjFajQU7EZlJ5s3lAf/BOmG+fqntbMBJF9k=;
	h=To:Subject:From:Date:From;
	b=it/9K/SwExtJElxBeZuvhp9HWkAMenBfOdqS1sdATr3Mtr1VfX5QqRRpy95+/v3sV
	 2oB5slbFQoz6Nt5AUN9N5owaPH2VqFGlG24bx6dSwjX5BUy73NpBqPsPEuUWoNFI2y
	 VyhIstvInnYn/oNqenpmOAmtr7uc87OwNHLHj5gSq0nTimhFkhRrBTyPy8KTS2Kqql
	 rwIHlcHDFPyCbVDwr7jShCFl/Z5gr2QDxC+5sPkLqqXJl3R2rOQQrmRxnWzFBRXwYH
	 7L2n1+mb6WniEVJM1JWxyh5q97W58QZGiYVV7Qv6blwNuGpjQWUsfwyL9PeDQ/60ru
	 jU4PEB+4YmDzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D10C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909059359.16004.1522594406179215595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25aea00a830aa03c26cc67237d13578de9a63c1d9c9fd5eebb7f9eb8ad6b1f5
Date: Thu, 05 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749090593
