Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9203D9674
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783087714; cv=none; b=hn/SPj2VZbZMr3KiDazjvFm611BaPs0prD+MCtNjef3otvJLYyP2p2nPOV20f11gVojsTPGDLhCmhFRGHmeVt95Js8c9hbz6NUKh0mQxNmv52VZnqHJ0Cx4yf1qvzcUCfEkELizRu0t9GV0ItjNILz0Fh6nAMVAd4ZAC43uSV8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783087714; c=relaxed/simple;
	bh=OtFKREJuIOyLCxDZhip7eEytwSC3aF5K9xidMf8jUak=;
	h=To:Subject:From:Message-Id:Date; b=RReT/0Hn2qv1Wwg+zpOMb8jAuXe/M/Tm0ZuUmklSLVOQ+Biw78dN/6eqWdlGqAiexH2Ud0ohcZnhSCsD6GV+yhtfKkgNABaeSlgipxULwcg56YqfwwUnTgqlaDaWufCSzr9IKbIv3StiOLXFPLw+wfiUPTvvBssrjvn6soslDVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pahO7TGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pahO7TGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD896C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783087713;
	bh=OtFKREJuIOyLCxDZhip7eEytwSC3aF5K9xidMf8jUak=;
	h=To:Subject:From:Date:From;
	b=pahO7TGFE8weOrUxGVOM+h0/Td8f5OHd2FeAaIwovVY71E8Sh6lInlsu1s6/wkp+r
	 rbOnAXdATanPTvVEFxOBR3cKRQlgJAfDIIkffCPWFMsmDf/cArKcCzQJhAui5duCpE
	 8T7V/dOpAmVMo1ygb21mEUfCNiB5NzIP8QfO5e0hg1tibGOyOP8NotNJNQ0r2ZvVbh
	 ZDy8vCAHq0Ds8zob54FdaxXjisytlughlxHSco/Huc6gvkKgLZ9IFxvDd1JE/qpe21
	 JEJyk+sUK+mm+yujwIJLcI6ptD3n8HL7+dq9BNf+gxUAIwtYVD2r+cwj5TX2wgDBVA
	 GjjKOyaohKQ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CF4C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308771368.6258.11509630267711198923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419715e47eda8b009638ac869465bd0642151d94c54570940ad664bbd4114997
Date: Fri, 03 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783087713
