Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AE72566
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717497323; cv=none; b=ETMQ8ZxNVcd0QbLJ62vDOSJL41xkZRkiWifC7094jjxziOz7wdIezJLkTYO+sHJQGv3Y1QQJIHtqTcgL93vgw8CQZSNcM4bMvQRTgN34wDA16ADfpvLjA0smKBemkyOl4sfg/cwt0Gwt6J15nhZNgGjmop9pUdBpiStf256YW4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717497323; c=relaxed/simple;
	bh=HZGTyn1JU+boCQg0PHGb3kyvxKXlQBEOL6SfMK8R220=;
	h=To:Subject:From:Message-Id:Date; b=DubdnljNhBhuMudREw6lkaehNHdHaz/Ai4Sx5cg/SscRcuPZL1geMQdOjEiK7bTWni4K9lGbNlGVC2iCGCH4JybrQXCSSl1wQU5Y86ctPPtPmluY5zvMKAO5WMs57qbKzRCfFAzVIrsTSZCavsGBxMjmGAGaoYlihwg89xOmWhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVzngVg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVzngVg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96C1C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717497322;
	bh=HZGTyn1JU+boCQg0PHGb3kyvxKXlQBEOL6SfMK8R220=;
	h=To:Subject:From:Date:From;
	b=eVzngVg5LQkm3PidKQlAclCRwXLiL5IJf+e+LvwScMDiJwxJL97Zl03s8fxadz0vF
	 kDQOBgpByPXbVdayCuh8NhKD9IKpSD3iFpJKA7jk6mTXwCXnIxoEtl1xZQP7wBFjRO
	 kWkIrVGwZF04/lNzE6eYoxVnmhxDI5pnfXqGMqVS/aZhWf52xIEHR6IHhxRO97UjIn
	 rMnlbHuqZorfHMg3zK8EuPD+2v5r/k9OOw6a/b4RPMKaZwnjFdOhEXgkehlXl4Nw19
	 bNMOqIa5ZLClbsmwc3kOecMI1if+yE1CtPDBwkYuOwzgUjD4ylM2OTxvH+zcP4Ot37
	 9zRZVpPWV536w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7725C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 10:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749732280.3999.10707489542746653718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7a4e1b45ede7535040fd1f27851ba8d5bc65da43ad2e7e18fda83bae26d5cc
Date: Tue, 04 Jun 2024 10:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717497322
