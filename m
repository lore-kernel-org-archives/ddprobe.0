Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBB215D1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757744994; cv=none; b=YmjsiklAUYPd0i70pqXalmzL0+GlQCKiJdAAYdGsbbO4KIHwVk/XNDIG/+0VrxOHM2485qfqQTeI33mLf8dcMk8JyEMSA1bj4HpfqsuOEGD084UT6px/T/vEM/ZEA5LIchfYmxDOiFtoJxCEXFm85NbXNcRh32dFOEiwpb6QWI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757744994; c=relaxed/simple;
	bh=ybx6azRuDycYK10wZwDOZrtd1MeImdh8kzDoak86/Pg=;
	h=To:Subject:From:Message-Id:Date; b=Zr/C8wKJ2EAGa9ieyLzspWz9KcL6GzBVUP7ZF+au2PA2c1oP6u7UPwKGFdv3IOdvB8SrfGBwXKjsVWifgSKqVxVaP2TjWUkJ6YAi/DyWIdk2d6qtVNXNTtaQV+kvXBmLsDhCWzNnlU2lKOlB/qvw6qtKzL3IGwjvO6A+lq+VYBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPbUyZRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPbUyZRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D595C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757744993;
	bh=ybx6azRuDycYK10wZwDOZrtd1MeImdh8kzDoak86/Pg=;
	h=To:Subject:From:Date:From;
	b=jPbUyZRoxIxSg2kGRDb2yf97rwG/h3L6/nykWrq9NenW1qOLbkrK1sN0XpreBh4k3
	 9afuvRY97BJW85F0S9Yr7LgTm6tSRQeXadHy9NhBilkHzxxtUJi8/SJWjxB5qnYBhD
	 GZpDUPiPOCwKU96Yy5Lk6nyf10Kyzpp5GflaKj02bHbXXQ1TpIrB+VZjBHjvIWcSww
	 U/P1/tToZejSsWU+pHWnyWJ8PJSfygzKezjac6ajMDnSjvXGyU21B3rCAMEisXPiyW
	 5K0p338uHWnchHxZnSce/GTEGoWwg5zNOcmylSh/uiSNYP/nucQroMtgswYq1L478i
	 /YzjfANPMuSyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE46CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774499357.30157.15609062078523115515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92b61347d361d1e0269224442790ab1960915bf4ac1d1c2c65cb39dbcb0e88f3
Date: Sat, 13 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757744993
