Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E6ADDA8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718547503; cv=none; b=twmHJZTwZMmozADwfExQnvI3TPYNaom5eCh4wJBR7FFIkw+6GE13k4x9rIx92ykaeOmPVBH9W0XtgHCEMkdpgOjCd6/GV3aEZdYQnzoTDhl+o3dDXBLPVD38pqGiWN42EsNFwZD7lOFurPkbvjrkV78pRXxJH2gnWHcP0ySz6/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718547503; c=relaxed/simple;
	bh=fbYXrqMsKpz9D+2R1cVOWbdNfJpB3obRX/hj0RgF5So=;
	h=To:Subject:From:Message-Id:Date; b=rhkvr8kmWlHlva3+LoQUqgzr+a+eN2e8XZsNiEb9TAHz7wCRXtF2cgIlsTZByz5ERH6k2s7upl/7ewdaZ04KIsF6Zf2jL4HFvH8OMWfAbUXGQdJOdkLaDFGgESOnG2WubxzFHkZSzTRFU0jwBHlM3tKPxkHLMVL3O4Lv3b0k+10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GX6k1p9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GX6k1p9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AF9C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718547502;
	bh=fbYXrqMsKpz9D+2R1cVOWbdNfJpB3obRX/hj0RgF5So=;
	h=To:Subject:From:Date:From;
	b=GX6k1p9w+MVqg8mE4sVWC2+ScGbDVc4XGcs4Ps1lgDDlk5qxrXTy4Qj8iBmwi2ZQG
	 Bfu2sQ6u48tUVUBMtTGPaS115QloH6RJ8Xb/DvlVd7IY3SSLU++SQ2NXgadf44BNfT
	 ysarLKjsMzxHM2mVyv0B3qb+WCQZJDK9FYsg7sJyieiRjEdFNC+zVuPLvcUW8j5SAZ
	 8ftO+tZZsL2RHRpwdCc+hbSgEr4QmwALpqh7xMeAGlzKnfTOZOb9CnoH/nBf6rZyUj
	 Bl+EMkX6/LmoOSJg4toCpEwOz1j6aJ3r94YosbR1dQYx5Gd3mwO3esk1JdOerGTUEm
	 ry2n53OmLuXsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7BCC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 14:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854750276.7579.13920302307310909026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3372552f709e45e7480b771faa1cd302af882b82ddcec34083f7a7e41d256119
Date: Sun, 16 Jun 2024 14:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718547502
