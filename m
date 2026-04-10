Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF643AA4E9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775809053; cv=none; b=lw2sVDwsGx5JxLV9+O7AKVytL63gFVOTVYVOoNC9kaflBewphhPhNr61Vjq28P1gmr9dz8s4AQ+pCJvX05tLy/idTv7DFyQW08Mu/27huHSLw2eZ4FApNaUg39Y8X6SS286vnDe68iPMuDbFTn9dbN6b4XEH+blmoovFvsVOwCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775809053; c=relaxed/simple;
	bh=+Oq9Vmh82WaASQ85Io+wsLj3PtlSnBdRipoi/HjGXm8=;
	h=To:Subject:From:Message-Id:Date; b=dtTkKw/xv/dd6rpztk9jlX1VmFZGdJCB3C5voTWIG5J3bKaOeMl4xEjjIs+518cGE6BVqikoBI5eNi7bzRrBWTjxqkhr4r44TwykM+hCHNIcFXFrFSXmRe8oO0UjFGe5Ft73wAHVuAflk++KoZDk6TQ0yabrQHZC3SbUlsitmUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFdiZjE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFdiZjE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCC5C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775809053;
	bh=+Oq9Vmh82WaASQ85Io+wsLj3PtlSnBdRipoi/HjGXm8=;
	h=To:Subject:From:Date:From;
	b=fFdiZjE+t/BgSZ8WldAMc7cXCxVDiYtOYEti+u35P90p7Aym9lBguYzorknyipIav
	 gG3HEHHTmdJn3iDzMNsj45+7GwtmD2H4MdYC3aAUoifPAtBt86xOvUdpnATRWPhC2k
	 WPGM28RirqtyJwZ3nxHpHpHKbb5vdNWzbQqEW5vJLB6q4Wi21J1YVQaJbThS98ZBzX
	 pyhy1xCvPtrrBhAw8B9KwftmyrOxSobvdXbGo2d+aDSnBlzQKqjrgi3W51BRFctYlv
	 UwaxhF8pHec+Tsj+3RjPzkYD8/Ea0GuQ9nz4XOQ/GbqI7yjYM7BU/i7KB1LfLG23//
	 8YmSCABjEgy6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE70E99053
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580905371.20117.3096284077441077018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9b89183f79bd02f64fe99f1945e297dd8135a3d3c3365a08d10dea43421cb0
Date: Fri, 10 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775809053
