Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290C3223336
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770951294; cv=none; b=qkYq3JATpMMK7TUidmjsCim58+3Y30w/IQZkGunRZkvHHEA3+ctW8Ugq+gexHIEov7kdK/1y9s/lNxccXEUvxZMK4ORyyHfjtLeE5iXKjrfOOfeGNaWU2SpIn4ZXFMoRoDB7ftFvIOfDprlExwC/sc29aYy5QHVi1z6ZCl2Y4bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770951294; c=relaxed/simple;
	bh=5nfJQrdLULthMNNSmM991IVs7zqMgU69gkk6yQZjGIc=;
	h=To:Subject:From:Message-Id:Date; b=DKJefTg7imze8l5n1lyb+/Qp6b0xaIJIIJZO4QGEdVY819pOZRFSL8QiPCzIHmkr7LIFivTlRzxbJXikAboxUFS7CJyFWd2G20jJRl075zUSwgXCh6iMmlcKrg/CtMwO0kXUmMCTvOAsXwvamO//SdZqdj7Akip/u7zYeS4GUbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwp4yTTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwp4yTTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA51C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770951293;
	bh=5nfJQrdLULthMNNSmM991IVs7zqMgU69gkk6yQZjGIc=;
	h=To:Subject:From:Date:From;
	b=gwp4yTTpctUGj9jCs8ZTm5n27rA9GAbfYhVeW24f/+PIVDAbIUCEd/vQhabWHq9JV
	 eNJqeaAqvaKUh5zj+pWazZ9oghcCx32PWqevc43CG1pLhL83zL2dKCEI3usTt9iOiI
	 iehMgLQ+FgCDiLa9m49ONIJdcSbV1E+JRdUozpHQRomiiKYlDoYp153AHYWPKB/is5
	 VmNnTo6ZazuAnDmIDkm/XnuwujKzgpujdMXbxL2KtKBiqOVuECO78eBJXNWvAiZBv/
	 nXt27BrjXVlTJ44lJlGBqDnaEpYEir61L1DDV5B7jqi6pLefL80QjTSGggC7A7qks1
	 KLQqH5fNsJ9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B6BEF48C2
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095129360.854.10752967205159637157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b84cafe753656d9161ce72487492dd24fd6153a6a19776f463be3170ed2767
Date: Fri, 13 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770951293
