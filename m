Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBC936134
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 23:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716333803; cv=none; b=ICHrWsMKQk+CNLPBEXRvKURz6cw+awGIPiaLov4LgscNmmYeGQbiVSE/ZinMoydngGll3GItlTmWRaKAPLTCOyxqS/P2i1VMpaKkU7tfy6FN61HrEiKQrfZq20OGoU1fDYh/sYR9UwCzQ510e7fyeFtznfYCM/mpxcaZpDs1wVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716333803; c=relaxed/simple;
	bh=TSpL6SD7gGjKwUoI+anoTK9LJBZEtw0HcDuDSjWtACo=;
	h=To:Subject:From:Message-Id:Date; b=RbfRK8qF9vMgiGtSr24hPC6Pcaj8noIxUHtXmvkjCEWNXvORgyi6/0HJlj7zGby1f2iKW8HtOWAx10Vb67v5lVh4dKkLaNJB3E5Ox1j+YkgaezLOQH4rRwGlHK3s6BbukjweSoHrTaUr/Ut71lC2cuirsGyN90KkIcYRi4zLk6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqd8yZia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqd8yZia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEA4C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 23:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716333802;
	bh=TSpL6SD7gGjKwUoI+anoTK9LJBZEtw0HcDuDSjWtACo=;
	h=To:Subject:From:Date:From;
	b=jqd8yZiaaNSsPNF6b0atQD+UOTTIDW92V4418Bi9ffh875khOcotMslgocc+pMJMq
	 BzXPpm1xMvI/PWQaClpnKNMo1JUZ8wFgFHfBmz0dTJBZO8QoFIm5FnYqsduIR0zODo
	 i4lA2DHk38/w0feRBXK4AWGGlK9E2pvchd/t1d3yM9xFx7aBXvdsDOqZRWJomLVflP
	 Zl6nwcXeKIIbyCqKnE88HM/zp9Q+00QxzizFyY4VwZaHV1PqafUBQTr3kfPf5VJB9I
	 gbVmIzeE6oQVtjJi9hQjylVoRbURkN2fqh1xD1i+DCFtW376XzWXeKC1Ie27G52zbq
	 9Gq6FCxx6+xtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C362EC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 23:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171633380277.8268.7961376341072041181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32e47a5d03559b01540e07a5931f45793d98db77a3ee6ccf43f619d08c4015d
Date: Tue, 21 May 2024 23:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716333802
