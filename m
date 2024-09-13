Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D11933C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726224954; cv=none; b=POD2oPS0aR4Szhpo6dtqyZySoYiesdHcl205zjNHCWmsCDacgYG4WcvVARhKP+UkMSfQbCGzGyyDaNHh/Ltw+v7tTO9LjQezcn+Snuq5JEXqxz5IsdBVhmr7y5I/f9/3pIGiuSM7kURJrmcKdRuHBVkPRNyf9w8/va2iVTMsons=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726224954; c=relaxed/simple;
	bh=wTlcH7DyYATI2sAS/sBUnts6BK2f39fqmXWsGvLPG3g=;
	h=To:Subject:From:Message-Id:Date; b=Peyo4TUC4o3XHDNndhREJy8HejMNbX6dhEqQIwQoYGFTeU7/N5Xecdjk5nWcT8Y5BySqu5sHlUp5XyAEMl5gEHs2MtCFx4TsTZwA0yy47hLb6A5/qbLRhPQaTikicKAdaD2sXjBlu3Rovie7Zf6m5/f3DQ6/mGgFyeVOQ3Yb3Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib1pmKZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib1pmKZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A3FC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726224953;
	bh=wTlcH7DyYATI2sAS/sBUnts6BK2f39fqmXWsGvLPG3g=;
	h=To:Subject:From:Date:From;
	b=ib1pmKZ+eDpnTy+pgMiZrsCCCv+FeSnENEVOnZpKzo2JZ76p0nSCzlLvUoj2/AsnK
	 tc+mV4zF9M7k2OafaMYcZj5pKEULWj0Zq56ZBWoftcufUOcnl8Ef89vlYt1Wl1R/z/
	 JN6ZcoM+iU/esZENd0o3ubuU0Wl3c3qXIJm3x/w8pc0fxBE4Z8qgpXxk7xSVkbZ5qV
	 hXt7blPGR1MABkKjgjjQf4ahFeIeG22LE83J4yo0Q+OgNa95ucGAc7B6pKvpt5oDrh
	 i7IT+tqRjaTZWMbQ+zPchfG+37p7YiAQkfT6vy1DHQr6DkXCBYZTZJ2/ZE5b0JrgM2
	 2oPAj698o/S1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9773EFA3743
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172622495360.3521.14433305218904899487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14f4706beea1609b80a07e5c0b954c1f59d34b03ab7690815517a0b00fdf567
Date: Fri, 13 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726224953
