Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1567B2E8B67
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773984294; cv=none; b=IaBPshQOQ9zuVU/GyTqiOwgp5Bs70cbYNT38/pYx1zLUoRo25xGBqccpGbg7h9/jaHKAd2WQ2w0yCH/IfJfQItVnm83JQ2071ZmNF2Y+mO9YkMNCcPr3tX3uV+4vloW5vtW2RS0gtwZzVZ6Ug9OWW4SlzoZEKEfnq1DqyaNAxXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773984294; c=relaxed/simple;
	bh=AyV57lv94hGTntEIJ+L+6DrPk9JnjFMr7JNyiaAvXBA=;
	h=To:Subject:From:Message-Id:Date; b=ENRKdpUpEHyBJYBgPzaBI7QaK2Yy6bhR7XCZTuXp3QMus1csYkLWuDdZeSbrso2A3Qph8NkUhieAKuoiJDakY/Fb7q9/MCpIpzs+5BkTDFgaSuD87UIOKYQVQaySxgNAJWo4a8guxhWP/uDPhLQlkol05AFy+MoelWVFoJ93x7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QB6v1Xzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QB6v1Xzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5658C19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773984293;
	bh=AyV57lv94hGTntEIJ+L+6DrPk9JnjFMr7JNyiaAvXBA=;
	h=To:Subject:From:Date:From;
	b=QB6v1Xzu/wWCBv9Uf4IrIhYzO5RL3VnBtql9IKVH4qr2KT0MaG6VN95QZa96LGNz8
	 VkMz1mb0i01thM33oFiOYfDrPw1EMAmb8jHdTsCmdBbRSpVN4kfz20C4Py38C6dPEE
	 uXgfLZejWd36Wl7X8KOvlVtxycDPG8TgHLcYjmosG/Hnjr+KsBMtciRvzbpg3Ee65G
	 JfsPxQqfa7owMDP88zw9SByJSlPRHmyO39+HMk/V6wzm2sRLfmgTti1+ABc3PjkVa+
	 8hrtmPKlHhI49hYSK+EDHBdnS+g0aqNI7zSf8krivf7URMFmPjM2+nI+UfR7jH0S7V
	 OGhuEvJ7nKkHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BCE1093178
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398429359.27666.6896131851962295644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ad12e473e64b63c79273a91bd2d5af3167ff8ae401b534fec0026242bc1743
Date: Fri, 20 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773984293
