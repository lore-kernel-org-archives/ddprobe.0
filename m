Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613BD221DAE
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784855434; cv=none; b=IeXHGhxZRzin/6P5jwnyr5kjOngkW83+W9ZNdJj8mjez8x2Ndc6+UpDU/Acdkq/mQTuot4midePr/FHoJ3spfgpn1IqYpZlxQDkUE1SXRGFiEmmjNzaK/EYfd1soyuZfvEhsrAAfgjRXP+K5nknwu5nMf3lo/I75vfTV5a6Ul2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784855434; c=relaxed/simple;
	bh=e+vuokhy1klS3dhRddcIfDdRcIkY1q2ZIlDdOLeSyL0=;
	h=To:Subject:From:Message-Id:Date; b=E/QkpRe1pGDH0vus4TCehrEr9ZJm1stiJp/cDusUNUPykbuKKy5nO6skZYW6ERQGO5uubIxoTSc76Ic4LbUMt3XWZrpA0TqayiyQoCWhHg/sWAbvW5f8FapR9pJ0Nkgmm7f+HA3dMF4U0mPyjpdA50R2KybAAz3GE23z/Vm2NY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkIFAZXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkIFAZXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A80C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784855433;
	bh=e+vuokhy1klS3dhRddcIfDdRcIkY1q2ZIlDdOLeSyL0=;
	h=To:Subject:From:Date:From;
	b=MkIFAZXgt/R2rUpPKxxINYKIrs2QzZ9HLIEFOIsbGxvQIlEJymFbWL3gdHYF/mEPh
	 nHx5znb7JtLrCaxuDVZSuniwi39ioi96AjnH+LdJTD+K6PzsCCuCfnaeL/immpNGZ2
	 ZWTwY/NFPN/jmim0mbmvp+r7r0qTpfc8WrRkSq7cZcXSRS5vaP4QU5ajJ35nFfQSAS
	 nHaEEA+1HY/t1S1sNc4S/1vjioxvLteoB5zHtt2imlY+7z2t+BOuXFW85c3C7f6RrV
	 y8qZRtr1VxsdNeoEgSxdqPtOrVtKIUleQg0Es67qAGzgIS+kh49RSqGFv8v0xvG48/
	 9TXRpwtVwltkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BD1C531D0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485543368.10072.848893956075772524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5096aa4677d7ca645ab9e45b812771b8e7e63b38e0bab6f20a6dcb1ed94aff9d
Date: Fri, 24 Jul 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784855433
