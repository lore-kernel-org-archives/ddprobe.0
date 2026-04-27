Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C676371041
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777327054; cv=none; b=DFObYyFibMsjHr36WhLUdACBDwjml69GISUy0sBYcKg67zic/wu7cewjigu16TVkB+cWoscQ7Cwar05owPgISAttCXGmHDqKsMDS8NogzwKEi8gwKrlO9ETsJMx2D7d2kZPkSIBZ2etnIfH48M55vOF50mGmINp6xy8EDq4YE7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777327054; c=relaxed/simple;
	bh=qU8vknjYIEkT2FkGJvoMqY6MYQJIq75mVtocFf+oTQ0=;
	h=To:Subject:From:Message-Id:Date; b=TtTEAUsM/w3oISkKDYhUD33OXCthOxIalsvYFoGvcODZIZjSIYtzercMyXSrSqG32bi7NvqfPU9i7YkPKZatkfPBgRHQlpuafNQNT9GB0sE9yBMyGM/3LsEBxJNbIwiNdkEUVRQROlp3lfK9WWKbqXrWu4anYL30NP0LyMB1pWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6GYJtlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6GYJtlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42F3C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777327053;
	bh=qU8vknjYIEkT2FkGJvoMqY6MYQJIq75mVtocFf+oTQ0=;
	h=To:Subject:From:Date:From;
	b=G6GYJtlfL4csTLKc8X2JwLUZo6VyrRX/26bUmgBuzmCbfmdyRWPb1J0+nTDkDy/wo
	 /t/w1D1lEnBXI/FNtrhQAB5FLKW/8LHMRbx9YTOzR7w9eTaMG9WThQpFoJOP9vX1fS
	 xGH4E6NmtehJJxC9bxKRfdCFv0pmS74aWigqjyNOV4zLVPgOG5pZAt9VD7dKCCaLD1
	 gCrwkCmjiErM/AhYRfDlFaq4bHg9PZnF3tYv91BaiRhYB+Yn5SVL99EvHgiPe53NOh
	 4HWPRBRqiiaG6I6oktWgVNT3dEM9rsQlsDScjPqKuqTBpLfCr2BIBlRvI/m5rLBLni
	 1DfwK2DvTNRHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2BFFF8867
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732705368.26593.1423945783868946351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22f91eaef40ef247d4c05fdf6cc204f17e89c2ea13e8abfa2df23d4ef1d089d
Date: Mon, 27 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777327053
