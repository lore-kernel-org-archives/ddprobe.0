Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485DE325704
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787579434; cv=none; b=HZD6OVO21NHpZRvkxWv/POtZMxOSniknDA6PUui5qqdohPIVpyFJIGYCx8+TkqwgDzBw3P0vRWBjTnjwUhyvqk87YqrqWtVpcSrLDuF5lnHq8zIQAz7wj3/ciisml9HdeubZQzRQ3OYTDFWb/S7HbG9lka0cORIYJAB9rk+xyZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787579434; c=relaxed/simple;
	bh=T2Y/D5kFJf2zGnG9gf45rSKLt8F7stpn8YXHoKI9gzM=;
	h=To:Subject:From:Message-Id:Date; b=VFpRlmC1tuN+AlKwg71qHXKqZDarvFplVZVSMDHWT3rUr8c6OzF5K19uLB+sRPw++D8TXRww1QYQkOlfcdfAvzBawS2GohtleKOs8xjZnu0Km47bNZ7lOPKl+H3s7fsfTz9N6CJQFPpBHVjTPxjydl5pKvlOQPcRkoAvjdirpWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/B7ebx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/B7ebx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0105C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787579433;
	bh=T2Y/D5kFJf2zGnG9gf45rSKLt8F7stpn8YXHoKI9gzM=;
	h=To:Subject:From:Date:From;
	b=b/B7ebx/g2vxRIJFfn1xZyI1X6keJDL97I7eMP58t5lPkKFTiTCKETchYz7LF9ste
	 qRTJBX4sIZMlyBWEpUbIQQj/GWmRDgqGFeXFAddTV04sMa2Ms0pMU5E4DzB5m9JJOq
	 jy9Yy/En0ORuQ/ut/nv19zRSczVY9T1SmtK8vaepLDDPFPpgC0vKdmF2Lc3aRBB9eL
	 LdFFiXIjnm9ZUY9+KYxLMBpG8kkYkT6iz6H+e9bKUprWlQqMjkUB/7X+Pp2Gt3ZFbp
	 gSS4vePa9L01VxDcuwFph2+SMsv+Kza8oAAifFZcpe/R5N0L15CZ4A8CeEUUDmEe3g
	 x6b0APlx3N1vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDA9C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757943369.22686.934400138925764995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba79e67ad5418bf73291691b3d6e843bb109da11dd44f77766e6f9d06a2ee20
Date: Mon, 24 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787579433
