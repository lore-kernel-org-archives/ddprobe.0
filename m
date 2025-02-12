Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A1D1DA61B
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 03:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739331654; cv=none; b=B4M/Q4ZxQH/5DcURmd42DQsCMYSeTC1GfcRtBX1wKFup+7yQyPuNboL8PYlmQ4iWT2SL0gT4C7W/1eCM59gvOj1366zrKJg8gJPlFhIn30cwqeoGU7Vmvkf7MDd/b9Vd+m+FKQWL8JZuhWW+XUqUFaQDBmGEM8cxKosdhpqq04M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739331654; c=relaxed/simple;
	bh=aeQPJ1e+Iw7FhKllJ/FyjbCDldKLDmdXZaA8aQrmsno=;
	h=To:Subject:From:Message-Id:Date; b=jFE/AO/qmFZTukhxOV/yjPheuDCYRgcOscZNRStZ4ri9MfO1lsS5bpeIjuVQs+rFZAh8b980GJh52TCHjeBALdnmA82lipgc0dcOpy3qbbuUe8v63YQgvlw0gnTtQP7wsjJgNudroieOMmKns8OqCvQ3q6/9H3SaS3zRI3hCfKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNcsNH+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNcsNH+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D927AC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739331653;
	bh=aeQPJ1e+Iw7FhKllJ/FyjbCDldKLDmdXZaA8aQrmsno=;
	h=To:Subject:From:Date:From;
	b=eNcsNH+CskNuS+2xKQsIyoQe8Hnpbw/spzUYGWO+e2+4RlXKIEALs1k03lrKryX7d
	 /E/hHIy8fX4jy/Z8nm0SZUfin0UgBlvm9M0egbQGqLFAStCl782jn/WXEmpUjfybci
	 lgv57CUDWGZ8YZkp3hUQ+NdsOGyAUU5qhB7PX8xjTpwOdY+bddgITf3num8ZZVGX4n
	 EhfK6ammerrz8qXBSH3g/62txQJQbILA7s+yT6P2Defz4fJ+NCuZDMcujsPrtvjRAA
	 QFsdPircmXXfgw+2QxtVM+QvEdh8wbzn3j+ZVFabJCir70vQJ5E7c9vLvRiDht7tv7
	 ufddvtDxiec8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCB1C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173933165366.9296.9708486835284098173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ada93f53aa51d7f1e2eb4060d90b4006aeec7e46adb5526f02cacc23b5a836
Date: Wed, 12 Feb 2025 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739331653
