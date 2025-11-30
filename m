Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B6ED27E
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764489174; cv=none; b=ujflJ4o4cZJCoQIku0j6wyxheiGCg0LTMKTSlUJqJR8RqXHcc1ulTkuyqJYufikg91CrcqJHAFXxP8M7ceqaFckXMHWzk5RMfs4dfDzlYZhud8u3/b/71LOb3QHxb7NaQfEETrk+KQCAFlzov1SOOfrXmbbbLH4OHPpo61IaZrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764489174; c=relaxed/simple;
	bh=XvN/CMZMaWJBt2JA3KmVph6jF7+h3c+LIPrWUZTWQ1w=;
	h=To:Subject:From:Message-Id:Date; b=FQtvJ6VAhReUUI5onHr7tlZcochxtdZ8YC4XhoyxJ24dDtsipepjODEq04+Phxy+ej/C5YV7UO9LrLj4PpFOBECzIunuwEHBQYzHTe8UH4mDU9He4mLMYgJmBg41wr5wjcC+/XZiUc0NDchUJ2MwNT277En4ftYO2jaVXFjovxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fm22rrvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fm22rrvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B31C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764489173;
	bh=XvN/CMZMaWJBt2JA3KmVph6jF7+h3c+LIPrWUZTWQ1w=;
	h=To:Subject:From:Date:From;
	b=Fm22rrvlojz4OEdooYZMsY+slH73WiHrfXcD9b129NN8xsk274Mn2I8NvqTty5ZG3
	 TVGWbeRbX3Pwquw7ioJlS2DGWQSmgOwmnw4Iuz5gCviiPsP7uzR7NaLP9uzAYTZV0k
	 QVsLF1HsWT/e87KwAzqblylzwLjjMZ8DL3cxbCgMjXLDUVOmn4IAyyEPzDSNamHpPJ
	 adZmOTGN/RUehPn66CoG9/GgAfcjPJpsiZPMFFpKVD7yJKsLQfObzEJf62GM/rCUSr
	 8E05pOV9qh/HE9/kkGRw0q1AsEwnpKgqqTj6MNQV6pDf+W9RV7wotdqiAZtBKa0g2F
	 vU+fGEQL72izg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921BDCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448917358.2223.18208016367806455602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5bd03623afa3872e08ffbe9b582e62668b24eb1cd0682e6294eabf78022f13
Date: Sun, 30 Nov 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764489173
