Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D47246770
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766359434; cv=none; b=HVJwBYbSo9tEO/6g/eYMcIwGyooU9h5bcLIk6eezklQ5EPocfpVcgbSRrDF2b/4ijl2hs+tVYruFWnsTvUE5FBo6UMG+GB0U23SrAruIHoOPhO0/3Em13CBf04lmBvSzuC9/FE8Ize9R3cBMLZxIBhYqtTpqx8jM9q+LirBsH8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766359434; c=relaxed/simple;
	bh=D41FQX/heCBCI0RSAuJZndwCXDhr8sR6bGVltFCDkMA=;
	h=To:Subject:From:Message-Id:Date; b=kUUE8EajRjVeJWDDK6wqJ9GWdoP31kiwX5rXkgk1y6daLCRd9obvGct0HE+MnkPwO6IJDj03+R21zJIvN4+bdXbUb1vZTh9YVM0PW8pazuuom4+w+oZf0mRFpIUHWdUvmCC+YjPhMS7M2I9qQK+opYKbpolYUXcDbByGv03usj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5zOrltK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5zOrltK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6324C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766359433;
	bh=D41FQX/heCBCI0RSAuJZndwCXDhr8sR6bGVltFCDkMA=;
	h=To:Subject:From:Date:From;
	b=r5zOrltK1xqX5YAlAd+WkxFsb1VQg920SURJlXF/OQlK/cxuYjEl0xPmXb3yUGJIz
	 2PypkQPRazb8b1xbt/8heaPVQnYrvm2qXAZPQC+DjhI7Th1rrvOC4w3TZmwwEUXVU0
	 FMAu+qbSP8SXLOWuUv25bmVTPdMoDK2Z3au5qUSoYS1qCmIxpljC+EoQ8Gx4JhH3cx
	 oOX7ptD0DbQXJD5lcqUqfZ60uuuNTBbR1Sh2rbrwk4EsD7N0HSixXlbu1r4cYaqFGw
	 kM4NkIHd0WS6sKmgCXUiaY0rhvatXJd4iM2ouLEd1ve8lT6ANei9Obq8Gd4xWOIJkl
	 Epbxpasobe82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958CCE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635943358.27962.18368345585116060645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d79b9a9d56d8ccec2edd4f9772eb3b6bba616ff8c7894540fc6a627f6659ee7
Date: Sun, 21 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766359433
