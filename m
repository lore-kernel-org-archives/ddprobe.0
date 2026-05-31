Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557CF20C461
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780238674; cv=none; b=NyUQEn8B25Apk2AWBlDhgwSSfum0AJ/lqR7T4WooI2t1emnvbWBhVrjsxaWp1/x1TInoBfE/88FY7I5BBB2u4n5QfJw8VrNMU9c6W1ddhT/wd8AlDJ5gSqtgeqLrwtnl7O0LUz9qaR0E71xKPTjZDZIyz7rsOsAf1xh8bevaeqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780238674; c=relaxed/simple;
	bh=BOkMNu7anB26EAWVCqUylKoJ5haFo9LmBnBzU313cgA=;
	h=To:Subject:From:Message-Id:Date; b=ONywMza4nlt89w0xEGJMA0QjLwWv/B3XQAtKJk00AvLnkEFbBHrG4CQ6D35JU7suhNtcOJjwQFz01SmPd1l7unf6ICGAdBUDxyvsTFoCkLu480m+3AhWyBCRCEs46N1pQznhLrppwEMD72BYYPSfsG7KzeiMH86lfKHKmRYn4ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twP6y9oC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twP6y9oC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB656C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780238673;
	bh=BOkMNu7anB26EAWVCqUylKoJ5haFo9LmBnBzU313cgA=;
	h=To:Subject:From:Date:From;
	b=twP6y9oCYjUdFiF+0ZyVB76YEl0xyJ+pjQG2xmH4ALfhwxpOaNh2/g6kWy6bcy0yj
	 9r1Su6GA8phXcws/L5cu+utbn/DWkncPuAO1yOfh0bDa1a7Je72eN5ZB5z/gmXE21w
	 7Q5kadi8Nk6L8m2zkOPr6uazvP6J1dBaAeTGFqcaap35iJ2a0yaDsuKehriHoGipf7
	 VQmypuStYOKeYqxuIuIIm+utjALMckpZIvLB8lVkhgoyhVQ/LV/+6/D0aCSSfOGfFB
	 zwm6CBC2Hz5lc1BCoRKIhPxLZeCyInXSW9cxbQ0TOiqzwa7cg6KOPVl5fWR7IP24Yp
	 BtqiSe/eXfgOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAE3CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023867369.24832.2867297424151813791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8decbb0ae4511924225385b87ebbc595a054833a2222b8dfa7f1b9e0053af345
Date: Sun, 31 May 2026 14:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780238673
