Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C185375ABD
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783777114; cv=none; b=MPsoypXD1GkCJSs7OwCYXpIJuQo0DO/aT3wR11YCQJm1mN0VyF5ym1344GPhyO2mb9E7E2et/HeWdFtTt/qOqHwB7yOm3r3pmCVYrGoRSAieA9it4Ql0x0HzqfnaDmj5+x4XG1uDxJTH9kUeds0DAtTasaLYxHijynb5DAjImfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783777114; c=relaxed/simple;
	bh=Ob09vKW2hOrTGILGQJLSl4YYxU2PcN8J1DorooiOWcs=;
	h=To:Subject:From:Message-Id:Date; b=t5Lso/7jN+SVvvhULhb5gXh13tszUJJaG8PJSAiEoOmOHbyK44dup0T9L1lHLJQ0LxcdSknPdbC3X9wsWjKis07P+EF4yYF66bQjdWUyHA8IoeVKqNpcuDENadR3WlZLURvwP5YSVMEM5fG6CdHg3nxPTKjG34yRlN+DpMs+2z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ja8wNQ88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ja8wNQ88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45ACC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783777113;
	bh=Ob09vKW2hOrTGILGQJLSl4YYxU2PcN8J1DorooiOWcs=;
	h=To:Subject:From:Date:From;
	b=Ja8wNQ88JRk2oFtTDUVzw6ck+cfY3lr5bSqdkugJO/CXRJrpqyoVQ5ghh7sBBEN/7
	 UXqaHyq+l1xRHKYrPEKTbAN47EuwRTpAbxMwjyfNX8y1lPkAtPoEJRxxLEmjOeb/QW
	 TTutrTkVuHkZ3o+ahOupvPrRebs4eXswwEwFnvmf4N2P0KxhjvC0vSlRnrMS+wQxrP
	 WzqDRPHnfgAK9Wu/1cmyKBe1Q5dIygHfIBi0QSVLNjbuhFfkHQuy3v0KDj0AXKwNte
	 Ivzuth/1tr9EQtmtr/m+pFpKFlQxQAecZ/V+f6T3uJh257p0HownFw+4fo/HZ9L+X9
	 YwTJGmj1rbeAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCEBC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377711367.23419.16262259641114455440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cbe6295850cc8a2d38e9df1d198a47cf07795c643001d2cc2d1ba558272d2f
Date: Sat, 11 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783777113
