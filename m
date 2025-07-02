Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6262C9D
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751456994; cv=none; b=L2rAbmHlYF+lULeyfCGV9ytrc6iBJj25O9G8UvDo+7RoJw13CbpqlxnNr/e07daEAi2jTVF1CcftA+TLhQ5LtwzoczQMFJ7XctoUqthahI/f7ixvEjMgAKeZD4s4U8FOTrdySd02MyDRx6RoLP6uzOKfk2zgk5v8IuwbHRGbZ5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751456994; c=relaxed/simple;
	bh=hjbyTBj1HAG+qTdHDpSq0MSQscmBebX3l26/k1anJT4=;
	h=To:Subject:From:Message-Id:Date; b=JtseoVfPXGGUs+EaA0d9EGdrkB4BlYdbvGy6vqRCmW0Xon+EKAAY144WUiXDw8MXAaKwU78EfzTSKjtj79LioZRe4seRKMJ4L1tEa0BTcjhMaAvtLETrMUzKSnUAD3UkusPV9cR8xHqTGlo6zJxXq8YwpLpsUD1/wk/cN7iqr1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbshWnTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbshWnTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A8B1C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751456993;
	bh=hjbyTBj1HAG+qTdHDpSq0MSQscmBebX3l26/k1anJT4=;
	h=To:Subject:From:Date:From;
	b=kbshWnTOZsKhr4ThQLF2WgY+y9WyqlacV0Xqfx+jRLMG+UCt/rVIdVQ30AkAcIMb0
	 xH58xdTywz3hz3nL1FXYK2ax1c3b5LbvUXoOwpulj6kpuKkYMcySLMLOa/Xbem7AaF
	 gvGGF6gtzW9ksR7ZIEH4xNEesPYxvBk5x8s5FO5k6rGp4un2r1wpPQo4et1/bLg57x
	 me46wWKDJm12vvQlONphssyhwmsMmn8jdgvFUVfOMnGuL/F3qWI4Xbtyo4fX+EDY2R
	 wQv1BK9cPh1cnhs9mD7UU8fMghQzhoBUIoHFaqKXgY5AvHv3RlgE6Q5t6LZsolQwGS
	 XajN8dAFp2DqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E548C8303F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145699357.28252.17060657394599951198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d960734ffb6f762260f504e6a122935517a366634364f672c67348e11ec8c85
Date: Wed, 02 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751456993
