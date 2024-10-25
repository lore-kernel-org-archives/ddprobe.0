Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DEC22B668
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729858554; cv=none; b=jvBxqIYkgko73EGdPg65vPrRmTRH3cF+ZIi3lJ78N/I6XMjqOiZmCPXW8RwivisWa2pII/cUscLsYSqxe5NhUDLg4rruIywSnHIEF7X7seNDDsUXdTd0555b3wRKqMk4oZVTYB+sTkJpPkW15r8DHi9tsO79DQU0yqKImPhoJRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729858554; c=relaxed/simple;
	bh=1NVcarMdjsYwYca9wlOa72LD6962xxsSBSp2eozbjhs=;
	h=To:Subject:From:Message-Id:Date; b=NYwB4v0F8ilG688qI1e0OcttK+kdup9Vu4MuWQ9iswYwelbgf2WOxt1/XODXgIeo/+zruRIJxyKdrC/cquAnkXySJynDpfwz7RFy7j1jMgOLqc10BH4qtnMvPe2lM2F0gXRYUMVc3r2foZMAtP9DeN6Eze+4M2nDDJKtdA9Sdmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyIDFCOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyIDFCOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE69BC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729858553;
	bh=1NVcarMdjsYwYca9wlOa72LD6962xxsSBSp2eozbjhs=;
	h=To:Subject:From:Date:From;
	b=OyIDFCOWsm35OiyeHbWSSk+XYRf68ISbhUZ/HlMYE43hDzEhT5eRCS8/inzNoLHA3
	 67DTrhFIMpn+ZPTu+oNb8hfRFgAKsrp6DW1lfErsERZOL7RcV4jxFllcKO3VnnU6mr
	 C9Qgyqs5RzJyfwm/HCRECOs/ab87xJiXiJiv82pC3ERPvR4U+Nzy6Vlaarg3H/DOQX
	 ToxgVGacQQmbX4tcr48aIFh4jZ5dEwxfl1Y3FFcwqBf7x7FZHVhZHobu0TyG14fdnB
	 yt6IG+BUL8F+r/UmXwuMbI81NbRzl9onp5aaDlFlEczW4nioTyDy66lcZzWvxcmUdO
	 1vBsDoGs/HWaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AB9D0C603
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172985855360.26087.4607678290653754000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2210eda86e0924972f6462fc11661cfb366b9d147956a86692573ca54292d09f
Date: Fri, 25 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729858553
