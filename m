Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC445F49E
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707599297; cv=none; b=e4CZDlMfvsWTXk7vnkRXTVGMPVP2HjfFBcxa3uPFIoy6DWtJ+8+piai/h+0fYpDE56Gkwc7wNhvQrq5KJT/3QsR18DiZgl6+y/BxvdrBpOmUs+F/MzqXtqtQyKlIw4+jb3azuNqbLGk1JvsToytjWoH6YKAYvVk+HH565YV+IxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707599297; c=relaxed/simple;
	bh=LHL2TkgpPti9MpPJk+iFwQUNL7JOJTCBNym6lJZkHZU=;
	h=To:Subject:From:Message-Id:Date; b=E7BYRIkgzJ2ovJiz55cb/cKwFZjfep8tZTDZuHrqQpJZmys2BO289SjYyM9wdJFteocXmbdzH9D1sJiMnxqxcwwUMxaLBnWvz70A42voKOdTcKADVdJQyfJwEv2Irqhd6K4xUBjfDO7Cmcf/ex2a8W4sZC7eRlDE0I/A1cSbYLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVEjW6Se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVEjW6Se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ADBDC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707599296;
	bh=LHL2TkgpPti9MpPJk+iFwQUNL7JOJTCBNym6lJZkHZU=;
	h=To:Subject:From:Date:From;
	b=SVEjW6Se10UcN4PB6+SejbXF4opXSKGmdNs7Ic805aYGNXmiwO1OGtVZ3vY7nTuCT
	 82wKwNbrzLwL9YKZinldXMwI1XCkN+/9Ue6aEwgHANZRl+aWBHBvpTn0GVo+WAUgQ3
	 s2SAmA09PkPPQo41S3est8OEfjLkahIS8haJbrxZUFOQ79sqls8zb8wP4l3pvhLH47
	 kidLNWYr4d+JnYXMTgysqWKevmH/0G4gHzfbXu+A73QDT7BvOZoqoDmvfEWQktHONK
	 OugcGerGg/pCSohX3ze8e73vwBguk5IiOPwS+BcZXnq24WxqcBaJ/kqSf2Q5StaDA7
	 ryNIJxevN1neA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B1C5C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170759929641.19549.18409270448976647078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a755e519b220fae3580fdb488b7a9f439818d753f734d3affe85d98cd73596b5
Date: Sat, 10 Feb 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707599296
