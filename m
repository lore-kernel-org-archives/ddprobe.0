Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4521C175A84
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778409034; cv=none; b=emtL922zHHxTtZYF/bPxxLOp2PbvV2p5jXtYq2wtr35n1x5qF28tcRfFK7hdkakzBr53HRwXHd8gA5Ie/nypArseayYA6mXVRG1yKCWBWTxUDZpo3KGMGWmuBP8XNuuv9LZU7f0HV3U5/gTIuzU0zaJCex03ziD+adBuVVYYUqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778409034; c=relaxed/simple;
	bh=hTi/x51iKbqEt73SvDFW7prRJa7TLVs1GUARLR2jeSc=;
	h=To:Subject:From:Message-Id:Date; b=ZClWzjoF1ThWhdFWvVhKiAMmdu51AgsAPRIsPpBJ0+e2S6MOwGE5gy9z6xE7U5xgHjFVoa/92XYZZGlYoCIhGZb/SCWFMBNnhDdi2hKW9wPrvBywWoVGmCFLaEuXHEWWpCc29CcMDULkDEZO2dEG+t1j4G1S/m0IN1Kci+2b1XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsSAErzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsSAErzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C90C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778409033;
	bh=hTi/x51iKbqEt73SvDFW7prRJa7TLVs1GUARLR2jeSc=;
	h=To:Subject:From:Date:From;
	b=UsSAErzVlUhKS+xcZMCoR+i4ALcXc35jd/ww8m/usiNeWsek9hPr4qi7c3yfzpz/v
	 huoD8bSxFhw2hHSrFNbwiBl4ner6FTdWszTS/CAt2KEjOCGN3gpKc9NILodDbu6Rgx
	 v7LQC2JA9K0m+jvGUW++0sRvjHqzkyl8Bfb0MajBvjHMO5pmHMmhZFoBvpJSkJNdPs
	 a+3VLA1xNeKL6ZTi9uTbqKZRg0lz86DH3KXyfPSC+gneMq+/TKV3lMtX/L859jCZTu
	 vXJetLHGdymKVOIbQQYuiI0rFpyM5gXwwB806dAfNGYcfzmMvd5+fPL3SF6qjfTaVp
	 GFPQxy0W22glg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE78BCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840903369.7246.3026887031389132009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01cb72e869174576d70517ea9c6e5ae879acfc175531491b657a1f1ab45763a9
Date: Sun, 10 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778409033
