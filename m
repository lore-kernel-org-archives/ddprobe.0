Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108C5268C73
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757548194; cv=none; b=ulON70JfFWAUCPpMu2c/DkI6nwFjyBG/pg82XhePF755dpF1bB1cXd867S008Z0msGuW0QFo7FwR09wE0Gg5ask2l2RaFKU2iRS0UsiXnazbOWBXS34UMqM/Iva9T6EsYFPaYNf6/m3IWVlUuUsALD4rOndOu+7G27lIweqwh3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757548194; c=relaxed/simple;
	bh=TQo78U6QFxXHfHNa+XIcbK8x4DSmKPR8to5bloJeeUs=;
	h=To:Subject:From:Message-Id:Date; b=dgSbwwYcA9qZep0WlPZHdp3fpwYFapFb7kL0mnLhbTdiZs/uqzYSUhZxuRNc6fcI8Zy4XhpHmLLS5R/Ht2/29AnxlJYsJxkxwEneXfKGbOESFg36uyLbA1KekkIRZ0kCHDjZetho6uQxFP5hcyU7UBFMUAY9AGJVtAfZACZOw5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxVs0axa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxVs0axa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A039FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757548193;
	bh=TQo78U6QFxXHfHNa+XIcbK8x4DSmKPR8to5bloJeeUs=;
	h=To:Subject:From:Date:From;
	b=WxVs0axasTCUG0BQC85CCiCXY9u+BNdDg09qLOxks172w8tAqQMKtkYl6rci2uO5i
	 Fht6xr4lEl1LsHlzeePHucktRS8TQUP9k7V9estU1XmHwgvKGjnsdIL1iPfVkXRtB7
	 p/l4olTwCr/Pe9tAzHxPwvXoxuCTiqFKdgoERkT6RgfwlbAYSdd6fth/Nloes2UpI0
	 5rz1AP08TqnKbablFa00LloTgP0dWfY7DEFK0TbJp252/eFEkhPvRIpge3p5FTDiTN
	 PX9506F8Uuycs/JVLOrDFvsNYIe+vK7phRISUJ+ACuUqvWQ9FyFmm4g42AA/R+kvri
	 XstwIP5CiBj6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB3CAC58E
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754819357.12151.16403803632664305802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad75a1193421ba6c372ab739940cf7cc9362ad689bd96a2eebf8625df6499f2
Date: Wed, 10 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757548193
