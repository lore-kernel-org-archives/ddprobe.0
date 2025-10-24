Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379C23218B8
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761318594; cv=none; b=hVvQadVf93zbCuQvrSE+fyupJUMmpE/vPx6V1BzJ9QgoGKybwrVSuYjRhqfl7MvLSXZdltF7Ispyh6hpWZAsUCg8ED5/pquRo3bsisRF2AZjzNfBIbnGhzf1W1YoFKOEHWZshQU7aiKso4N8Gmd2CajozkT39T3j/46rWBNz1ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761318594; c=relaxed/simple;
	bh=R4V+uKQrx6Kx4iOqKz+Son01R74h3mCNCeKBbSzAtls=;
	h=To:Subject:From:Message-Id:Date; b=bqru1Lz3GmbiR0hXH75kea4hJkUtjmu/Y10ja8dRBVdanDAtw0v+3YFR7BWhA+uRHYrHTByemS3FeaDYgxPta/YMDNJTpT4A3hs9Om/FgARWsBlGlyXvQKfRg1ikOVAqykK6aelScFT9/qakZgzmzbpp/PGEdapoKRctR5Vf0tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlY6A1+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlY6A1+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A230FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761318593;
	bh=R4V+uKQrx6Kx4iOqKz+Son01R74h3mCNCeKBbSzAtls=;
	h=To:Subject:From:Date:From;
	b=AlY6A1+zaMlu2frqwPDIbnGKmY5K13kUh/rRbJdd7xZIhtFNV81qqSgPa3Neh5+gZ
	 fR0ZBSTzezqmEhCBQyWQyh3f38Tcnmu6lKS9Ub6Nzwkpbwcaf8YWTuy9MqtOK+XHFm
	 SC5vprGTPhm7rOSCA8/+/9IBSBTv6x/Nqa4YdFRbqRlnSNuXc6Un4cU5Rg//udNvmD
	 qHiBvFnvsvDCeh4FBmD53hCo0l7DY6v+LX28PZ/j6qiNN2GKSAQPO8puBusnKtF5WV
	 f3HH4L6l5ve0ifHxIKLFfj6/QE01eQ+77cDA7PHvpLPkLh9dOV6w8LJYlxviooC2f1
	 /WG/yBL+LlZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AAFCCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131859358.29825.3671822116770252279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d33a49100832fe46750d36ef70139a8b29a6259d54edf7c2d6e4388b623b5e0
Date: Fri, 24 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761318593
