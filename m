Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3347C21C173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785490834; cv=none; b=f/UdUKDiLKmuHkTnJMDTspVkKTwbR86q5PM02Ozgc08eRt1/FAg86OCBWUSd0ncL5f5J6dZvmcil+nA5H1zcJ/L0ofCqkkWewcON0S+SoF5duXGvtgCiYJgeyAbYBwKt4l/6Sn+YsL3une4IxK+xXjC1gmR5BVOvKX7JLyVk3iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785490834; c=relaxed/simple;
	bh=3nVStuXx2M3EwzojDMgEMLXQVR+QBzFbMIei9KOhgDc=;
	h=To:Subject:From:Message-Id:Date; b=nZWObR945oTo/vwMc92i/SeCIwGH4ZD1ZTb+PyOehs4VHjRJzQ7ZrGbTL4+Xz9cdRyZLU3IHeSHNAtyUKH2SY9IRx/vL+w4+vCy7ybXxSeO6iHbqkVwQ2fvwvUkI7+VMbEmik1i93QN6p6mYvXSL9gR3KC2rrJvFlrrjYhMBzLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bisT6aDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bisT6aDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5C0C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785490833;
	bh=3nVStuXx2M3EwzojDMgEMLXQVR+QBzFbMIei9KOhgDc=;
	h=To:Subject:From:Date:From;
	b=bisT6aDrgMBE6GCF1jUSd6hRcVpfDnXx6LgUucVwGmJsSUzoBbTD43hbPGF8Dzwj+
	 uTcrk08f24kXoIwPaLT4iIWBzd/QLc/E3i01NkAoAFerE4OdOIO9eRyZ9tEILComxK
	 SLexWjMjP7L8bOVjo/rfuxBUmybuwU4ngLrCqi8p6WD/p5MUF33xDGUVwguyMRwX55
	 yXjSSM5TlFPabkRQq5c1VW9yaujanQMIGR1yHnvUb05usoTbx4M8o78vRurd6j1RVX
	 4rYnHVa7dsh/YIZ5YoCHbF8yY+clobJYLl4Tiunp1r3ezONda27rHIGasHIOgd4Pqw
	 9nQZ9Ri1agAMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E5C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549083369.14562.2141880935879822182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dae031d8d34676439d1530a21161b0358bfce3697325cb53c4183465fd0d2dc
Date: Fri, 31 Jul 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785490833
