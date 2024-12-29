Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437FA382
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735456554; cv=none; b=gNP2TvII5v33zgdfLuWZ+c9Dmw8fCMpDJwP0M+E9HRyoz/M7xNo89thY50By3XhGDRKm1Z7Y3uVuVaWMaMjYk0FhVjP2dBq0iuuUHksgsHn8mcVb/O0784CLTKtzaCQloFPTxHF4DBJRe1+f3Zcx10spG+lNuWFc1fOaiBYGeTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735456554; c=relaxed/simple;
	bh=17ky0A4/Uyq4Q3T9OLsIudJseiX/IXcmvY7cxR1/q5A=;
	h=To:Subject:From:Message-Id:Date; b=NvgHFJgBEMSnMBddN6EvmxsGSkebNvkp0qJL7r4eltn6SExi+vt0kxhgWc6a/ke6DxZfYc22ioJyeQekCFWSEG2UYSluVvbnZ68oukKAwE/A2JWI14ZvluiVnRPt0ssfv3iDM2IvCY8dtkiY97ydkKokzvoKNfb5mTJoxvW9faE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DiGYSr74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiGYSr74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B498BC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735456553;
	bh=17ky0A4/Uyq4Q3T9OLsIudJseiX/IXcmvY7cxR1/q5A=;
	h=To:Subject:From:Date:From;
	b=DiGYSr74ASp44mDWVZF8R21lC10HXC2vVOB3yWpF7cAMtlk/9owalkpGq0JWH7S17
	 FjUwoYXXvxs7DVUrXbDzQKvsSif+KJXZ731H4dbFfKrZcPc7Uk5+SdB+xPx+UQM6Rr
	 zlkL6LDXyvow9yjhwRZm9b6dT2BiGg3tAaRjQJHCCnku2uy4N3TkYcNpA7CEbVUzl7
	 DRZR3m2wCDElQ/Tru/ZGmLoC8ePEE2iwaUG8goDfEEjDz2DvxOy4Iyxjpe61gcDge+
	 4x/BYoaHNa3tWxkE6KaTdO65UZgmPe9be/KBb31HfW0HPoxnIO2Y6INTZU+ypROm/H
	 M+nr5SeW56rtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2294E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173545655362.5042.14592688560790037451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464441dfae4d3e67e1e54a82efaf06d47d0eba7df2fd2e58903120ad6fdcd513
Date: Sun, 29 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735456553
