Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CEF15E90
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735716954; cv=none; b=pmbIvyTEeemVmDRtikZ6JhUe66Eytik62Ya/fXZbf6TkDxN2g8JWimRpwGftGW9guhl0xiP2uUkm31gdf8bm54ZUejncWiNvMZUEQjpQI2I7wBAa7pDEVIoR8YTRa74DhNqw9MwYCnI3qWuQ14vBRfUw6DsMbv+sKfj3xJ2lPSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735716954; c=relaxed/simple;
	bh=knyxUXWJbOSlXdoQU1Sz+VuawA16QfCznzchjN/BLcc=;
	h=To:Subject:From:Message-Id:Date; b=cRl8IWhPD95TDXz5D7tBAVfwQ+7n0xx5DDjJlheaO9mRi8H4RuZ1P9g+f//rtOSDZHtFOjIc5guOmKC88nyXvA+yYunYzwMYuMcLxYWLKwQEzkrmlzkKG9Kro4L8lkBTJbP/lGvkeqy6O97zybB9knzHV1/rQP2nJUW9kXm5s/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsS5DC8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsS5DC8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7F1C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735716953;
	bh=knyxUXWJbOSlXdoQU1Sz+VuawA16QfCznzchjN/BLcc=;
	h=To:Subject:From:Date:From;
	b=ZsS5DC8j+UjjdGYayRMEGuAbRY7GJqvdI3b0kAKglyUeut430xN6x44VZ78hx/8zr
	 anwMM9t65cJjDnRN64xd/qTZod+q7WRFmMbgK+9qLRloK0CoUXrAgHS/esoq7QK6cx
	 IhXkfEgbKMqJFGSjqtoBwa/CMtjsN7jlx8cGgUC4WzYu9Y1Wre/YWx67R4cOI4AVYc
	 ZPcYXbuf/fR2elOHxGdDdS9sW9lvQ71WQW3qNPKu4G3vh5KuWoyepd6RJmHaRl1gLG
	 kW7vZTa+BrjONajKiYRtNBTlV5d6xdf6Qx0uN9/lI7UT5qlmeIIrcu2gTpCevXuX6Z
	 Knt+hLV91TSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B731E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173571695358.29639.15155250216404864549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb968ba56ee33b4c937a1c681ae25f6f219ecde5d24cbe1794e0b6bdfb22a9b
Date: Wed, 01 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735716953
