Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F10429B8E0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763957514; cv=none; b=NAS5zJUDgi1ZQewriKFfxNAER+CR1yeidMGnx2c5GF0l8qJLMC8mIKp9MufO6Odbec1U4XEGmBQy1G5SbPJs9LB5ieNAPWi/sOSnhmWpKFioaMVvBf9Zvn4BvtpoJCRiU0uWJquZaKIFJfFouyLId6mPYpJ0DOHwcXBQAapDY80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763957514; c=relaxed/simple;
	bh=BRLSUvXQwtH8yk2lkbvfOSN9iuqTkQ+sPYKCiDfjzvY=;
	h=To:Subject:From:Message-Id:Date; b=F8rwvCsKOeIsd6GjUBOTihhCW6uKtvnbZiSAOsT3Mn12yN0nc4MBqHS1tfJiLkTcl74aunr0tSb319fKlFgov8IjwfUc125p+h89L18x5bcX8PnUQ+BCEOeTqX3BERzyM0d+yu5FpR0XlYXMl4GsVdkkscwPoe95VROdVqv7dHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIkAC3rf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIkAC3rf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EA3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763957513;
	bh=BRLSUvXQwtH8yk2lkbvfOSN9iuqTkQ+sPYKCiDfjzvY=;
	h=To:Subject:From:Date:From;
	b=tIkAC3rfIy3qgAuRiHLpP/4WPyQRpjngWtN6LUu/TkfHafqh3/plsuusKFeFh4M+I
	 6IPEH4o2BKPgThCWXuU14FagfBX/QCRNRgN1tyWTSF12TzdF5J7PXgC+gd5bzMG5uj
	 JQYQhMC7Si1T3pzkwjzPeIypp6aqtXGHBpU64g7Dqa+ADZIUwWbGAiqlvywfk81cDG
	 O/9fihxMEKxVVTb3bh+ewks5IkS8x4bRSwBycG70BEwGPayVHM+NHQauuY7zGMjUek
	 sCqdHcA+Qt9xg3WcyazhpKWetVRf2YHJ/0MjBw9VaGztR3QOF7I2vk/4B02ddzyEFT
	 gP5x1GlnNOLHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F47CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395751358.11315.10562962695439007261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f184683f3b5bad1f99cc0f3b3dbe0b086641a3007be271e87ccb1801218ec65
Date: Mon, 24 Nov 2025 04:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763957513
