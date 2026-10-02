Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4987F245020
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790902234; cv=none; b=egFtASHYVNSp1FacVuUV+1YDIO7rEekTofi8MjkcsP556AoE+xyIAX9ffUsV9gmY23YPNSYm+EEXZePKjtnnUVY3Qq5DhoIA0KfEM+TQ8qDOMf4/Vc6QjWb8pky0bQkvU0sU5lmnh/7szgIob5PUXzrp5oB3o/2JWIL/7rdpFWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790902234; c=relaxed/simple;
	bh=qCY/l7B35ZxH4nywUT8IZEmF8kbFUatAAAx6XlXi5FQ=;
	h=To:Subject:From:Message-Id:Date; b=VG64mvd1aWWnSPFg7bVbEJdIhylCbnpau1q3PgzKi4glDUExhi39981KTHCWEESN25BT5Ixfwhj0kcyuBre3D2tsetDlcauFrvSuE0h7yZ2kxbQ5gpT5/C/deO3fE33anDfoMqgPFtLr+1asegfiZRRDcXlsmdfFwx0NatwNMfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ojr35wLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ojr35wLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BC0C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790902233;
	bh=qCY/l7B35ZxH4nywUT8IZEmF8kbFUatAAAx6XlXi5FQ=;
	h=To:Subject:From:Date:From;
	b=Ojr35wLGpfAH4VFew/5WBd2J/W3Ban+MxxSP7xl6P0yZwvle11dgkve9Ry9WDU4xN
	 suOq8ZNWGm3TdZzQGozBRD5pnc/ANEddaQy1+rqnJuvfaYrNC8bhNpGSY10HtLV547
	 4TTs/4JFuaUmZU1oxdb2fxho1lLsT2nwLURTKHx6krNyy6tA7wPWgmUveEKPA5Oxb/
	 a7Va4q0fecwY/zwSibE2pVmYZix2cWlhvgjQf/2zT0yktjDBGjv93c/boxZpdirGxd
	 ytMSdCS94DKKuT0V/sXyaa97cr9YNCLOjgvgAVVKBrauR9sVsT82tixKOElfWtFyuX
	 lpFnURtwN5dZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3C1CA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090223369.5796.12053694896746279858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9768aecd2e52852f947c6a92bc00c0191197e43db77ae7d55da3e078e7f8b62
Date: Fri, 02 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790902233
