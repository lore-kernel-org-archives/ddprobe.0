Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6167D3438A6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788004234; cv=none; b=kdyjkq1L1KB3LSViWc4Lu3RS4m/gTkIdtb0dy/pT12Iuv8QGnctyA2h6UNiZ8Ur5+VoFnRDE+asYcwxBP9XEOX1K7DXCvo9YltB3NPtJG18WRRkacI8MSR7JfO4hk7TFxK+sblVKpqKuDMn2z+ttfjzR5NYlxZQLQ0++vTyVYV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788004234; c=relaxed/simple;
	bh=70xxRqIsbZPIFiQGcIfka45qPZbZRT7vi7EsrxLd+JI=;
	h=To:Subject:From:Message-Id:Date; b=L3y8WLTCS8ysjaWWi3xQ22OiXY1gGih4VnIEPW5fcmxcm8J2FSQOIfpkmI/viC1gs3CLNb6jRMHI2VyLrCVJQjxpwedPQdYFnpvrtHMAjdjvq1mQwzjgO8bcg5AhR2M9YPZOtZxo/y+Te3qxMgo/kULAhmMhjwqnT0xeHhOjHpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwSrMSxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwSrMSxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ED7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788004233;
	bh=70xxRqIsbZPIFiQGcIfka45qPZbZRT7vi7EsrxLd+JI=;
	h=To:Subject:From:Date:From;
	b=CwSrMSxUIsEt/jMxA3W3HeWwXCx3KOGRdBKsufqdxrNSiDLpfBYzajIYwbnZdKRwx
	 bBUJNENxTj0+gf9H67PT1oae+JxHJA+li5mln05fu57ppmZWAjPPsR/QPju6TDNNNg
	 kG20TtiyDQfmSeIu4f6sfU6GMF3VtdlQrBehq3wgunrVRON/eUIEghn/0FXknPQtd0
	 C8WPd+0MiGXhUe3g8I6mzadT1jDUKGxRVOhs/zXGDWOWd4QB7gR0M0L0PKv5IZE65R
	 NeVeuE6aIVkFIaeRDxTWCij6Th8InjZeSE+ZoufLkNvvOIuRi9QZMZIbQGHQ80WH5/
	 TbgrjJ9jCNtDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED69C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800423369.26768.15545272119535465145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f94711608642c741092cdcfb3b8fe740167fde3381b8f639b08c102b8cd346
Date: Sat, 29 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788004233
