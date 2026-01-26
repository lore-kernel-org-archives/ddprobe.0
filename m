Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3EBF2D7DD2
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769460233; cv=none; b=MqObJoyfFzsZ9+iXpUVZ9Wqjqin1nU2UJ9Ay+hXLzKQ7qYQ3L8kHrXtZBK71w+mecQOhr4yoD1C+Efafvxhvg6WyeWbZv9jcgCakAm3HfRVYWOjOf5XDfefEVhqnHl+ldsjqQv3cJtdTg/J4jd/vsgVMwxBl2nFKYWbPG+TRK0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769460233; c=relaxed/simple;
	bh=T622yrDr+O54JrCKyL9BMVeyL8vB139o7GfemJMNhMI=;
	h=To:Subject:From:Message-Id:Date; b=N5agpuqZh7+Tro4yZGF60t2JCkf0tih2DvHIh6mPrgcuvdmQei87YcaPSoNw4AOnY3M16vWrV3CScBVWnvksEKc5tg8VXSRFnK9aStECWdYB5amOESH2/xYwWOOziixjstT/4MTyG+qdC5eQs5w5qIHpOGQ0EuHsEq1R3aPy1iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fz4Sqv65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fz4Sqv65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCE1C19422
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769460233;
	bh=T622yrDr+O54JrCKyL9BMVeyL8vB139o7GfemJMNhMI=;
	h=To:Subject:From:Date:From;
	b=fz4Sqv65T2+rjoGeMTHsdKOZCKIudf9/PjL2wiqJP7o9SZt8Eb2tvByGhRSrXZUP5
	 /X/T5+H4f577UV5xRjPpH35V3h4RVuGEaxrspYxXa486xmzH7H+tRNRdTr2qhr8A2J
	 5J18ZnzR9IaxNjX758Wh46fG6Mfakd/dEOG5plhTAGPyIr6Kmkex/dg6MrfTP6Q1Eo
	 Aa3bmz4kTU0rzbG8OzeYBUnSQepn+Aei/0q/imZGmrE8XVqg1PsiLubQbSvUrQekhs
	 dKsYeUth3A9fCC0lgBXOtlxs5WQsjd5BmWgf1X4gUQd6A1noRrqZyu9inxsDUKXb4N
	 s1U3fUA5b/vcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E3D19519
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946023358.29579.16183112699308375089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8921296aecf1d1d77643191ee0799d2c704044ff641dd4329c49ad0ba385102a
Date: Mon, 26 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769460233
