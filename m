Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1623C1CEABB
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729945554; cv=none; b=ZZG0y1JsK+9aa0yedmWH1+ISGKG2OUvsTchuBVFAqiNbbUXFrTT2eJjXz6i7mqQu2GVai4TF7nP1n9oCprvmNPP9yMb1sNAibJjTZYl7WdKwg6g+xIhhD7TIKVVj36fYex90IcqwKdbtvfLz6Ppp5/dTjrrwtMaNMWiw3lvbCsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729945554; c=relaxed/simple;
	bh=LwUJS/diIvzRtZogBWCyhRVVUNBIa3Tlr2E7iC/vWdc=;
	h=To:Subject:From:Message-Id:Date; b=Nlag+Qk4sg9u11PeRfQxtY7Erh9v4mrwstkbYk0VnnOuhLK3tZBX+dWn0XhTHC+0aeJWCGF4b8kXaU3jVg6FtIWck3W6cLgxJVNBsa8P5MnRddXIdGbZGjuGLOnsR8OtbPI3K8eIuVGN7wFcfgpKXwJBhKXxt+rssn087c3Sdvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjJRHxBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjJRHxBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A467AC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729945553;
	bh=LwUJS/diIvzRtZogBWCyhRVVUNBIa3Tlr2E7iC/vWdc=;
	h=To:Subject:From:Date:From;
	b=SjJRHxBKsOZ49A7t7N1h7QwuMgVVLuReq4/+Nqrue1A3kkmdYWzVDPYAPb1MIVSsE
	 Zn5svFxk+QSI2DBC5diRjnry4UoskdtdTEVo4WvtB44Gc9Z0bGA1/me0pwnjXxPiYW
	 iRwcwdEMX91W5g91SYLYfNMdjlI+i/QNPdhFqQAluI2LZvIpLPwyIgHKlgq3p2HEzV
	 RCbm9ubp3tI1CpfwFX/NMb5vS6P6+JWX/ff8pD3SmzJ9/Z+qBrDhOs7r/2HFQu+0rg
	 V0s2xmI6pZmYyLQk5D2bJU0FaIalCvJ2/y7jD9951g5j0JDvahTzMLO1xTxV3cAVvk
	 RVXhPgvL/6IJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C7D10BF7
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172994555360.24855.14591216252773007661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef7f88bb607aa5b1491113f0f3707f989a2867c3e6551f73cb490d977153660
Date: Sat, 26 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729945553
