Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4913254BB
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787494834; cv=none; b=GKsQLWuIFyVg9eqiY06gCUe9zsza9yfFFuhoBB5/FPs03457LLYfaL7VSRjMUZPZYnXWyIx06JGg9YW6iSdS93kmYxeCk85SmsQicuR3ODLEM2uWZoE/rnF10JlgqYpt0HQumcH7gyjY/WngVMi3RMQOp/pLnEDan+z0SrFPSn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787494834; c=relaxed/simple;
	bh=QWUvHo1qGt8tRCALUR9JEKnONR/4BBRikKxKjeCSba0=;
	h=To:Subject:From:Message-Id:Date; b=iNPppoCIjVKqUcJoaZkcejWTmGOkSUWKzWGoBSKLETX8joEDN3/FLGcn+K2AJJTkYHiUfHOn1MqboZdH6lh55FaN7qeELxNDTeWkOHH73pFTZDHw+okBxMdBb9p9SV+v8h7PY+U0vR5SjPhD7hFSBmuJrW2oQmiFvZrAXVxTMo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pyz+oWyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pyz+oWyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5628C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787494833;
	bh=QWUvHo1qGt8tRCALUR9JEKnONR/4BBRikKxKjeCSba0=;
	h=To:Subject:From:Date:From;
	b=Pyz+oWyrQxE4HmVNBOwlkA3LOShHGLHbcCaFoc3x9X7KC0Y0ZyZyUzOfrp/E/75Ua
	 Db+JNu6P/+kl4/cWX/8iBv4rCTodQooq3U/xmRL04dNTmTg8JWaoTDkB2tKmNKqg2B
	 vzb6SO8KQ6H0mlsZ4ouM6TsXMtb5MxfzPHjhdRWqsI2iv5lcfIy2ILyDOwjJmLEvcP
	 xzd1oiL98CzQcSy9wCfulIIsHUooyQWo7ucsIROH1HKDYJRPdD9k630q64TiRQ+Ale
	 ksltOEVFUr9Cr28rnqVVBcJaTf33gHjjxSa3c6bvV3wK7zD4X/01PvcHF34QPklTBW
	 XAY5auY1Udlyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B011CC5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749483368.19992.15705637950586432047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab37c0ee2cfa10361768b3be28ac117ba6fceee5d52ea736476880c9786aa92
Date: Sun, 23 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787494833
