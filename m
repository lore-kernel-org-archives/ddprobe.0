Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F4C1E4AF
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786854634; cv=none; b=LvmBFpcMu0fPaqJnpzfOIFIldHeC7cvXUeHUY4x8h1G0Gp8iszW4UE6C09641Y6Mvd+q27p6VI4rgv+oeVJCu1CLOqA66P+rbAod/cb+HdQ3llRrNmoiPB7TnT2Bu0Fm/6FFKreLtyaErLEHyV/0XczhiHC5C6f3T58TRa/pZAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786854634; c=relaxed/simple;
	bh=o5Y5rxlx0z2FElpaFJIua34nNE5xSrJQkbCxN4/5hOA=;
	h=To:Subject:From:Message-Id:Date; b=oT2C/BewGxqobKtlSXles4bQAH/pgWodYfaxiiaJXCTFhfw9NrBvASHcKGirieywn1UFWZLzKgEFNz1ETFN4H6u8O3WEWx/C8AwfBiFEH7PzHTCO5lYS389l+KmIkWfXdink/0tPMbZFeIIi9CvulYoFEVOlpyiod+VBHaASOX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsKqn6sH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsKqn6sH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5BDAC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786854633;
	bh=o5Y5rxlx0z2FElpaFJIua34nNE5xSrJQkbCxN4/5hOA=;
	h=To:Subject:From:Date:From;
	b=jsKqn6sHaWwtctPFjhc1qDXYSHtM9OywWUy3+hN3Ii9NUGNcrH23urrSU+pDk00LZ
	 CQEsFg7huaZ6qbEorB0U1aziD4jxnVQ9ZwWT7l4u+JFL/XFQWdAELsxAgHDgFK3cMB
	 N38pgoOWvYjDitZumXotxt49H/iN3/Fcr3arWV/vctbqd7PAkVLLA4JwftYu7y2yub
	 9TR6f9sLd/3Mi5sT2yIk4Fdk20DCo+Y4HMffLH2PnznrgFExoy++0kD4CrGV1+p47e
	 F2RhQ9wtPwNLD8y0Vefr8+i8Qr/z8Y6E5+EDxED4bjugXGyX9HyTX0EZzVI6yAbhZq
	 5rax8Ge63Ysrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A8FC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685463371.28410.11373543522963131677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c77c3b90b0c2c13991c6bd0654458fa2798adfb48ddc2b848c1e70855c6c17
Date: Sun, 16 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786854633
