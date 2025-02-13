Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E09207679
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739447935; cv=none; b=m02k/hLwI4ipWDbKORq0XUADowaGOCUp9tB+ntqftrYiTIzH/E3LTrqAhVsAMxGs/FsLeW8NkCniEfn0fhcvE87YB0rytyS2muiSewsK7eSWw7dsq2VijMwrC0IJf5JF/6uy2gv/AAjyWruowu8jtz4UjaBHsJeXZcCMlIc3T+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739447935; c=relaxed/simple;
	bh=j69T17Pra3frVbcUpkOPQKtIYwqkWO09FlTE+qn/vDo=;
	h=To:Subject:From:Message-Id:Date; b=MMrn8OEmTma7mmoBWX1+v7E1BXLTENlDULvPKsbmxmAAqR9QIqBhwCJkEzzEAhMeEvnP+YwoBTWkW91CVIMWhdAQMHh24WBqXXjFyJb+LzQAd2rMvSxDUJmLOhibSeZlmO09FhC3qd6YyjYR98JwXTV2yd24Sbx5XV2kHLS2qKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDqZKTUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDqZKTUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F5C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739447933;
	bh=j69T17Pra3frVbcUpkOPQKtIYwqkWO09FlTE+qn/vDo=;
	h=To:Subject:From:Date:From;
	b=KDqZKTUHZlldT4zATpKI0yARt35BVmiyvJBBvnVEuJSc/pYskGj1l+MO9LkQhtDYN
	 7++bJXPNzq1pXWVkUFbFI8S9nkZJbHz1YxB1cH7JdvCXAT4R8I4uQbayNGG18o61Bv
	 pX3ljyRkaVGWYt4mH/bvREbPNdLWrjbFKTvC+rAVoxBWz/s1CYm0BHIqp0JaZMQ/Da
	 xHm+phTMXmkh/XEvLlSaWaL7vXGF9iEGhwf03D8zYfbvybicefMdsGcTxmp8eZEGQ7
	 HXh4LWZsdrnWhpdiX07mEYZglRv8aW2LTi0iytCc8D+soRcZN9ZI9Z+71If3YQBo3n
	 innOEHmunYdVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D8AC0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173944793360.395.434254358421860609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f73cfecb2c1a9d8154c21019266ac09343a4c88f75e731ceb65cea11df4fb7
Date: Thu, 13 Feb 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739447933
