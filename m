Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2953C288C81
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772844894; cv=none; b=cDSl3F7IEPBM658RTWbPNdy+ge3ioSeaj9plrgYW9atDz812Xi1zj7kwjYCU4Yy5vb6DvixAaWUxXDVslWB9SgDQiG64Mv+UJclNSJ4AxTeC4kyPRCftrWlkVzByfWw7KsF1pEqY4EYSm0ZzCnmqtVlMfT05CObr3LkrYrhGzRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772844894; c=relaxed/simple;
	bh=OfT8Y6oYCRVQmG0Po0yTCDK9moxmvlYkGtpI72I4A4E=;
	h=To:Subject:From:Message-Id:Date; b=IDCOT5X/GHqD0asNpd36mt7IZQtVwAE8eC1RXk5JcBW7y77SHpvFBxl4P4xaGsh9Hi/8hgyo5/WxiOnQ8lAr07QwTx9iLdejj84w/MmAnQ2VV66BneDOB9qpd0utTlDLvcctj9hq0XC2SvL8oGd+nFlwzmV3EKhsjHy7xLQX0ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3PyC3Xr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3PyC3Xr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1035C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772844893;
	bh=OfT8Y6oYCRVQmG0Po0yTCDK9moxmvlYkGtpI72I4A4E=;
	h=To:Subject:From:Date:From;
	b=B3PyC3Xr41ZdQ7Djquxr4pznz95V/MY9py+ias5yXXfXJkWC5ZS4udwKkAiLJ4eqQ
	 IdMAKDmGA54L4AVXpRRP53TF3bYLHt3CKQpe3ywctFn9pdkFCOkiPm0yrBhbdQa/s2
	 bjyQRBvGU8Wyg5EDhWVdSYDfqRF6jTyIs+G5wxH0wzZS+g/Wb9TuzxxRU+DPrHnMDD
	 p5QnK8g/fQk7XlTW52mAds1kuew9upm93ymPVwZiuCo53L2J89L5wUzSGcnrn7GGZs
	 MKoiQYdvqIqZvPFw8zJ5Blp5fAW2Jl2Tm3eGRNr/t9fD/+YX3OV/4suYtTc/9ypfiI
	 f8aItDb0fznuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B866FC9EC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284489361.10381.14387883502126659525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9d1f25e8395d75ed889cce5a5302b90fd75c0a5f8b2af3d21bbd63d9111450
Date: Sat, 07 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772844893
