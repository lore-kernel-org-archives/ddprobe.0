Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCF84A23
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765425774; cv=none; b=jBkExL4/z+BjRyEf9WVqNMSjQCkzvtByG0BmGDV8qx8ud3qfJy1QLV5LXTH9+D9tdhGNj+xh8tI0y4aIr53GNdJ1TiAIbFkyOmvC9ZSTn0vQ6nf9RWO9n5g+nsQ7PqL2dup0e68qzaKEtlODRDsQ1MNmBUgFqRx65POhazk/rZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765425774; c=relaxed/simple;
	bh=KQqz1HtuthionMNtUinpw3gePyVA6ND87EqyILCJ4po=;
	h=To:Subject:From:Message-Id:Date; b=ix8/AC47/qvaLyGUkloc5rD9jNIR1FHuvB7iQT5VcIDEgOSEel9rKl9vgV5e7R3+Y7vHo57UhqLpUJLFmlNLON2rDnTqCFhh4Aa2JE0cPrc+yCLlPrUH3TUwlnUCG8sw+Bb21JcNfHFAHlBSc9c3tnkIx6Zq60koSSyNhV2AV6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5bi1Wkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5bi1Wkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52A1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765425773;
	bh=KQqz1HtuthionMNtUinpw3gePyVA6ND87EqyILCJ4po=;
	h=To:Subject:From:Date:From;
	b=G5bi1WkqmZmm84HdU/LF16jh8PU0DK+hQxgyE8MpQ9q7NTmfsf+/YD8Kg7QXjnZqN
	 FnVR3dSprwgYIDeYLLMQX9QPEEEdNVHTLoFO0r9zBkR2MWrL30Ezr9uSKJCDVqAD6X
	 xp6L03gNMNAgGZ3p1iRVIaLH6FmwSUHfDGoCgz20MOSx3LL8QpCiAqlC+BDS5TzKB4
	 PI9M0FIGCF10sG60MVH70wEyEIoMmw4NZAKA01YDJgBpVdVmnl37P/5biS+9F5uAfa
	 hFbuuE2c7nXdtj28rQu/zwbF5nq1NsPdLBarL3dAVHjY6WcWB3CrDzLa9n+ucvPit0
	 QHlmEg1aupz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161CD3E78C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542577358.3534.6939509374681644170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a236a3042caad054cea35a05ea3d330ea9a31d5751d0f641a1c2ffa535fc6f4
Date: Thu, 11 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765425773
