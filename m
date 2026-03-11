Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D6633F58F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773242694; cv=none; b=FbyXN1D1k9DVa68f/SbbBp3O6iudANc3iBU2dUnJg+UtvADbBwO5fQficyqCrUd8UdQG/0xGEUTFBPqSm4e45X8dQDA+SEEEDYU2pTzbg1OfxPVnJYwvn/yTzqvGItQAsnEyEEt5IeJHfW03QesZrOojGLhvL3AwmcKIVCmv5wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773242694; c=relaxed/simple;
	bh=aUhHMj8WGXjXTA6M38OjKchm6NslulppuCZzjzvFSQc=;
	h=To:Subject:From:Message-Id:Date; b=McIvZEJv+oV9al3Fj8prlIa6yuECzHBEO90k1ZLLW2pDyUN9Jj6glpbz2hMF0VMZb3chsOr1XlXmQ8SW0syepodZZpPb4dhp4zdWh9rh+AikU5xwsJYyOnePBAhmPoECedtNeqS6BAXFT+h4+cDrCx0xaHsn80KS4DHvW+piqnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmuf4tKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmuf4tKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E4FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773242693;
	bh=aUhHMj8WGXjXTA6M38OjKchm6NslulppuCZzjzvFSQc=;
	h=To:Subject:From:Date:From;
	b=fmuf4tKba/C4msCzQnhiZC8K9d9yxYY4EOYKhFFV1VGz7N4I6cMfqCG8ZWdEspO/K
	 drCbP4Z4Kfwni3DQNU6lFXwj5ae8HgLeEi2Tj9wWAJcL2BY790jshFUo4ouq3VwLho
	 fuqNsPz0heovreguiJhukw0WxiFqSqQGArwJKGHvAmUAW40siWDCZDJTTWr5y/CHLc
	 waseDe7/RGmQld/l+dgeFDfBbQUHkQ9Scgy+f6IUwUwXWK7miLU4Mg9Xf8La0BeT/m
	 rvjwBD6Pie7xmUP0t9jv2owgFBmdgsppxI2DcJxNep9l00f9Ju9ugtialficIY808G
	 AmPHIweGLiIxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918341125847
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324269358.24682.8760051604756309421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5957e5126478fa1516833d6f5b1bb793c1028f68f3dca94d7b8b12a7dc2ecbf2
Date: Wed, 11 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773242693
