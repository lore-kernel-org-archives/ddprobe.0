Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DE24A06
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747757395; cv=none; b=I+u0cqOpvrhvVDwd7xRNw2ZCTuNE/us1KzQWFpLQfBMiEsvxY9aZbI+ZgyRe1Ye0l2kMpprMr7rOAWaFkOSltwDuZRmvnM3GxSCTAuLWbrZYSxWSm1+1BS/gArn0U375lEHleJiQrPHeXZ5lDWu+42plNvwzXMfwZ3Mt+AwR1CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747757395; c=relaxed/simple;
	bh=6Ac17E72jDhfvbmGBvdRzLVRGq4yya5LAGZGUBipMjs=;
	h=To:Subject:From:Message-Id:Date; b=AIkWhx6Ipu5B0ufS9JP/fCkrBhzbn4isZ9H2/IuuYcT/7imTMygCAPlmB8hnVUhUhlUZ3MluP1gVbpwlDut4VD+naNpDC5wJuKjgWv5JvLORBAG1vVS+J42Wwuch0jaw/GC2NCXbOACiszkjBppnuQ6dypJnKv93Rl/3LW+Kugc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8ZrUTPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8ZrUTPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBCFC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747757393;
	bh=6Ac17E72jDhfvbmGBvdRzLVRGq4yya5LAGZGUBipMjs=;
	h=To:Subject:From:Date:From;
	b=W8ZrUTPfyduxB9xnrKeFfZat7l6mfxGlCLsmFk1JDcbgwydjqTtRlXHo5N+RhuOSM
	 vhZNeRqKc624IohKzc8eSUc5b48I9jKcWlCpx+3C6U270m4J1HQM3f8gohwf34p/uf
	 Vv5NFuZZMXZgcLVbTerntj95tRnQuuh/6ElRTVqcLnodAkFufKLb6ASQCLc7l9rI0K
	 R1kdqA+5PzErYtZyI3+F9fDfVouwh8R4dttGoDN3hVXPqM7h8TFkaTi5LretZBLVmB
	 W4ezU3GNr4jH4lWbVV8nIC/jifRl/rWUajXBVngw/9eWjKIcaD92mWSmHTca8ik1LL
	 WyvPeUtTUGWlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00BC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775739357.300.9699945784216447427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b11a65a8ab7459dd89503a165a2cafdc5c051fa639d63be1857d9ba055a135f
Date: Tue, 20 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747757393
