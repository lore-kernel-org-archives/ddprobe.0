Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD52482EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748863794; cv=none; b=Bav5Dszd+ce4nZgHR119Rb2ukW3NwElWkqLjkMeWb2Vas1Wq3fI0RC3SEi/C2lTMULooHC56so6i5k9CSpaHLAmw+XmYdX96V0tJjJYo/6l84pqME5Eq3APrBHRfFzivRx6hrzKhfciyP+Ww7wHN0d3ARD1/JgjUfhZBO8UYFMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748863794; c=relaxed/simple;
	bh=1asjGsuO2r+i1BlPv69wn822c+qBCyhD79nQA/yGS6Y=;
	h=To:Subject:From:Message-Id:Date; b=OnbUDvy05QDt6xP0ADPWyskCHj2q982KwIaBD9/EjzqiE2U8hVlgXk15+RPqxoe9mHhmUEy2lUsfkVq9bULs+ruGdnxSuk5Z7eaDxq48ubJwrwi7M+v5i4i+D7xkMdmKztxeCCDcM5tOnegElZbTmQuoS5HWKevplGa32o9SQHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QklEoUY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QklEoUY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5A1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748863793;
	bh=1asjGsuO2r+i1BlPv69wn822c+qBCyhD79nQA/yGS6Y=;
	h=To:Subject:From:Date:From;
	b=QklEoUY5LVJgybKCM0bc9IWVTxNi6i4mJG6LBLJII5YyGeGMBpNqSMeGf6Z2iFdmF
	 +ugwWkDGXJLXlXnR0Hhg0morQr3/Pg4K6Dku+oHi+QllrqVo5ApmkMnzdWZJ+XmJRG
	 ulhy6c9yuYvLAVJb6nGbXO5/Uz69Zo7KaYDp1PlPORQEJZF+R4UDNDMZbYMYbIBz28
	 Sj5UQk9eW+/m6hIbsjqXQYhl4RzNI76mwLpITw6zSi6hfftnuDlTYp7d+tdm5uctwV
	 oPdnv+qR3dnTBCf3s1bXm5tJyvpD/YgRMtVXSmIqU5HNpnbBvjg945kdqwm/EvwOV5
	 QePYMtH5GDshQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A4C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886379357.21729.15012632395589454572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce9389b38f83127640364ace9a8aea40fe8e608f15132f2fc39445d74b4e8d8
Date: Mon, 02 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748863793
