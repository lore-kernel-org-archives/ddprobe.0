Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB4425D216
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769856834; cv=none; b=KrZbPWBubTdJSckVAtx/r73p2DIqQ3sgY0q+LIhPaTQtL+waOuM13MYkRI0a76xq2HkTLNnnM/ohW7ucMzEH/0ubP7p9kTERualhf76jeXbvlob1Oo0yI3D3lUQXJXoEiWPp4kpiB3feRG4zJsSDkunLfswRV/NkffspaVaeo+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769856834; c=relaxed/simple;
	bh=UeRGgT3qJd/cf1XyxTmxfwdPORYNpx1sG5sR8pPmxpc=;
	h=To:Subject:From:Message-Id:Date; b=MuS1r9he65T7A1jHYvgQmcq9Bqrhe49uV0pIJiYFwc50fJhBOvmId5yzuf8RNuyapPJYyOhCi1qE4zpDlZB9b8eIiHARWhbvGYO/Dgm6UKmjgYhorz1yw3+jyiQacAOxsra22idj0ZopwK+ZWD7OoSt4XCT3izANybua58BgDrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCT0e88h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCT0e88h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AEFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769856833;
	bh=UeRGgT3qJd/cf1XyxTmxfwdPORYNpx1sG5sR8pPmxpc=;
	h=To:Subject:From:Date:From;
	b=KCT0e88hqnAB6dAJMVwIhO2kj7CJjZxmFKRFR7EOqlh0OIgGYdhwAam/uthgPf/Dp
	 RXBQ/cdy+tUo+wRIieJNZm9gpVMoao3E03cRvNNNcZG9UlC7AE98N7rVwDthAhs8Q0
	 5woBTDb1kt7L5d7qMyYWMRiAUJDArQwucD4KuSLPpdQQxBo+umLOn9gBlvSfGYBGsr
	 QzA9dCX1cryC+bosCHoDdSh4sBZrNPNOG7MF1tqwR6dsXbOpHX2UP5DU5KeRimUYNx
	 avZM2yY1hvXQoqrttPDkyycXauKnk72n2E5uORP/7bGDZWMrftdoXG7sC4z5+IW5wn
	 M/rZPNz2MC1bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9479CD79768
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985683359.8110.14098620447197414227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec33ad4abaf77933063b2363c4ea0a75daaf193fba1d8b6eb4e7917689c55ae
Date: Sat, 31 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769856833
