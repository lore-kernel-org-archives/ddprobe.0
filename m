Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F4B1CA96
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715514143; cv=none; b=Z1ugMAIpSSI0RrfeVvrzHQSLGgbs2wNDM9+8fiI/MYdAsffwBLmKXpzhb958/8/GUe1s/wFPZbcZLZhySOvgLAtEDiIoR2fd/MfezXFWgckrSRkfHvgf69+GHAryiAQtJc5TVPFFj/gO+mRvCl3Hhulage+RwvgUPb1pZG6y8u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715514143; c=relaxed/simple;
	bh=WIUruC87ROryYHos+a32qQWeW10KgG/UtATMcrLxF2c=;
	h=To:Subject:From:Message-Id:Date; b=e5yy9S86VmiLkWxfW8/9v1pIDWdI4v2UtQqYOjqsBV3VBLo6+/JhMFECb9TEhz7ZuHdsOzCEZncglY5iaLtNN1xsJvlxnrRFd0P9932QVlAoTdq0h6HNOJ9yv5uiYuMBpM++xKenoiGtbJ5Qk1iRFlVNchuDCnRuF06/H/S3o90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3jpkvUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3jpkvUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42A5C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715514142;
	bh=WIUruC87ROryYHos+a32qQWeW10KgG/UtATMcrLxF2c=;
	h=To:Subject:From:Date:From;
	b=D3jpkvUlQTHTxIUTX4dQ79usn2Lw2H/f/JegLTSHU2GJhLaeXiVoq3fQuQIXNrsIA
	 aC9LP1APjYpx93eDl2K3DHfest3n38KU40hPvwqghEcE8t5ZrDNNk3SW5s/KOgzcxO
	 g+psPTV85zh9zmDpYL9TgAn0a058qv7AKqD8MV9Fg5VypaAUU7TuNh7KuASRTVzU5g
	 HqiXXr/jzajN70y15Dlr6oJTgZCHLZI3pz8vuG08Tcwwz6Jrws1oAAY4prFpkwMW3c
	 WAmvYI2PX0SdBjghTQXhHdOj10YuUZOX6zKXZKdF1s9o5h3zMSZI6tcSuMFXT3wBiZ
	 +N3OhZ2i3++NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE263C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171551414275.7399.10580035071687167636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910b6ce221fcb1bf76b51ab07d72d2b6eaac61b69278664abc1e1d13778e6dd6
Date: Sun, 12 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715514142
