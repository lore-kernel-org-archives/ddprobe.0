Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212A72C235E
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777746454; cv=none; b=XqdnYVrzFN6MFp5FTO8zZDKoKf1junxJ9wXXjQVaXPrD0hKh2vdtDYSJNlmMnGEsh+QWXwLu4KPX1i2kspbyVWSRjhZIwYFIt5UxHVxmrvOvD9rnGlDx+tCT7gGHvtNTKmx3nfv3Cbk696z+nekRv2CFdd74VXttoE8/VqD+MiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777746454; c=relaxed/simple;
	bh=qyU/ncJHWzAUL3uAhUanuZcDQ8DEumeWBtwyCL+G/Gw=;
	h=To:Subject:From:Message-Id:Date; b=tI/Rqx2nyez85zlJapTeq8vDDZBe0BX+/y63nAAayUjoKLg4zSDnCouNu9l41fC3OYahM0tll0f1s8oSV7+mraWnnCwEY0DJ5nXfmXh+T7rhWnerLWW5LLSkrU42x//UJeLrEuyoS+tYQxBsRKKJ9ZFmh9GoHnO62/42oeO5ePw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyrUg1qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyrUg1qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BFAC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777746453;
	bh=qyU/ncJHWzAUL3uAhUanuZcDQ8DEumeWBtwyCL+G/Gw=;
	h=To:Subject:From:Date:From;
	b=fyrUg1quQ7QhfbJRursodpazTEylZZNsbwg+i5RxJabbbIjxoBDYWk3jjbFkDPejB
	 GJAdCoQi5dbqw0j8E5Rz+a62T46wmLRkRaMJGNZ02iONF8XWkuThvvTXG6RddSklAv
	 sfiKVmrDIBhN9kAHeHK7rJ3BdQncInFfZ+qpyMsESQS7Ub1WhJIn8loz8zN6DgYtyR
	 0zw1FqrqU/Y5kBfNJfneELJbbPsVsGHtfcOtdxG5hmFBpc9uu5YnybUxWqxlUDIgyK
	 XUdlF4RnGzbjifieO6nx9Zx/liPFzwokdJef4B3LzsPt+Sw2KT7dL/Ca7zoipQhR0b
	 UBHuwnSzS12hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE109CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774645368.9377.333259566265081027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ed4941b6bbf475fd1e19e1807c4300fd5b91999093828e6bfe36b2a36dc4c7
Date: Sat, 02 May 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777746453
