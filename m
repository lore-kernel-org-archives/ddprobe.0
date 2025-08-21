Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DB128B7EA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755819594; cv=none; b=QAGL9sPjUjF+VMPiEzuWREr8dG/KLdyxhZy5mA1XujhAryfeBN1F7RSCP4tIXJioKVrCmvnMudoU55WWG9J3ZqJ5anAbxtI1jYIcLRq/L8FBpGWOsMrnyhDP6rqeEyra4Yqeu9J6CIi56eeyt7Ke8EJZg3PoyimzXgBzuuX0IG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755819594; c=relaxed/simple;
	bh=OO3wobwbPSCMm8N2oU3Dy52wkrFASrwkrGCOkFCP7pE=;
	h=To:Subject:From:Message-Id:Date; b=EPQjB2fANeBIm27gnEOV2hebfs7PJrXXY/o7nBf0Pg3B3V0GSSwdxxL3unJFR2K8VQyJnNxACXVmrlmvBBi3ZHLvcgARWpObElJDPE7h4Ey81K7CyphOzZvZrQN5+JYpDqOxEis2ZjxGyYzhdL78DdBKCVbSYf3s8uQiyqFBPes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOK/k1jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOK/k1jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ED1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755819593;
	bh=OO3wobwbPSCMm8N2oU3Dy52wkrFASrwkrGCOkFCP7pE=;
	h=To:Subject:From:Date:From;
	b=KOK/k1jnV0w4NJRU2zDJEAFCQ4z0VAs1xKvjcQUkTXya89EVr2TCdYp1P7nJZpZrT
	 h0pf6AftzF15UbJ7PEoeXuGrWDPdNdyLcZWQ2cUSKFVaw/ZqciGKLDbACdQ3caaFj+
	 ajkNBYt6bZeYGr7ivL77DEH/w2ztI78WZMAA3X8yhq/Nl9+AP2cPH2I3y/zlhzLSOA
	 SdufvKgObfYqq4BWsDD/Oz1zPLopqJ5onw+e7GJMwdopsUYMQjzYwBy723kcg2Gcr6
	 /sRAA6gqapQuI8io8BWGF531+5UiOzknV6uhUL30Hm9OYL6/C2ewEyE7imgRW3e6+I
	 tYyPLto1++6eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944BBCA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581959357.6120.3828600692929869766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55158d48ce79b7a149be78d299c6890c4be40063d83233fdde9001813158f9bc
Date: Thu, 21 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755819593
