Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4B42253FB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755238194; cv=none; b=KMMybD6Ck8HpGOVYbMlLl8apiSeW0VxMIV9oQHU6vylKg24j6JOojTRvCVTdv/04YnTuaiTDq7n5BPKStp8xFWjEgx2Va7E/laYNij/gvUXGMS4ydhTkHBp1ke2LqVlyxFRe55XlZPs+TR5SS65gFxEwK2UK2EE2qpZoqyapwNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755238194; c=relaxed/simple;
	bh=CaTdJdD2fjQ2+3TkgLgEu4RlqvkTTbAadAcDsvtqAis=;
	h=To:Subject:From:Message-Id:Date; b=DLeuUIhUa78dO8xmMMum96NmThYoTKCTJeMowgevE9Cy4qiKriyrwRtMPlx/EDMM7GhweUD5YfIu+Aj1Afzkv4BD3DZkpX25i52/olJ9J7d0KIIHG9r2OulxPloikHPX8xDPqLLeuyKATnl2UbZd9NTMKTA8ADkNV11y0XPo5JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T164HENk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T164HENk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDDAC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755238193;
	bh=CaTdJdD2fjQ2+3TkgLgEu4RlqvkTTbAadAcDsvtqAis=;
	h=To:Subject:From:Date:From;
	b=T164HENkpZ95Ul5CqkSsQfCVCIeE9vbGSNaGL4D7dOrcSiPj5VNoJgtmcxdYAixKZ
	 4ZW8ubJhBfKzLAa2hrjSqMp+7qzvMuAdQQr2wfrtJOW4UXNmECAwliP/B5+Z2FGRvx
	 ZneXXEaF2/Bd8c2Ld+p5tqyDeTUBG1D2d8t7UEL6RAOgzBUT0kJZxqNCNcHtwN1dfQ
	 Pe9dLqCyGdXYgthpxlAJnGsHPSuGOdDwcMIJ40ranA8d/V4T7Y++K455DiJf22avTq
	 qP4AqtpdsurcHgJi1EbLEp9aQ3gf6p97w2zU4E4TehEq/0pbVC+auyohKbOKtblS1g
	 W1XIu7r16onpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D9B8CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523819357.6672.13001917155286494694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0c81347d9a15981e48b82a2b916e9fc7a01943b03b92ded7be0e25c2724886
Date: Fri, 15 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755238193
