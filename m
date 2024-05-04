Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052DC1C687
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714822343; cv=none; b=VrVjwls8kNpS6mu8WAE9hO4H+XGgs4IoxWycFHQMnjE8FdWDCR7mYpaUItg/gbJ+HSqZoU5Hu6GfbSSg7O+FRhwDRk8CPPX8L2a+nPGf2d+gC8iJFazQpfAMioiDI6GXqD0BbRJAF4DqmOE56lUsut6hxAhD/HRvzwvYjOjIc9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714822343; c=relaxed/simple;
	bh=FImcZj/AfMmdqm+hWCYubcOSEn59/ajFMqud+vAdpJE=;
	h=To:Subject:From:Message-Id:Date; b=iiP3YDkxxoCOAl5Jv/jRvbyvsZAulob5eq+XHKaD4aK7o83UT9dipR/Lpcou92MPq5bQ1jQkY8PllJkgOVvbsmT2J/nEe6UhISRN7KTlKRVZNfVT2wmPyr7rpPF3ZsUzKNKLipyhWXQq6mTaAHXn9Sii6W0eGKOFhblemL98iwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAGINQhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAGINQhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0143C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714822342;
	bh=FImcZj/AfMmdqm+hWCYubcOSEn59/ajFMqud+vAdpJE=;
	h=To:Subject:From:Date:From;
	b=rAGINQhhsqXgvY0tywU72NAo4ZsyLXYPExfbomyFjVox4AAHEHfPcLvEpVntkV3nZ
	 w8CPTq+Pi34w/7bmokEhz1FOPkCGAP/FvvVS1gDqdUuvy2Xz8Aeh1GGfr4M+WQHo7Y
	 D0shcapyjLPmW2qeglCwcowNbRt4JZe5w3m0Jhwi5y5ZEQEq5AdUDWfmtBVc++lQOU
	 alKZbOU0e9W7eQ6Q0DXgUnBdgPGjxMaCReMVId85FAVNVOz+YQ88E7eM2g8cWvuNmb
	 58Ql7DM6cfgXwTnfnY8/tl6+21hBto0ptJF/PTy5quwHKpJL17Dcej1xejSOdiXyvm
	 l+n+CtrefecGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FFCC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482234275.460.17318930616187170419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230fae37514519a16f68d96c5619c18933a8ad5007fa2fac36a2ebb09fc82c60
Date: Sat, 04 May 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714822342
