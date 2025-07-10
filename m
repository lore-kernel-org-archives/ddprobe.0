Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B53D2EE99D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752164394; cv=none; b=dV2tQJNsNl809OdSGvZuHj3nFMgHo1i6Xpxb45YqnAlph/4nVDq4E5FwjCTqN8LriQGKZFxl/ZasU63m5fyikhImHVC+TvIx1srjeAN3rbtpJZtfvNZcJxgHyYxfAZAS7I4Ulk4WPHfO3fN7jUwGGEQKq9MwHeLqhPc4sRPQaq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752164394; c=relaxed/simple;
	bh=ZxV0ww4hX5YCxOTa3BttnYQ0RXOghDB5pL+RkJqyxcU=;
	h=To:Subject:From:Message-Id:Date; b=D/W9N79EX6pF+C5Ks1UKKIHwdpbAQOWP5nN6GfmVcPLyqz/snnRPzHikkVrzspQ5DrUzrM/yguoMzaNUOS3DQoDEEW7LnSW51Z2Upf0MLt1nFa6CETX9b57ds+pic6O3jDB5S9HIFJMeKDE0ZsTJRPWoLPCzOhh4zbEdXnaaGf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byysh9by; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byysh9by"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96C9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752164393;
	bh=ZxV0ww4hX5YCxOTa3BttnYQ0RXOghDB5pL+RkJqyxcU=;
	h=To:Subject:From:Date:From;
	b=byysh9byRyiDXY/u0gB2JDrZIX6qGDd4mFTKiGRLTEkR55pUj7+nbZWiHzE55xpPS
	 1LQT0r6bdlk1+M9NJNR7/ZLaVSByYS425DaoPYatw09pVYnz4unSQjiRXuTxWZXr+E
	 xhm8DtI3dp9GmEMiaypz36Hli1B4DSGx3CGGzhkFOBY/bMTwLzgoC9utyt+IlarTgj
	 aEsDbVvitAysaI/L0vjVDEnT84gCO0k4ACyNyiOysm+MzqdTmh69lC46eoaN5ycCxf
	 aRak5+5e7q/yoLGcd8T3/ok1sspD9l17HijHckoyYnbjxGjLEl378PseIur9gV2YRj
	 0eMUqP2YfQZjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F1FC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216439358.25593.9088935169800948653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119fdc01d4c667915c59a02da7b50774eaf4b358687a7d7110dc6b8276699a53
Date: Thu, 10 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752164393
