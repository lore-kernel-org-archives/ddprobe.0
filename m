Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A125038EE
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790638834; cv=none; b=pOv0x1VS00cJ8oltzUuT9FDBqnwOkjsYiBpgye+a5bmdkQvg0dToeclxEKMjAc0nJPI0v3AIttK4WrP/VpAwuC9mJWNsgfX2lOYmOC34hjoQbj6d0Fh/bXVHMilBMnNEX9mmRfon8bhEkm9xXwsOGz/AxzCRuIC+1JCkmDv8ZgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790638834; c=relaxed/simple;
	bh=J6R34egPNxxzp0/Yjlko1E/I+H3ZwB/fuKoKM2sMv3s=;
	h=To:Subject:From:Message-Id:Date; b=oXrIgLsfFz2xZ9wPhwdCICCc971YCJhqXQ2iXkyHgpp7CS2ZM8cMYBaGRF9Un1170Kp3/8G/vvJs3JlybjpOaBtK1HZhGLNoTK9ujaLSL/gvRzGFIOOBdWYjs8haXisbGVZbpIGDR/ASz+bXVcPLhwXKEfXu+4BikQlzmBDYpyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4Ft1aq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4Ft1aq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB37EC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790638833;
	bh=J6R34egPNxxzp0/Yjlko1E/I+H3ZwB/fuKoKM2sMv3s=;
	h=To:Subject:From:Date:From;
	b=B4Ft1aq+CpTtKB8JYU1eG1Jf/FXL2J+DLWJyK5x4CHb2ioDk7EL0DFJ6+pjlPaa4H
	 e0SmCDD5fRJa17HXY70Kh+ig8AXtFx2Rr4WOIbmwAkqOZCs3JW1yjc6ohoCXis6pLW
	 6gWO6zxhAJilVQJvo+e0Iw+Nh7SxM/9VITbue8zv2EXwwvykjlX8gfXCB7k7f/RtL/
	 hUB2yz9Dx2nkmTZbgDoX3jX3XMeUlhVdnyRlsUaTHIb5BJIaK9uJX5m39WK3pBooTS
	 PYkCGg5b/OtOvlDOMcrNYtpkBqq0O2Riw/Vo2Zs6VrihQ62UJuczjjKGNcc4fr2o5L
	 IvaFpQwsZlrzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EAECA5FAB
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063883368.29187.1903512060655027074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a220d53bd0de21e5be10cf387efd4b07455b9c45323bacfa2eb0785c291b9b0
Date: Mon, 28 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790638833
